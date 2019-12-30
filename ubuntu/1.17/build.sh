# Choose your own tag...
# docker build -t mytag/miniconda3 -f Dockerfile_miniconda3 .

docker build -t carljohanrehn/miniconda3 -f Dockerfile_miniconda3 .
docker build -t carljohanrehn/boost -f Dockerfile_boost .
docker build -t carljohanrehn/quantlib -f Dockerfile_quantlib .
docker build -t carljohanrehn/quantlib-miniconda3 -f Dockerfile_quantlib_miniconda3 .
