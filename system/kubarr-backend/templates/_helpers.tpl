{{- define "kubarr-backend.name" -}}kubarr{{- end }}
{{- define "kubarr-backend.fullname" -}}kubarr-backend{{- end }}
{{- define "kubarr-backend.chart" -}}{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}{{- end }}
{{- define "kubarr-backend.labels" -}}
helm.sh/chart: {{ include "kubarr-backend.chart" . }}
{{ include "kubarr-backend.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
{{- define "kubarr-backend.selectorLabels" -}}
app.kubernetes.io/name: kubarr-backend
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
{{- define "kubarr-backend.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default "kubarr" .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
