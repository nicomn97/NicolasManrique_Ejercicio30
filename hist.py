import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

data=np.loadtxt("walk.dat")
dataMP=np.loadtxt("walkMP.dat")


plt.figure(figsize=(18,9))

plt.subplot(2,1,1)
_=plt.hist(data, density=True, bins=250)
plt.title("Serial")

plt.subplot(2,1,2)
_=plt.hist(data, density=True, bins=250)
plt.title("Paralelo")
plt.xlabel('Numero de pasos')

plt.savefig("hist.pdf")
