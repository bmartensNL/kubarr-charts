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

{{- define "kubarr-common.storage.mediaClaim" -}}
{{- $root := .root -}}
{{- $storage := default dict $root.Values.storage -}}
{{- $media := default dict $storage.media -}}
{{- $nfs := default dict $media.nfs -}}
{{- $create := true -}}
{{- if hasKey $media "create" -}}
{{- $create = $media.create -}}
{{- end -}}
{{- if $create }}
{{- $namespace := default $root.Release.Namespace $root.Values.namespace.name -}}
{{- $claimName := default "media-data" $media.existingClaim -}}
{{- $pvName := printf "kubarr-media-%s-%s" $namespace $claimName | trunc 63 | trimSuffix "-" -}}
{{- $defaultNfsServer := "kubarr-managed-nfs.kubarr-storage.svc.cluster.local" -}}
{{- $managedNfsService := lookup "v1" "Service" "kubarr-storage" "kubarr-managed-nfs" -}}
{{- if and $managedNfsService $managedNfsService.spec.clusterIP -}}
{{- $defaultNfsServer = $managedNfsService.spec.clusterIP -}}
{{- end -}}
apiVersion: v1
kind: PersistentVolume
metadata:
  name: {{ $pvName }}
spec:
  capacity:
    storage: {{ default "1Ti" $nfs.size }}
  accessModes:
    - ReadWriteMany
  persistentVolumeReclaimPolicy: Retain
  storageClassName: ""
  nfs:
    server: {{ default $defaultNfsServer $nfs.server }}
    path: {{ default "/" $nfs.path }}
  claimRef:
    namespace: {{ $namespace }}
    name: {{ $claimName }}
---
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: {{ $claimName }}
  namespace: {{ $namespace }}
spec:
  volumeName: {{ $pvName }}
  storageClassName: ""
  accessModes:
    - ReadWriteMany
  resources:
    requests:
      storage: {{ default "1Ti" $nfs.size }}
{{- end }}
{{- end }}

{{- define "kubarr-common.storage.configOrMediaVolume" -}}
{{ include "kubarr-common.storage.mediaVolume" . }}
{{- end }}
