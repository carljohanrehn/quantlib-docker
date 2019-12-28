# REV_TAG=$(git log -1 --pretty=format:%h)
# docker build -t <stable-package-name>:$REV_TAG .
# docker tag <stable-package-name>:$REV_TAG <repository-name>:$REV_TAG
# docker push <repository-name>

docker build -t carljohanrehn/miniconda3 -f Dockerfile_miniconda3 .
docker build -t carljohanrehn/boost -f Dockerfile_boost .
docker build -t carljohanrehn/quantlib -f Dockerfile_quantlib .
docker build -t carljohanrehn/quantlib-miniconda3 -f Dockerfile_quantlib_miniconda3 .


