#PBS -l nodes=1:ppn=1,mem=16gb,walltime=00:05:00
#PBS -M n.manrique10@uniandes.edu.co
#PBS -m abe
#PBS -N ejercicio30


module load anaconda/python3

set OMP_NUM_THREADS=20

cd /hpcfs/home/fisi4028/n.manrique10/NicolasManrique_Ejercicio30

make -f makeWalk.mk

make -f makeBurgers.mk
