## Docker Container for Python Fabric

This is a docker container for Python [Fabric](http://fabfile.org). It can be used with
to deploy projects with Fabric fabfile. As this image is build on top of the
[Alpine Linux](http://www.alpinelinux.org/) base image its very small at `~18 MB`.
The image has Python 2.7.10 installed in it. Fabric version is Fabric 1.8.0
and Paramiko is 1.15.2.

[![](https://images.microbadger.com/badges/image/geshan/fabric-alpine.svg)](https://microbadger.com/images/geshan/fabric-alpine "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/geshan/fabric-alpine.svg)](https://microbadger.com/images/geshan/fabric-alpine "Get your own version badge on microbadger.com")

## Pull it from docker registry

To pull the docker image you can do it with:

```
docker pull geshan/fabric-alpine
```

## Usage

After pulling the image from docker registry, go into any project that has a fabfile.py.
Then run the following commands to run fabric:

```
docker run --rm -it -v "$PWD:/app" geshan/fabric-alpine fab -l
```

The above command will list your fabric tasks. You can use the command below to know the fabric version:

```
docker run --rm -it -v "$PWD:/app" geshan/fabric-alpine fab --version
```

## As an alias

You can even create an alias like below in your `.bashrc` or `.zshrc` file depending on your shell:

```
alias fab='docker run --rm -it -v "$PWD:/app" geshan/fabric-alpine fab'
```
