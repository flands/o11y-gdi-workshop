# Splunk Observability Suite GDI Workshop

Hello and welcome to the Splunk Observability Suite GDI workshop!

This workshop assumes you:

- Are comfortable with command line tools including `bash`, `curl`, and `git`
  - Have a publickey added to your Github profile
- If you plan to do the Splunk APM parts of the workshop then have at least a
  basic understanding of distributed tracing
  - If not then read [Traces and spans in SignalFx
    APM](https://docs.signalfx.com/en/latest/apm/apm-concepts/apm-traces-spans.html)
- Understand the Splunk OpenTelemetry Connector and its associate components
  - If not read the documentation [here](https://github.com/signalfx/splunk-otel-collector)
- Have used the Splunk Observability Suite UI before (e.g. know how to
  create/get an access token and what a realm is)
  - If not then read the product documentation on [access
    tokens](https://docs.signalfx.com/en/latest/admin-guide/tokens.html#work-with-access-tokens)
  - A realm is a location a tenant is provisioned in. You can determine your
    realm by the URL used or under `My Profile`

Please ensure you have:

- Access to a Splunk Observability Suite org
- An access token
- Mac or Linux based operating system
- [Docker installed](https://docs.docker.com/compose/install/) -- use the link, not homebrew
  - Optionally Kubernetes configured in Docker Desktop or another Kubernetes environment
- The following tools installed: `curl`, `git`

This workshop is broken down into different levels and is meant to be followed in order:

- 101: Happy path (deploy the Splunk OpenTelemetry Connector and get data in
  for Splunk APM, Infrastructure Monitoring, Log Observer, and RUM)

IMPORTANT: Have you done part of this workshop before? Great! Changes may have
been introduced. Be sure to get the latest changes:

```bash
git pull
```
