#!/bin/sh -l

set -eo pipefail

CHART_DIRECTORY=${1}
CHART_NAME=${2}

helm template ${CHART_DIRECTORY} -f ${CHART_DIRECTORY}/values.ci.yaml
mv ${CHART_DIRECTORY} ${CHART_NAME} && helm lint --strict ${CHART_NAME} -f ${CHART_NAME}/values.ci.yaml
