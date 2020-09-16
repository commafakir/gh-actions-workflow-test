# gh-actions-workflow-test

![Deploys the application to dev](https://github.com/commafakir/gh-actions-workflow-test/workflows/Deploys%20the%20application%20to%20dev/badge.svg)

## Release mechanism

1. All pull requests run tests
2. master is deployed to `dev` from every push
3. Branch matching `release/*` is deployed to `test`
4. Tag by name `prod/*` will be deployed to `prod`

Production tag *should* be placed only to commits in `release` branch, but it can be used to hotfix production really quickly - without going to lower stages.