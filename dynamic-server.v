// built on vlang version 0.2.4 ec92d46

// this file creates a web server and add dynamically values to html by the vlang vars

module main

import vweb

struct App {
	vweb.Context
}

fn main() {
	app := App{}
	vweb.run(app, 8081)
}

['/index']
pub fn (mut app App) index() vweb.Result {
	message := "My html dynamic title" //html title
	areas := ['content1', 'content2', 'content3'] //html list values
	return $vweb.html()
}