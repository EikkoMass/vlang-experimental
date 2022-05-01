// built on vlang version 0.2.4 ec92d46

// this file ask the user for their name and shows it with your OS 
import os

fn main() {
	name := os.input("what is your name? : ")
	println("Hello $name, your OS is ${os.user_os().to_upper()}")
}