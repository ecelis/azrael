# Azrael

Build, ship and run LexSys Docker main image.


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


    docker run -ti --name <env> lexsys/main:nigma \
      -v $(pwd)/src/deployment:/home/lexusr \
      -p 127.0.0.1:3000:3000 -p 127.0.0.1:3001:3001



