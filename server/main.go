package main

import (
  "context"
  // pb "github.com/katsuyukishimbo/gRPC/protobuf"
  "../protobuf"
	"google.golang.org/grpc"
	"log"
  "net"
  "flag"
)

var (
	addrFlag = flag.String("addr", ":5000", "Address host:post")
)

type server struct{}

func (s *server) SayHello(ctx context.Context, req *greeter.HelloRequest) (*greeter.HelloReply, error) {
  greet := &greeter.HelloReply{
    Message: "Hello " + req.Name + "!",
  }
  return greet, nil
}

func main() {
    listener, err := net.Listen("tcp", *addrFlag)
    if err != nil {
        log.Fatalf("failed to listen: %v\n", err)
        return
    }
    grpcSrv := grpc.NewServer()
    greeter.RegisterGreeterServer(grpcSrv, &server{})
    log.Printf("service is running!")
    grpcSrv.Serve(listener)
}