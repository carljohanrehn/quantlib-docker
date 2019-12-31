# Choose your own tag...
# docker build -t mytag/pytorch-quantlib-miniconda3 -f Dockerfile_pytorch .

docker build -t carljohanrehn/pytorch-quantlib-miniconda3 -f Dockerfile_pytorch .
docker build -t carljohanrehn/pytorch-quantlib-miniconda3-dev-notebook -f Dockerfile_pytorch_notebook .

