name "DEV"
description "Dev Servers environment"
cookbook "apache","0.1.1"
override_attributes ({
	"environ" => "DEV"
})
