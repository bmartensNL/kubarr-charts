{{- define "sabnzbd.name" -}}{{ include "kubarr-common.name" . }}{{- end }}
{{- define "sabnzbd.fullname" -}}{{ include "kubarr-common.fullname" . }}{{- end }}
{{- define "sabnzbd.chart" -}}{{ include "kubarr-common.chart" . }}{{- end }}
{{- define "sabnzbd.labels" -}}{{ include "kubarr-common.labels" . }}{{- end }}
{{- define "sabnzbd.selectorLabels" -}}{{ include "kubarr-common.selectorLabels" . }}{{- end }}
{{- define "sabnzbd.serviceAccountName" -}}{{ include "kubarr-common.serviceAccountName" . }}{{- end }}
