FROM golang:latest
 WORKDIR /app
 COPY go.mod go.sum ./
 RUN go mod download
 COPY . .
 RUN go build -o kineto .
 EXPOSE 8080
CMD ["/app/kineto", "gemini://nnix.com"]