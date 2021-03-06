# --- Running LAMMPS ---
#  -- Prerequisites: --
# The "run.in.break_links" file is a LAMMPS input script containing
# references to the input scripts and data files you hopefully have
# created earlier.  In particular you need this file:
#   system_length=1700nm.data
# If you don't have it, carry out the instructions in
# STEP_1, STEP_2, STEP_3, and STEP_4.


lmp_mpi -i run.in.break_links # get rid of bonds constraining either end of
                              # the circular polymer to the simulation box
                              # during contraction.  Afterwards, the circular
                              # chain is now free to move without constraints.



# If you have compiled the MPI version of lammps, you can run lammps in parallel

#mpirun -np 8 lmp_mpi -i run.in.contract

# (assuming you have 8 processors available)
