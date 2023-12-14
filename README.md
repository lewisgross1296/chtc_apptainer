# chtc_apptainer
A repository to house all the build files necessary to build Apptainer images on UW CHTC's High Performance Cluster

There are various sub-directories for different projects
* `openmc` directory builds v0.13.3, which is the version chosen to do my prelim work. It is built on a base image from CHTC, so that mpi and gcc are compatible with the hardware on the job nodes
* `cardinal` directory builds Cardinal from this hash `f47f7b2`. The current OpenMC version (as a submodule) associated with this hash is v0.14.0

In each directory, the `sif` file can be build by launching the `build_X_onto_mpi.sh` script, which will build the software from the base image containing OpenMPI and GCC (openmpi-4.1.6 and gcc 11.3.0). 

The best practice is to build these in `/home/user` but run all simulations in `/scratch/user`. Make sure to give the job running a simulation the correct image path