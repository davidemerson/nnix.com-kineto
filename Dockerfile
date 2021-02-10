FROM golang:1.15.8-alpine
 RUN go build
 EXPOSE 8080
 CMD ["kineto", "gemini://idf.looting.uk/"]