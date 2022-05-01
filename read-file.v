// built on vlang version 0.2.4 ec92d46

// this file receives a file path and show your data on console (similar to 'cat')

import os

fn main() {

	mut filename := ""
	
	if os.args.len > 1 //if the file path was sent by the command line, ex: v run read-file.v index.html
	{
		filename = os.args[1]
	}
	else
	{
		filename = os.input('File path: ')
	}
	
	data := os.read_file(filename) or {
		panic('File not found') //debug method
		return
	}

	println(data)
}