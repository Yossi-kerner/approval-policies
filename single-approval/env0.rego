package env0

# METADATA
# title: Require Approval
# description: require 1 approval
pending[format(rego.metadata.rule())] {
	print('got approvers', approvers)
	count(approvers) < 1
}

# METADATA
# title: Allow if got approved
# description: approved
allow[format(rego.metadata.rule())] {
	print('got approvers', approvers)
	count(approvers) >= 1
}

approvers := [email | email := input.approvers[_].email; email != input.deployerUser.email]

format(meta) := meta.description
