{{- define "qbittorrent.name" -}}{{ include "kubarr-common.name" . }}{{- end }}
{{- define "qbittorrent.fullname" -}}{{ include "kubarr-common.fullname" . }}{{- end }}
{{- define "qbittorrent.chart" -}}{{ include "kubarr-common.chart" . }}{{- end }}
{{- define "qbittorrent.labels" -}}{{ include "kubarr-common.labels" . }}{{- end }}
{{- define "qbittorrent.selectorLabels" -}}{{ include "kubarr-common.selectorLabels" . }}{{- end }}
{{- define "qbittorrent.serviceAccountName" -}}{{ include "kubarr-common.serviceAccountName" . }}{{- end }}
