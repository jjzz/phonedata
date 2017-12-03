package main

import (
	"fmt"
	"os"
	"phonedata"
)

func main() {
	if len(os.Args) < 2 {
		fmt.Print("usage: phonedata 1301111|-l\n")
		return
	}

	if os.Args[1] == "-l" {
		phonedata.ListAll()
		return
	}

	pr, err := phonedata.Find(os.Args[1])
	if err != nil {
		fmt.Printf("%s\n", err)
		return
	}
	fmt.Print(pr)
}
