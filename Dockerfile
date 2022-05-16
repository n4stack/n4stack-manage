FROM mcr.microsoft.com/azure-cli:2.36.0
RUN mkdir /cmp1
WORKDIR /cmp1
COPY . /cmp1/

 