{{- define "sonarr.name" -}}{{ include "kubarr-common.name" . }}{{- end }}
{{- define "sonarr.fullname" -}}{{ include "kubarr-common.fullname" . }}{{- end }}
{{- define "sonarr.chart" -}}{{ include "kubarr-common.chart" . }}{{- end }}
{{- define "sonarr.labels" -}}{{ include "kubarr-common.labels" . }}{{- end }}
{{- define "sonarr.selectorLabels" -}}{{ include "kubarr-common.selectorLabels" . }}{{- end }}
{{- define "sonarr.serviceAccountName" -}}{{ include "kubarr-common.serviceAccountName" . }}{{- end }}
