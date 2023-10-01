FROM python:3.12-rc-bookworm


RUN apt update 

RUN mkdir /app
WORKDIR /app

RUN python -m pip install --upgrade pip
RUN pip install jupyterlab

EXPOSE 8011
# CMD ["jupyter", "notebook", "--port=8011", "--ip=0.0.0.0", "--allow-root"]
ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--port=8011", "--allow-root"]