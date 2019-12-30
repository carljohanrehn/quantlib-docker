# QuantLib in Docker Containers

This project contains Docker files for building images with QuantLib 
(https://www.quantlib.org) 
and Miniconda 
(https://docs.conda.io/en/latest/miniconda.html). 

My basic idea is to use these images as base images for other images. 
See, for instance, my approach for creating a PyTorch Docker-based environment with QuantLib in ubuntu/examples. 

Furthermore, I have also included Docker files for creating new images based on development
versions of QuantLib (see ubuntu/development). 
This is very convenient if you  want to add new features to QuantLib and add them to your environment.

You can find the latest image on Docker Hub 
(https://hub.docker.com/repository/docker/care02/quantlib-miniconda3). 
Use 

``` 
docker pull care02/quantlib-miniconda3
``` 

and

``` 
docker run -it care02/quantlib-miniconda3
``` 

to pull it and run it.

Once you've entered the container, you can start a Python terminal and import QuantLib. 
Thus,
 
``` 
(base) root@8b27056317c0:/# python
Python 3.7.4 (default, Aug 13 2019, 20:35:49) 
[GCC 7.3.0] :: Anaconda, Inc. on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import QuantLib as ql
>>> print(ql.Date.todaysDate())
December 30th, 2019
>>> 
``` 

You can also use the Docker image as an "environment". 
For example, I use JetBrains PyCharm as my IDE and can easily configure Docker as a remote intrepreter 
(see https://www.jetbrains.com/help/pycharm/using-docker-as-a-remote-interpreter.html).

I have based my Docker files on work done by others:

- https://hub.docker.com/r/continuumio/miniconda3/dockerfile
- https://github.com/lballabio/dockerfiles
- https://github.com/westonsteimel/docker-boost
- https://github.com/westonsteimel/docker-quantlib
- https://github.com/westonsteimel/docker-quantlib-python



