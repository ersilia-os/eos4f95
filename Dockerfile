FROM bentoml/model-server:0.11.0-py312
MAINTAINER ersilia
RUN pip install torch==2.9.1 --index-url https://download.pytorch.org/whl/cpu
RUN pip install lazyqsar[descriptors]==2.1.1

WORKDIR /repo
COPY . /repo
