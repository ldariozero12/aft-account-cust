#!/bin/bash
# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

set -e

echo "Executing Pre-API Helpers"

echo "Setting the authentication to fetch terraform modules from Github private repositories"
ORG_NAME=$(aws ssm get-parameter --name '/aft/account-request/custom-fields/github/org-name' --profile aft-management | jq -r .Parameter.Value)
GITHUB_TOKEN=$(aws secretsmanager get-secret-value --secret-id 'aft/github_readonly_token' --profile aft-management | jq -r .SecretString)
echo Github Org: ${ORG_NAME}
for MODULE_REPO in lz-global-modules lz-foundational-modules ; do
  git config --global url."https://oauth2:$GITHUB_TOKEN@github.com/${ORG_NAME}/${MODULE_REPO}.git".insteadOf "ssh://git@github.com/${ORG_NAME}/${MODULE_REPO}.git"
done