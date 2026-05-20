FROM golang:1.21-alpine

WORKDIR /app

# 1. This tells it to look inside your new 'backend' folder for dependencies
COPY backend/go.mod backend/go.sum* ./
RUN go mod download

# 2. This copies your actual Golang code from the 'backend' folder into the container
COPY backend/ ./

# 3. This compiles the code into a working program
RUN go build -o main .

EXPOSE 8080

CMD ["./main"]