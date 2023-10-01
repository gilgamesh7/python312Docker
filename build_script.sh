docker build --tag python312jupyter .
docker login
docker run --detach --publish 8011:8011 python312jupyter
# docker run -p 8011:8011 jupyter-notebook