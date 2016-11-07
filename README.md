# BUCKyTools
Various scripts to use in BUCKy analysis

# mbsum & bucky
Included in this repository are two programs, both copyrighted by Bret Larget et al.:
<ul>
<li>bucky - version 1.4.4 from 22 June 2015</li>
<li>mbsum</li>
</ul>

# run_mbsum.sh
A shell script that runs <b>mbsum</b> on all \*.t files in a directory,
placing the results (\*.in) in a directory called infiles.

To run:

    ./run_mbsum.sh data -w

The first argument is the directory where the \*.t files are stored.
The second argument "-w" flags that it is allowed to clear and overwrite
the directory <b>"infiles"</b> with new results.

Currently, mbsum is called with the parameter -n 100.
