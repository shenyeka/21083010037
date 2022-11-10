from os import getpid
from time import time, sleep
from multiprocessing import Pool, Process

# Function 
def cetak(i):
    bil = i % 2
    if bil == 0:
        print(i, "Genap - ID proses", getpid())
    else:
        print(i, "Ganjil - ID proses", getpid())
    sleep(1)

x = int(input("Input bilangan: "))

# Sekuensial
print("\nPemrosesan Sekuensial")
sekuensial_awal = time()

for i in range(1, x + 1):
    cetak(i)

sekuensial_akhir = time()

# Kelas Process
print("\nMultiprocessing dengan multiprocessing.Process")

kumpulan_proses = []
process_awal = time()

for i in range(1, x + 1):
    p = Process(target=cetak, args=(i,))
    kumpulan_proses.append(p)
    p.start()

for i in kumpulan_proses:
    p.join()

process_akhir = time()

# Kelas Pool
print("\nMultiprocessing dengan multiprocessing.Pool")
pool_awal = time()

pool = Pool()
pool.map(cetak, range(1, x + 1))
pool.close()

pool_akhir = time()

# Perbandingan waktu eksekusi
print("\nWaktu eksekusi sekuensial              :", sekuensial_akhir - sekuensial_awal, "detik")
print("Waktu eksekusi multiprocessing.Process :", process_akhir - process_awal, "detik")
print("Waktu eksekusi multiprocessing.Pool    :", pool_akhir - pool_awal, "detik")
