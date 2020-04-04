##python 3 instructions:

*1- install requirements:
pip install -r requirements.txt

*2- build the site:
mkdocs build

*3- run the container:
docker build -t const:v1 .
docker run -itd -p 8000:80 const:v1
