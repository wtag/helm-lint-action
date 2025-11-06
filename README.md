# Helm Lint Action

This action lints a Helm chart using Helm 3.

## Inputs

### `chart_directory`

**Required** The path to the chart directory which should be linted.

### `chart_name`

**Required** The name of the chart which should be linted.

## Example usage

```yaml
- uses: wtag/helm-lint-action@master
  with:
    chart_directory: deployment/chart
    chart_name: pg-backup
```
