package com.miishhift.dockerdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SayHello {

	@GetMapping("/hello")
	public String sayHello()
	{
		return "Hi from Docker";
	}
}
