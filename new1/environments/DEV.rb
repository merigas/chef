name "DEV"
description "Development Environment"
cookbook "stackapp", "= 0.4.0"
override_attributes ({
	"stackapp" => {
		"ip" => "10.128.0.2",
		"user" => "student",
		"password" => "student"
	}
})
