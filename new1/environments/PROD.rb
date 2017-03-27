name "PROD"
description "Production Environment"
cookbook "stackapp", "= 0.4.0"

override_attributes ({
        "stackapp" => {
                "ip" => "10.0.20.210",
                "user" => "student",
                "password" => "student@321$"
        }
})
