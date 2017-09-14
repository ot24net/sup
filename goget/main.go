// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:generate ./mkalldocs.sh

package main

import (
	"os"

	"go/get"
)

func main() {
	args := append([]string{"get"}, os.Args[1:]...)
	cmd := get.CmdGet
	cmd.Flag.Usage = func() { cmd.Usage() }
	if cmd.CustomFlags {
		args = args[1:]
	} else {
		cmd.Flag.Parse(args[1:])
		args = cmd.Flag.Args()
	}
	cmd.Run(cmd, args)
	return
}
