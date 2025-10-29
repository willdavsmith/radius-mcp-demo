extension radius

param environmentName string

param image string = 'ghcr.io/radius-project/samples/demo:latest'

resource environment 'Applications.Core/environments@2023-10-01-preview' existing = {
  name: environmentName
}

resource application 'Applications.Core/applications@2023-10-01-preview' = {
  name: 'todolist'
  properties: {
    environment: environment.id
  }
}

resource demo 'Applications.Core/containers@2023-10-01-preview' = {
  name: 'demo'
  properties: {
    application: application.id
    container: {
      image: image
      ports: {
        web: {
          containerPort: 3000
        }
      }
      livenessProbe: {
        kind: 'httpGet'
        containerPort: 3000
        path: '/healthz'
        initialDelaySeconds: 10
      }
    }
  }
}
