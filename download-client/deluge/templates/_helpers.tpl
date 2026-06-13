{{- define "deluge.name" -}}{{ include "kubarr-common.name" . }}{{- end }}
{{- define "deluge.fullname" -}}{{ include "kubarr-common.fullname" . }}{{- end }}
{{- define "deluge.chart" -}}{{ include "kubarr-common.chart" . }}{{- end }}
{{- define "deluge.labels" -}}{{ include "kubarr-common.labels" . }}{{- end }}
{{- define "deluge.selectorLabels" -}}{{ include "kubarr-common.selectorLabels" . }}{{- end }}
{{- define "deluge.serviceAccountName" -}}{{ include "kubarr-common.serviceAccountName" . }}{{- end }}
