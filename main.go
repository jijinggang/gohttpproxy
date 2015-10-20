package main

import (
	"flag"
	"github.com/elazarl/goproxy"
	"log"
	"net/http"
)

var (
	port = flag.String("p", "8080", "Address of the http proxy server")
)

func main() {
	flag.Parse()
	proxy := goproxy.NewProxyHttpServer()
	proxy.Verbose = true
	println("Proxy server listening on " + *port)
	log.Fatal(http.ListenAndServe(":"+*port, proxy))
}
