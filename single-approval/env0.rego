package env0

# METADATA
# title: Require Approval
# description: require 1 approval
pending[format(rego.metadata.rule())] {
	count(approvers) < 1
}

# METADATA
# title: Allow if got approved
# description: approved
allow[format(rego.metadata.rule())] {
	count(approvers) >= 1
}

# METADATA
# title: Just for logs
# description: Just for logs
rule_for_logging[format(rego.metadata.rule())] {
	print('got approvers', approvers)
	print('got user from input', input.deployerUser)
	print('got approvers from input', input.approvers)
}

approvers := [email | email := input.approvers[_].email; email != input.deployerUser.email]

format(meta) := meta.description
