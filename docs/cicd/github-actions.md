# :simple-githubactions: GitHub Actions

## Registration

- [GitHub Partner Certifications](https://examregistration.github.com/overview)
- [GitHub Partner Certifications - Candidate Handbook](https://examregistration.github.com/handbook#certification-process-overview)
- [GitHub Partner Certifications - FAQ](https://examregistration.github.com/faq)

## Introduction

- [Quickstart for GitHub Actions](https://docs.github.com/en/actions/quickstart)

## General

- [MSFT Learn GitHub Actions Collection](https://learn.microsoft.com/en-us/users/githubtraining/collections/n5p4a5z7keznp5)
- [MSFT Learn Path: Automate your workflow with GitHub Actions](https://learn.microsoft.com/en-us/training/paths/automate-workflow-github-actions/)
- [GitHub Actions documentation](https://docs.github.com/en/actions)

## Most relevant sections

### Learn GitHub Actions

- [Understanding GitHub Actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions)
- [Essential features of GitHub Actions](https://docs.github.com/en/actions/learn-github-actions/essential-features-of-github-actions)
- [Contexts](https://docs.github.com/en/actions/learn-github-actions/contexts)
- [Variables](https://docs.github.com/en/actions/learn-github-actions/variables)
- [Usage limits, billing, and administration](https://docs.github.com/en/actions/learn-github-actions/usage-limits-billing-and-administration)

### Using Workflows

- [Disabling and enabling a workflow](https://docs.github.com/en/actions/using-workflows/disabling-and-enabling-a-workflow)
- [Events that trigger workflows](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows)
- [Workflow syntax for GitHub Actions](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions)
- [Caching dependencies to speed up workflows](https://docs.github.com/en/actions/using-workflows/caching-dependencies-to-speed-up-workflows)
- [Storing workflow data as artifacts](https://docs.github.com/en/actions/using-workflows/storing-workflow-data-as-artifacts)
- [Sharing workflows, secrets, and runners with your organization](https://docs.github.com/en/actions/using-workflows/sharing-workflows-secrets-and-runners-with-your-organization)

### Build and test

- [About continuous integration](https://docs.github.com/en/actions/automating-builds-and-tests/about-continuous-integration)

### Deployment - Target different environments

- [Using environments for deployment](https://docs.github.com/en/actions/deployment/targeting-different-environments/using-environments-for-deployment)

### Monitor & troubleshoot

- [Adding a workflow status badge](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/adding-a-workflow-status-badge)
- [Using workflow run logs](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/using-workflow-run-logs)
- [Enabling debug logging](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/enabling-debug-logging)

### GitHub and Self-hosted runners

- [About GitHub-hosted runners](https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners)
- [About self-hosted runners](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners)

### Creating actions

- [Metadata syntax for GitHub Actions](https://docs.github.com/en/actions/creating-actions/metadata-syntax-for-github-actions)

### GitHub Actions API

- [GitHub REST API](https://docs.github.com/en/rest?apiVersion=2022-11-28)
- [GitHub REST API - Actions artifacts](https://docs.github.com/en/rest/actions/artifacts?apiVersion=2022-11-28)
- [GitHub REST API - Workflow runs](https://docs.github.com/en/rest/actions/workflow-runs?apiVersion=2022-11-28)

## Dependencies

- [Webhook events and payloads](https://docs.github.com/en/webhooks-and-events/webhooks/webhook-events-and-payloads)
- [MSFT Learn - Intro to Docker containers](chttps://learn.microsoft.com/en-us/training/modules/intro-to-docker-containers/)
- [GitHub API - Octokit](https://octokit.github.io/rest.js)

## Common CI/CD Actions

- [GitHub Marketplace](https://github.com/marketplace?type=actions)
- [GitHub Actions starter-workflow](https://github.com/actions/starter-workflows)
- [actions/upload-artifact](https://github.com/actions/upload-artifact)
- [actions/download-artifact](https://github.com/actions/download-artifact)
- [actions/github-script](https://github.com/actions/github-script)
- [azure/webapps-deploy@v2](https://github.com/Azure/webapps-deploy)
- [azure/login@v1](https://github.com/Azure/login)
- [azure/docker-login@v1](https://github.com/Azure/docker-login)
- [pullreminders/label-when-approved-action](https://github.com/abinoda/label-when-approved-action)

## Samples

- [midudev/pokedex-for-ci](https://github.com/midudev/pokedex-for-ci)

## Examples

```yaml title="github-actions-demo.yml"
name: GitHub Actions Demo

run-name: ${{ github.actor }} is testing out GitHub Actions 🚀
on:
  workflow_dispatch:
  push:
    branches: [main]

jobs:
  Explore-GitHub-Actions:
    runs-on: ubuntu-latest
    steps:
      - run: echo "🎉 The job was automatically triggered by a ${{ github.event_name }} event."
      - run: echo "🐧 This job is now running on a ${{ runner.os }} server hosted by GitHub!"
      - run: echo "🔎 The name of your branch is ${{ github.ref }} and your repository is ${{ github.repository }}."
      - name: Check out repository code
        uses: actions/checkout@v3
      - run: echo "💡 The ${{ github.repository }} repository has been cloned to the runner."
      - run: echo "🖥️ The workflow is now ready to test your code on the runner."
      - name: List files in the repository
        run: |
          ls ${{ github.workspace }}
      - run: echo "🍏 This job's status is ${{ job.status }}."
```
