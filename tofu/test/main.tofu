resource "null_resource" "hello_world" {
    triggers = {
        always_run = "${timestamp()}"
    }

    provisioner "local-exec" {
        command = "echo 'Hello, big World!'"
    }
}