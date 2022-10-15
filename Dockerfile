FROM golang: 1.19

LABEL base.name="go-aip"

WORKDIR /app

COPY . . 

RUN gi build -o main .

EXPOSE 3000

ENTRYPOINT ["./cmd/main"]