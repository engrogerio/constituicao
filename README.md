## python 3 instructions:

* 1- install requirements:

```console pip install -r requirements.txt```

* 2- build the site:

mkdocs build

* 3- create the docker image:

docker build -t const:v1 .

* 4- run the container:

docker run -itd -p 8000:80 const:v1
