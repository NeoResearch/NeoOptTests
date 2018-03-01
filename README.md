<p align="center">
  <img
    src="http://res.cloudinary.com/vidsy/image/upload/v1503160820/CoZ_Icon_DARKBLUE_200x178px_oq0gxm.png"
    width="125px;">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <img
      src="http://res.cloudinary.com/dnh3we6el/image/upload/v1519941321/NeoResearch-Logo.png"
      width="125px;">
</p>

<h1 align="center">neo-integration-tests</h1>

## What is it

This project is an ongoing branch of [AshRolls/neo-integration-tests](https://github.com/AshRolls/neo-integration-tests).

It could be possible merged in a near future, as well as being merged with improved features released from the original master.

Here, the main focus is on establishing a set of parameters that will be subjected to optimization and statical analyses in order to check [neo-cli](https://github.com/neo-project/neo-cli) consensus capabilities.

This project was initially described as a set of tests designed to test correctness and performance of the Neo blockchain.
In this sense, the repository comprises a set of scripts and docker containers to build and publish a [private network](https://hub.docker.com/r/cityofzion/neo-privatenet/), along with a set of python tests to run through.

In particular, this private network is usually created with new modified characteristics from [neo blockchain](https://github.com/neo-project/neo/).

This is a work in progress, areas to be improved:

0. Identify parameters that could be optimized and their impact on consensus behavior:
 - Check bottlenecks: on opcodes (.avm) readings execution; decoding transactions; communicating; changing view; broadcasting; among other.
 - Verify robustness: check the possibility of executing a graph optimization problem (using mathematical programming models of metaheuristics inspired procedures), described on the ongoing project [ODBFT](https://github.com/NeoResearch/ODBFT), which would balance find a consensus that balance efficiency and risk.  
0. Create an automatic procedure for easily set these variables and report characteristics of the network:
 - Automatic CPU time reporting on the aforementioned points;
 - Automatic reports on the interaction with different interfaces of Neo ecosystem.
0. Run several batches of experiments:
  - Involve different Neo developers in order to execute this containers and report their results;
  - Design a competition and co-working scheme for granting prizes to those that performed outstanding reports.
0. Integrate this dockers into an self-adapting TestNet:
  - This TestNet would synchronize automatically and try to find the most suitable set of parameters.
0. As mentioned in the original project:
  - Investigate using docker compose and improve the image build process so it's more suitable for CI;
  - Improve speed of build process, suspect we can use cache a little more for our containers.

## How to build an image

### Create a modified Neo blockchain

1. Go to `docker-build-neo-cli` folder
1. Execute the script `docker_build_run_copy_stop`
1. A new `neo-cli-built` will be copied to this folder

## Execute a personalized cityofzion/neo-privatenet

1. Back to the root folder
1. Run `docker_build.sh` in order to built the privanet
1. Run it and, optionally, create initial wallet with Neo's and GAS `docker_run_and_create_wallet`. Otherwise, just run `docker_run.sh`.
1. Access the Docker virtual environment with `bash-priv.sh`.
1. Currently, you can monitor the blockchain accessing `opt/neo-python` and typing `python3 prompt.py -p`, as well as checking neo-cli nodes (currently, static set to 4) in its attached screens.
