    # # (D) Canonical ordering of periods globally: signature_period[p] <= signature_period[p+1]
    # if 'D' in flags:
    #     signature_period = {}
    #     for p in P:
    #         signature_period[p] = pulp.LpVariable(f"sig_p_{p}", lowBound=0, cat=pulp.LpContinuous)
    #         if version == "i<j":
    #             prob += signature_period[p] == pulp.lpSum((i + j) * x[(w,p,i,j)] for (i,j) in pairs for w in W), f"define_sig_p_{p}"
    #         else:
    #             prob += signature_period[p] == pulp.lpSum((i + j) * (x[(w,p,i,j)] + x[(w,p,j,i)]) for (i,j) in pairs for w in W), f"define_sig_p_{p}"
    #     for idx in range(len(P) - 1):
    #         p = P[idx]
    #         pp = P[idx + 1]
    #         prob += signature_period[p] <= signature_period[pp], f"order_periods_{p}_{pp}"

# import random
# def balanced_circle_method_pairs(n, half:bool = True):
#     assert n % 2 == 0 and n >= 4
#     w, p = n - 1, n // 2
#     fixed = 1
#     others = list(range(2, n+1))
#     schedule = {}
#     for wk in range(1, w+1):
#         arr = [fixed] + others
#         pairs = []
#         for id_p in range(p):
#             if not half:
#                 if (wk + id_p) % 2 == 0:
#                     pairs.append((arr[-1 - id_p], arr[id_p]))
#                 else:
#                     pairs.append((arr[id_p], arr[-1 - id_p]))
#             else:
#                 if random.choice([True, False]):
#                     if (wk + id_p) % 2 == 0:
#                         pairs.append((arr[-1 - id_p], arr[id_p]))
#                     else:
#                         pairs.append((arr[id_p], arr[-1 - id_p]))
#                 else:
#                     pairs.append((0, 0))
#         schedule[wk] = pairs  # pairs are 1-based team IDs
#         others = [others[-1]] + others[:-1]
#     return schedule

# print(balanced_circle_method_pairs(10))

# import shutil, pulp
# print("which highs:", shutil.which("highs"))
# solver = pulp.HiGHS(msg=False)
# print("PuLP says available():", solver.available(), " defaultPath():", solver.defaultPath())


    # # Apply initial values to the pulp variables y[(w,k,per)]
    # for (w, k) in all_slots:
    #     for per in P:
    #         var = y[(w,k,per)]
    #         val = 1 if initial_map[(w, k)] == per and (w, k) in slots_to_set else 0
    #         var.setInitialValue(val)


# # Controlla se il file esiste
# if os.path.exists(out_path):
#     # Leggi il contenuto esistente
#     with open(out_path, 'r') as file:
#         try:
#             contenuto_esistente = json.load(file)
#         except json.JSONDecodeError:
#             contenuto_esistente = {}  # Se il file è vuoto o non valido, inizia con un dizionario vuoto
# else:
#     contenuto_esistente = {}

# # Aggiorna il contenuto esistente con il nuovo contenuto
# contenuto_esistente.update(nuovo_contenuto)

# # Scrivi il contenuto aggiornato nel file
# with open(out_path, 'w') as file:
#     json.dump(contenuto_esistente, file, indent=4)