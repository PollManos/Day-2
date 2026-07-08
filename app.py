import time

print("Application démarrée !")

try:
    while True:
        print("L'application fonctionne...")
        time.sleep(5)
except KeyboardInterrupt:
    print("Arrêt de l'application.")
