{{- define "radarr.name" -}}{{ include "kubarr-common.name" . }}{{- end }}
{{- define "radarr.fullname" -}}{{ include "kubarr-common.fullname" . }}{{- end }}
{{- define "radarr.chart" -}}{{ include "kubarr-common.chart" . }}{{- end }}
{{- define "radarr.labels" -}}{{ include "kubarr-common.labels" . }}{{- end }}
{{- define "radarr.selectorLabels" -}}{{ include "kubarr-common.selectorLabels" . }}{{- end }}
{{- define "radarr.serviceAccountName" -}}{{ include "kubarr-common.serviceAccountName" . }}{{- end }}
