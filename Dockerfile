FROM golang:1.14.6-alpine3.12

# Meta data:
LABEL maintainer="matthewgleich@gmail.com"
LABEL description="🔄 GitHub action to sync files across repos in GitHub"

# Copying over all the files:
COPY . /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies/
RUN go get -v -t -d ./...

# Build the app
RUN go build -o app .

CMD ["./app"]
