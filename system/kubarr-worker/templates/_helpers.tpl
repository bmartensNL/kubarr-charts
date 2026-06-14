{{- define "kubarr-worker.fullname" -}}kubarr-worker{{- end }}
{{- define "kubarr-worker.chart" -}}{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}{{- end }}
{{- define "kubarr-worker.labels" -}}
helm.sh/chart: {{ include "kubarr-worker.chart" . }}
{{ include "kubarr-worker.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
{{- define "kubarr-worker.selectorLabels" -}}
app.kubernetes.io/name: kubarr-worker
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
{{- define "kubarr-worker.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default "kubarr" .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
