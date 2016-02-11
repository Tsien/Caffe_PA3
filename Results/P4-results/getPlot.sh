#!/bin/bash 
# Usage: ./getPlot.sh file.log file.png

logfile=#1
outputName=#2

./tools/extra/parse_log.sh logfile

gnuplot -e "logFile='${logfiel}'; outputFile = ${outputName}" plog.gp 
