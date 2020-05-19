# repeatprof-docker
Docker image files for repeatprof.

#### Updating Docker: Dockerfiles

*Dependencies*
1. Edit Dockerfile in rp-base to install any new packages, newer versions of programs, or other dependencies
			i. Use commands as they would be written on the command line preceded by "RUN"
2. Build, run, and push docker image following code below
	
 *Pipeline*
1. Edit Dockerfile in repeatprof to upload updated files from current directory
2. Build, run, and push docker image following code below

```sh
docker build . --tag <tag> #creates container of image
#choose one of the 3 commands below
docker run <tag> #create container, non-interactive
docker run -it <tag> /bin/bash #create interactive container, able to use bash within container to check all files are present
docker run -dit <tag> #create detached interactive container, able to interact directly with the file system of the image from local file system

docker containers ls #obtain containerID
docker cp <path> containerID:/app/data/ #copy files from local machine to container
docker tag <tag> <durberg7/[rp-base or repeatprof]>
docker push <durberg7/[rp-base or repeatprof]>
```
