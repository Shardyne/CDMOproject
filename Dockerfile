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
ARG CVC5_VER=1.2.0
ARG CVC5_FLAVOR=Linux-arm64-shared-gpl   # no extra cvc5- prefix
RUN set -eux; \
  wget -O /tmp/cvc5.zip \
    https://github.com/cvc5/cvc5/releases/download/cvc5-${CVC5_VER}/cvc5-${CVC5_FLAVOR}.zip; \
  mkdir -p /opt/cvc5; \
  unzip /tmp/cvc5.zip -d /opt/cvc5; \
  rm /tmp/cvc5.zip; \
  ln -sf "$(find /opt/cvc5 -type f -name cvc5 -perm -111 | head -n1)" /usr/local/bin/cvc5; \
  cvc5 --version

# # Install MiniZinc binary bundle
# RUN wget -O /tmp/minizinc.tgz https://github.com/MiniZinc/libminizinc/releases/latest/download/minizinc-bundle-linux-x86_64.tgz \
#     && tar xzf /tmp/minizinc.tgz -C /opt/minizinc \
#     && ln -s /opt/minizinc/bin/minizinc /usr/local/bin/minizinc

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
RUN chmod +x /CDMO/dev.sh
CMD ["tail", "-f", "/dev/null"] 

