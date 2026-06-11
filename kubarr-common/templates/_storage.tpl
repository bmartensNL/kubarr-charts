{{/* Shared NFS-backed storage helpers for Kubarr app charts. */}}

{{- define "kubarr-common.storage.configMount" -}}
{{- $root := .root -}}
{{- $mountPath := default $root.Values.storage.media.configMountPath .mountPath -}}
- name: media
  mountPath: {{ $mountPath }}
  subPath: {{ $root.Values.storage.media.configSubPath }}
  {{- if .readOnly }}
  readOnly: true
  {{- end }}
{{- end }}

{{- define "kubarr-common.storage.mediaMount" -}}
{{- $root := .root -}}
- name: media
  mountPath: {{ .mountPath }}
  subPath: {{ .subPath }}
  {{- if .readOnly }}
  readOnly: true
  {{- end }}
{{- end }}

{{- define "kubarr-common.storage.mediaVolume" -}}
{{- $root := .root -}}
- name: media
  persistentVolumeClaim:
    claimName: {{ include "kubarr-common.storage.mediaClaimName" . }}
{{- end }}

{{- define "kubarr-common.storage.mediaClaimName" -}}
{{- .root.Values.storage.media.existingClaim -}}
{{- end }}

{{- define "kubarr-common.storage.configOrMediaVolume" -}}
{{ include "kubarr-common.storage.mediaVolume" . }}
{{- end }}
