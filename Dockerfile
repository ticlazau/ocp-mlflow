FROM registry.redhat.io/ubi8/python-38
RUN pip install mlflow
EXPOSE 5000
ENTRYPOINT mlflow ui --host 0.0.0.0
