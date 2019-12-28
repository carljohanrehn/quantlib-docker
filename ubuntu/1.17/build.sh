# https://stackoverflow.com/questions/56212495/properly-versioning-docker-images

# For me it's all about being able to tell what version of (my) software went into the Docker image. My recommendation is to use something like the git's short version ID. I don't use latest as it carries no helpful context.

# Build the Docker image with the Git version as the tag. The stable-package-name below is just a name of your application like "HelloWorld" or anything you like:

# REV_TAG=$(git log -1 --pretty=format:%h)
# docker build -t <stable-package-name>:$REV_TAG .

# Later I push what I tagged to the remote repository:

# nominate the tagged image for deployment
# docker tag <stable-package-name>:$REV_TAG <repository-name>:$REV_TAG

# push docker image to remote repository
# docker push <repository-name>

docker build -t carljohanrehn/miniconda3 -f Dockerfile_miniconda3 .
docker build -t carljohanrehn/boost -f Dockerfile_boost .
docker build -t carljohanrehn/quantlib -f Dockerfile_quantlib .
docker build -t carljohanrehn/quantlib-miniconda3 -f Dockerfile_quantlib_miniconda3 .


