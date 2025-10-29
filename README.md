# Radius MCP Demo

## Overview

This repository is an example of a monorepo with containerized applications. They are deployed and managed using Radius.

## Repository Structure

`/apps`: This is a directory containing app source code and deployment information in its subdirectories.
`/apps/demo`: This is an app that is deployed using Radius. It is a todolist application with multiple backend database options.

## Deployment

The apps in this repository are deployed using Radius.

## Radius + Bicep

Radius uses Bicep templates for deployment. Bicep has an extension system, which Radius uses to add custom resource types. If you are adding a new resource type to the Bicep file, always make sure you add the new extension namespace to the top of the Bicep file.

## Developer Setup

### Setup
```shell
# Set up KinD cluster + Radius installation
sh ./scripts/dev-setup.sh
```

### Teardown
```shell
# Tear down cluster
sh ./scripts/teardown-cluster.sh
```

## MCP Servers
This repository uses the Radius MCP server (https://www.npmjs.com/package/@willdavsmith/radius-mcp), which is defined in `.vscode/mcp.json`. Make sure the MCP server is running.
