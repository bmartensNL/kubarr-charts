{{- define "jackett.name" -}}{{ include "kubarr-common.name" . }}{{- end }}
{{- define "jackett.fullname" -}}{{ include "kubarr-common.fullname" . }}{{- end }}
{{- define "jackett.chart" -}}{{ include "kubarr-common.chart" . }}{{- end }}
{{- define "jackett.labels" -}}{{ include "kubarr-common.labels" . }}{{- end }}
{{- define "jackett.selectorLabels" -}}{{ include "kubarr-common.selectorLabels" . }}{{- end }}
{{- define "jackett.serviceAccountName" -}}{{ include "kubarr-common.serviceAccountName" . }}{{- end }}
