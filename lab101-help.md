### Enable the logging exporter with debug logs

```yaml
exporters:
  logging:
    logLevel: debug

service:
  pipelines:
    traces:
      ...
      exporters: [logging]
```

### Disable the Jaeger receiver

```yaml
service:
  pipelines:
    traces:
      receivers: [otlp, sapm, zipkin]
```

You can remove from `receivers` section, but as long as not in a trace pipeline
it is not enabled.

### Enable the ntp smartagent receiver

```yaml
receivers:
  smartagent/ntp:
    type: ntp
    host: pool.ntp.org

service:
  pipelines:
    metrics:
      receivers: [smartagent/ntp]
      ...
```

### Add an environment tag to spans for Splunk APM

```yaml
processors:
  resource/add_environment:
    attributes:
      - action: insert
        value: flands
        key: deployment.environment

service:
  pipelines:
    traces:
      ...
      processors: [resource/add_environment]
      ...
```
