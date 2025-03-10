
build:
	go build -o bin/main main.go

run:
	go run main.go

compile:
	echo "Compiling for every OS and Platform"
	GOOS=freebsd GOARCH=386 go build -o bin/main-freebsd-386 main.go
	GOOS=linux GOARCH=386 go build -o bin/main-freebsd-386 main.go
	GOOS=windows GOARCH=386 go build -o bin/main-freebsd-386 main.go

clean:
	rm -r bin

clear:
	rm tmp/blocks/*
