# Combined reproducible STS environment
FROM python:3.11-slim

# Avoid Python parallelism
ENV OMP_NUM_THREADS=1
ENV MKL_NUM_THREADS=1
ENV OPENBLAS_NUM_THREADS=1
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /CDMO

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    wget \
    unzip \
    ca-certificates \
    coinor-cbc \
    glpk-utils \
    libglpk40 \
    libc6 \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

# Install PuLP and numpy
RUN pip install --no-cache-dir pulp numpy z3-solver

# Install cvc5 - download binary from release page
# Install cvc5 - choose binary matching container architecture, fallback if needed
ARG CVC5_VER=1.2.0

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends ca-certificates file wget unzip || true; \
    rm -rf /var/lib/apt/lists/*; \
    mkdir -p /opt/cvc5 /tmp; \
    ARCH="$(uname -m || true)"; \
    echo "[cvc5] detected uname -m = ${ARCH}"; \
    # decide default flavor from uname -m
    if [ "${ARCH}" = "aarch64" ] || [ "${ARCH}" = "arm64" ]; then \
      PRIMARY_FLAVOR="Linux-arm64-shared-gpl"; SECONDARY_FLAVOR="Linux-x86_64-shared-gpl"; \
    else \
      PRIMARY_FLAVOR="Linux-x86_64-shared-gpl"; SECONDARY_FLAVOR="Linux-arm64-shared-gpl"; \
    fi; \
    echo "[cvc5] primary=${PRIMARY_FLAVOR}, fallback=${SECONDARY_FLAVOR}"; \
    cd /tmp; \
    set -o pipefail; \
    # Try primary, fallback to secondary if primary download/unzip fails
    ( wget -q -O cvc5_primary.zip "https://github.com/cvc5/cvc5/releases/download/cvc5-${CVC5_VER}/cvc5-${PRIMARY_FLAVOR}.zip" && unzip -q cvc5_primary.zip -d /opt/cvc5 ) \
      || ( echo "[cvc5] primary failed, trying fallback"; wget -q -O cvc5_fallback.zip "https://github.com/cvc5/cvc5/releases/download/cvc5-${CVC5_VER}/cvc5-${SECONDARY_FLAVOR}.zip" && unzip -q cvc5_fallback.zip -d /opt/cvc5 ); \
    rm -f /tmp/cvc5_primary.zip /tmp/cvc5_fallback.zip || true; \
    BIN_PATH="$(find /opt/cvc5 -type f -name cvc5 -perm /111 | head -n1 || true)"; \
    if [ -n \"$BIN_PATH\" ]; then \
      ln -sf \"$BIN_PATH\" /usr/local/bin/cvc5 || true; \
      echo \"[cvc5] installed binary at: $BIN_PATH\"; \
      # use 'file' to verify binary architecture before running it
      file_out=\"$(file \"$BIN_PATH\" 2>/dev/null || true)\"; \
      echo \"[cvc5] file output: $file_out\"; \
      case \"$file_out\" in \
        *"x86-64"*) echo \"[cvc5] binary is x86-64 -> trying cvc5 --version\"; cvc5 --version || true ;; \
        *"ARM aarch64"*) echo \"[cvc5] binary is aarch64 -> trying cvc5 --version\"; cvc5 --version || true ;; \
        *) echo \"[cvc5] binary arch unknown, skipping runtime check\" ;; \
      esac; \
    else \
      echo \"[cvc5] no cvc5 binary found under /opt/cvc5\"; \
    fi

# Install MiniZinc (x86_64 bundle with Gecode & Chuffed)
ARG MINIZINC_VER=2.8.5

RUN set -eux; \
    apt-get update && apt-get install -y --no-install-recommends wget unzip ca-certificates; \
    rm -rf /var/lib/apt/lists/*; \
    cd /tmp; \
    wget -q "https://github.com/MiniZinc/MiniZincIDE/releases/download/${MINIZINC_VER}/MiniZincIDE-${MINIZINC_VER}-x86_64-linux.deb"; \
    apt-get update && apt-get install -y ./MiniZincIDE-${MINIZINC_VER}-x86_64-linux.deb; \
    rm -f MiniZincIDE-${MINIZINC_VER}-x86_64-linux.deb; \
    apt-get clean; \
    echo "[minizinc] installed version:"; minizinc --version
    
# Copy project files
COPY . /CDMO

# Volume for code and results
VOLUME ["/CDMO/res"]
VOLUME ["/CDMO/source"]

# PRODUCTION script
# Copy entrypoint and make it executable 
# COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
# RUN chmod +x /usr/local/bin/docker-entrypoint.sh
# Entrypoint decides behavior based on args passed to docker run
# ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

# DEVELOPMENT script
CMD ["tail", "-f", "/dev/null"] 
