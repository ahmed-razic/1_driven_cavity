#!/bin/bash

blockMesh | tee log.blockMesh

checkMesh | tee log.checkMesh

foamRun | tee log.solver

foamPostProcess -func sampleDict -latestTime

gnuplot gnuplot/gnuplotScript

paraview drivenCavity.foam