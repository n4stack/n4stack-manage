FROM mcr.microsoft.com/azure-cli:2.36.0
RUN mkdir /n4app
WORKDIR /n4app
COPY . /n4app/

 
