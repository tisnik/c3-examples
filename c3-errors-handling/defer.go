package main

import "fmt"

func main() {
	defer fmt.Println("Too late")

	fmt.Println("Hello")
}
