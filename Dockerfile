FROM jffbarros/containerbase

#Baixa repositório com aplicação de teste e gera executável
RUN go get -u github.com/jffbarros/testegolangdockeroracle
RUN go install -a github.com/jffbarros/testegolangdockeroracle

#Run the outyet command by default when the container starts.
ENTRYPOINT /go/bin/testegolangdockeroracle

# Document that the service listens on port 8081.
EXPOSE 8081