FROM bentoml/model-server:0.11.0-py310
MAINTAINER ersilia

RUN pip install lightgbm==3.3.5
RUN pip install xgboost==1.7.5
RUN pip install lazyqsar==0.3 
RUN pip install scikit-learn==1.2.2

WORKDIR /repo
COPY . /repo