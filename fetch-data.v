// built on vlang version 0.2.4 ec92d46

// This file fetchs data by brazilian postal code, from "Brasil Api" project!

import net.http
import json

struct PostalCode { //need to struct a type to json lib decode data
	cep int
	state string
	city string
	neighborhood string
	street string
	service string
}

fn main() {
	cep := 37002035 //varginha incident
	resp := http.get('https://brasilapi.com.br/api/cep/v1/$cep') or {
		eprintln('Failed fetch $err =(')
		return
	}
	println(resp.text)

	postal := json.decode(PostalCode, resp.text) or {
		eprintln('error to parse json')
		return
	}

	eprintln('$postal.street =D')
}
