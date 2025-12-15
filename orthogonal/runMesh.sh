#!/bin/bash

blockMesh | tee log.blockMesh

checkMesh | tee log.checkMesh

paraview drivenCavity.foam