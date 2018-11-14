#PBS -N test_scheduler
#PBS -l nodes=1:ppn=4
#PBS -m abe

module load rocks-openmpi_ib
cd $PBS_OoWORKDIR
NPROCS = `wc-l < SPBS_NODEFILE`
mpiexec -v -n SNPROCS ./hello