#!/bin/sh

inputDirectory=$1
echo $myDirectory
if [ ! -d "$inputDirectory" ]; then
  # Control will enter here if $myDirectory doesn't exist.
  echo "directory, $inputDirectory, does not exist."
  exit
fi

outputDirectory="infiles"
if [ -d "$outputDirectory" ]; then
  permissionToDelete=$2
  if [ "$permissionToDelete" = "-w" ]; then
    rm -rf $outputDirectory
  else
    echo "Output directory, $outputDirectory, already exists and second argument is not -w"
    exit
  fi
fi

mkdir $outputDirectory

for file in $(ls $inputDirectory/*.t); do
  echo "working on $file"
  outfile="${file##*/}"
  outfile="${outfile%.t}"
  outfile="$outputDirectory/$outfile.in"
  ./mbsum -o $outfile -n 100 $file
done