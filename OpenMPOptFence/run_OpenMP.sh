#!/bin/bash

## Specifies the interpreting shell for the job.
#$ -S /bin/bash

## Specifies that all environment variables active within the qsub utility be exported to the context of the job.
#$ -V

## Specifies the parallel environment
#$ -pe smp 4

## Execute the job from the current working directory.
#$ -cwd 

## The  name  of  the  job.
#$ -N eigThpar27

##send an email when the job ends
#$ -m be

##email addrees notification
#$ -M lr7@alumnes.udl.cat

##Passes an environment variable to the job
#$ -v  OMP_NUM_THREADS=8

## The folders to save the standard outputs.
#$ -o $HOME/resultOMP/output
#$ -e $HOME/resultOMP/error

## In this line you have to write the command that will execute your application.
./cot 27arboles.txt
