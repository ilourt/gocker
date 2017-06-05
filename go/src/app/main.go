package main

import (
	"fmt"

	"github.com/tockins/realize/watcher"
)

func main() {
	wt := watcher.Blueprint{}
	tt := 25

	if tt > 10 {
		tt = 9
		wt.Clean()
	}
	fmt.Printf("%d", tt)
	fmt.Printf("Hello, world.\n")
}
