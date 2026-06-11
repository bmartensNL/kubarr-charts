{{- define "jellyseerr.name" -}}{{ include "kubarr-common.name" . }}{{- end }}
{{- define "jellyseerr.fullname" -}}{{ include "kubarr-common.fullname" . }}{{- end }}
{{- define "jellyseerr.chart" -}}{{ include "kubarr-common.chart" . }}{{- end }}
{{- define "jellyseerr.labels" -}}{{ include "kubarr-common.labels" . }}{{- end }}
{{- define "jellyseerr.selectorLabels" -}}{{ include "kubarr-common.selectorLabels" . }}{{- end }}
{{- define "jellyseerr.serviceAccountName" -}}{{ include "kubarr-common.serviceAccountName" . }}{{- end }}
