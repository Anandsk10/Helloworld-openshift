# Use the official Golang image as the base image
FROM golang:1.16

# Set the working directory inside the container
WORKDIR /go/src/app

# Copy the Golang source code to the container
COPY . .

# Build the Golang application
RUN go build -o app

# Set the entry point for the container
CMD ["./app"]
