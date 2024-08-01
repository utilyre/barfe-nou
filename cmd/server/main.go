package main

import (
	"context"
	"os"

	"github.com/utilyre/barfe-nou/internal/components"
)

func main() {
	component := components.Hello("world")
	component.Render(context.TODO(), os.Stdout)
}
