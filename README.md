# Azrael

Build, ship and run LexSys Docker Main Image.


## Repository layout


      .
      ├── Dockerfile
      ├── README.md
      └── src
          ├── deployment
          ├── EDITOR
          ├── sloth
          ├── wpride
          └── wrath

## Run


    docker run -ti -v $(pwd)/deployment:/home/lexusr/deployment --name <env> lexsys/main[:tag] /bin/bash



