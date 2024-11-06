FROM golang:1.22.5
WORKDIR /docker_final
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /docker_final/parcel
CMD ["/docker_final/parcel"]

