## python 3 instructions for running site on a container:

* 1- install requirements:

```pip install -r requirements.txt```

* 2- build the site:

```mkdocs build```

* 3- create the docker image:

```docker build -t const:v1 .```

* 4- run the container:

```docker run -itd -p 8000:80 const:v1```
