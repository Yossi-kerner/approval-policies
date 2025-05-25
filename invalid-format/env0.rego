package env0

# METADATA
# title: Require Approval
# description: require 1 approval
warning[wrongFucntionFormat(rego.metadata.rule())] {
	count(input.approvers) < 1
}
