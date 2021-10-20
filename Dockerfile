FROM registry.redhat.io/ubi8/python-38
RUN pip install mlflow>=1.0 \
    && pip install azure-storage-blob==12.3.0 \
    && pip install numpy>=1.21.2 \
    && pip install scipy \
    && pip install pandas>=1.3.3 \
    && pip install scikit-learn==0.23.1 \
    && pip install cloudpickle
    && pip install psycopg2-binary==2.9.1 \
    && pip install boto3==1.18.65 && \
    && pip install ibm-cos-sdk
EXPOSE 5000
ENTRYPOINT mlflow ui --host 0.0.0.0
