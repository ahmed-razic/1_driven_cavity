#!/bin/bash

blockMesh | tee log.blockMesh

checkMesh | tee log.checkMesh

paraview drivenCavityKershow.foam