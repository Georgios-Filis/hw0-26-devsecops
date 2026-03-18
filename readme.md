#  Computer Systems Protection and Security

Student name: Georgios Filis

Student registry number: 1115202100279  

Student emails: georgefil28@gmail.com, sdi2100279@di.uoa.gr  

Student GitHub:  Georgios-Filis

## Homework 0

### Part 2. Running our first devsecops pipeline

#### Image
<div style="text-align: justify">
The Dockerfile was based on the one used for the production of the following image: <a href="https://hub.docker.com/r/skretaslab/proteoseeker/tags">skretaslab/proteoseeker:light_v1.0.0</a>. The Dockerfile was modified extensively and the image generated can act as the basis of a Bioinformatics project. It contains several metagenomics analysis tools as well as a modified version of the proteoseeker.py script from the GitHub repository of <a href="https://github.com/SkretasLab/ProteoSeeker">proteoseeker</a>. The modified script "mtg_suite.py" performs certain metagenomics analysis processes on sequence-input data.
</div>

#### Scanning
<div style="text-align: justify">
Two scanning tools were utilized. The first tool is bandit which aims in finding common security issues in Python code. The generated image contains several python modules as well as the main Python script. The image is build and pushed in ghcr.io. By connecting to Docker Hub the image is scanned by Docker Scout which is the second scanning tool utilized. In each case results are stored and uploaded in an artifact and are accessible after the workflow has terminated. It should be noted that the workflow has been set to run on every push and pull request to the main branch.
</div>

#### Results 
GitHub action results can be found at:<br>
https://github.com/Georgios-Filis/hw0-26-devsecops/actions/runs/23243104988

GitHub action run on the following image:<br>
https://github.com/Georgios-Filis/hw0-26-devsecops/pkgs/container/hw0-26-devsecops

GitHub repository:<br>
https://github.com/Georgios-Filis/hw0-26-devsecops/tree/main

