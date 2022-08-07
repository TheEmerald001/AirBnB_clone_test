#!/usr/bin/env bash
# generates the AUTHORS file

set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")/"

{
	cat <<- 'EOH'
			# This file lists individuals who contributed to the ALX airbnb cloning project
			# For how it is generated, see `generate-authors.sh`.

	EOH
	echo
	git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS