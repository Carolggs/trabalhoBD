import subprocess
import time
import sys


print("Iniciando Sistema de Onibus...")

result = subprocess.run(['docker', 'compose', 'up', '--build', '-d'],
                       capture_output=True, text=True)

if result.returncode != 0:
    print(f"Erro: {result.stderr}")
    sys.exit(1)

time.sleep(10)

subprocess.run(['docker', 'exec', '-it', 'sistemaonibus_app', 'python3', 'app.py'])
