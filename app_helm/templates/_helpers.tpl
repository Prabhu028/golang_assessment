{{- define "app_helm.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app_helm.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "app_helm.chart" -}}
{{- .Chart.Name }}-{{ .Chart.Version | replace "+" "_" -}}
{{- end -}}