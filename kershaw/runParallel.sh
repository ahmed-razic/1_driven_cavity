#!/bin/bash

blockMesh | tee log.blockMesh

checkMesh | tee log.CheckMesh

decomposePar

mpirun -np 4 foamRun -parallel | tee log.solver

reconstructPar -latestTime

foamPostProcess -func sampleDict -latestTime

gnuplot gnuplot/gnuplotScript