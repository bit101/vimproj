package main

import (
	"github.com/bit101/blgg"
)

func main() {
	context := blgg.NewContext(800, 800)
	context.ClearRGB(1, 0, 0)
	context.SavePNG("out.png")
}
