FROM bentoml/model-server:0.11.0-py310
MAINTAINER ersilia

RUN pip install rdkit==2023.3.2
RUN pip install lazyqsar==0.3
RUN pip install scikit-learn==1.2.2

WORKDIR /repo
COPY . /repo