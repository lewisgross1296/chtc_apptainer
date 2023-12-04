# chtc_apptainer
A repository to house all the build files necessary to build Apptainer images on UW CHTC's High Performance Cluster

There are various sub-directories for different projects
* `openmc` directory builds v0.13.3, which is the version chosen to do my prelim work. It is built on a base image from CHTC, so that mpi and gcc are compatible (openmpi-4.1.6 and gcc 11.3.0)
* `cardinal` directory builds Cardinal from this hash ``. TODO store version of OpenMC and THM once this works