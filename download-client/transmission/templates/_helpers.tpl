{{- define "transmission.name" -}}{{ include "kubarr-common.name" . }}{{- end }}
{{- define "transmission.fullname" -}}{{ include "kubarr-common.fullname" . }}{{- end }}
{{- define "transmission.chart" -}}{{ include "kubarr-common.chart" . }}{{- end }}
{{- define "transmission.labels" -}}{{ include "kubarr-common.labels" . }}{{- end }}
{{- define "transmission.selectorLabels" -}}{{ include "kubarr-common.selectorLabels" . }}{{- end }}
{{- define "transmission.serviceAccountName" -}}{{ include "kubarr-common.serviceAccountName" . }}{{- end }}
