### build image
``` docker build -t symfony-app . ```

### run image 
``` docker build -t symfony-app . ```
``` docker run -it --rm --name symfony-app symfony-app bash ``
``` docker run -u app -it -p 127.0.0.1:80:8000 --rm --name symfony-app -v Z:/demo/docker-ci-stack/symfony-app/src:/home/app/my-project/ symfony-app bash ```
``` docker run -it -p 127.0.0.1:80:8000 --rm --name symfony-app -v Z:/demo/docker-ci-stack/symfony-app/src:/home/app/my-project/ symfony-app ```
``` docker run -it -p 80:8888 --rm --name symfony-app -v Z:/demo/docker-ci-stack/symfony-app/src:/home/app/my-project/ symfony-app ```