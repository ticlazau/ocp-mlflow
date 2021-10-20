FROM registry.redhat.io/ubi8/python-38
RUN pip install --upgrade pip
RUN pip install mlflow \
    && pip install azure-storage-blob \
    && pip install numpy \
    && pip install scipy \
    && pip install pandas \
    && pip install scikit-learn
#    && pip install cloudpickle
#    && pip install psycopg2-binary \
#    && pip install boto3

EXPOSE 5000
ENTRYPOINT mlflow ui --host 0.0.0.0
