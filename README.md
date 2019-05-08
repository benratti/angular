docker build -t angular --build-arg USERNAME=benratti --build-arg USERMAIL=ben@ratti.fr
docker run --rm -it -v ~/dev/angular/application/:/opt/angularapp:rw angular ng new mon-premier-projet
docker run --rm -it -v ~/dev/angular/application/:/opt/angularapp:rw -w="/opt/angularapp/mon-premier-projet" -p 4200:4200 angular ng serve --open --host 0.0.0.0
