FROM registry.redhat.io/ubi8/python-38

RUN pip install --upgrade pip
RUN pip install mlflow==1.20.2 \
    && pip install azure-storage-blob==12.9.0 \
    && pip install numpy==1.21.2 \
    && pip install scipy==1.7.1 \
    && pip install pandas==1.3.4 \
    && pip install scikit-learn==1.0 \
    && pip install cloudpickle==2.0.0 \
    && pip install boto3==1.18.65 \
    && pip install ibm-cos-sdk==2.10.0 \
    && pip install psycopg2-binary==2.9.1

EXPOSE 5000
#ENTRYPOINT mlflow ui --host 0.0.0.0
ENTRYPOINT mlflow server --host 0.0.0.0 --backend-store-uri sqlite:///:memory --default-artifact-root ./mlruns
