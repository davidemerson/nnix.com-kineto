FROM golang:1.15.7-buster
 RUN go get -u https://git.sr.ht/~sircmpwn/kineto
 WORKDIR kineto/
 RUN go build
 EXPOSE 8080
 CMD ["kineto", "gemini://idf.looting.uk/~dokoissho"]