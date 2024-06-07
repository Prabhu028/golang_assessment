{{- define "app-helm.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app-helm.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "app-helm.chart" -}}
{{- .Chart.Name }}-{{ .Chart.Version | replace "+" "_" -}}
{{- end -}}