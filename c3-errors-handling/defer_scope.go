package main

import "fmt"

func main() {
	fmt.Println("Hello")
	defer fmt.Println("Defer #1")
	{
		defer fmt.Println("Defer #2")
		{
			defer fmt.Println("Defer #3")
		}
	}
	fmt.Println("Bye")
}
