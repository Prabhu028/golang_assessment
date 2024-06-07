package main

import (
    "fmt"
    "net/http"
)

//helloHandler is a function that handles HTTP requests to the /hello path.
func helloHandler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello from Botgauge")
}

func main() {
    // Register the helloHandler function for the /hello path.
    http.HandleFunc("/hello", helloHandler)

    // Start the web server on port 8080.
    fmt.Println("Starting server on :8080")
    if err := http.ListenAndServe(":8080", nil); err != nil {
        fmt.Println("Error starting server:", err)
    }
}
