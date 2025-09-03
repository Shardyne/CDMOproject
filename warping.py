import subprocess

def main():
        for solver in ['opti']:#['z3', 'cvc5', 'opti']:
            for app in ['channeled','offline']:
                for N in range(4,21,2):
                    print(f'running solver:{solver} on approach {app} with N={N}')
                    subprocess.run(['python', 'SMT/parser.py', '--solver', solver, '--approach', app, '--N', str(N)], text=True)
                    

if __name__ == "__main__":
    main()
