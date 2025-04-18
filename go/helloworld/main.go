package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello, Go! 🎉")
}

func main() {
	http.HandleFunc("/", handler)
	port := "8080"
	fmt.Println("Server starting on port", port)
	if err := http.ListenAndServe(":"+port, nil); err != nil {
		panic(err)
	}
}