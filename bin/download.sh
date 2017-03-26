#!/bin/bash
set -o errexit
set -o xtrace
set -o pipefail

./node_modules/.bin/gsjson 15CQPIsRHEBFVH_jQ0USOWfd3Sqqf2MgGk9_4pNj8lbM |
	./node_modules/.bin/index-by code |
	./node_modules/.bin/json > _data/companies.json
