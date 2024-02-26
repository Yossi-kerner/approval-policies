package env0

# METADATA
# title: deny destroys
# description: destroys are not allowed in this project
warning[format(rego.metadata.rule())] {
	input.deploymentRequest.type == "destroy"
}

format(meta) := meta.description
