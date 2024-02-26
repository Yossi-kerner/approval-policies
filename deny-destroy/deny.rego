package env0

deny contains description if {
  input.deploymentRequest.type == "destroy"
  reason := sprintf("destroys are not allowed in this project")
}

# METADATA
# title: deny destroys
# description: destroys are not allowed in this project
#warning[format(rego.metadata.rule())] {
#	input.deploymentRequest.type == "destroy"
#}

#format(meta) := meta.description
