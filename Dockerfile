FROM golang:1.15.8-alpine
# Set necessary environmet variables needed for our image
#ENV GO111MODULE=on \
#    CGO_ENABLED=0 \
#    GOOS=linux \
#    GOARCH=amd64

# Copy and download dependency using go mod
COPY src/go.mod .
COPY src/go.sum .
RUN go mod download

# Copy the code into the container
COPY . .

# Build the application
RUN go build .

# Move to /dist directory as the place for resulting binary folder
WORKDIR /dist

# Copy binary from build to main folder
RUN cp /src/main .

# Export necessary port
EXPOSE 8080

# Command to run when starting the container
CMD ["kineto", "gemini://idf.looting.uk/"]