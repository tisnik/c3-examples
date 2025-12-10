/*
 * Seriál Programovací jazyk C3
 * https://www.root.cz/serialy/programovaci-jazyk-c3/
 * --------------------------------------------------
 *
 * Demonstrační příklad použitý v článku:
 * Programovací jazyk C3: reakce na chyby, odložení vykonání příkazů
 * https://www.root.cz/clanky/programovaci-jazyk-c3-reakce-na-chyby-odlozeni-vykonani-prikazu/
 */

package main

import "fmt"

func main() {
	defer fmt.Println("Too late")

	fmt.Println("Hello")
}
