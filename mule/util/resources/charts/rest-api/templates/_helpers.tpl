{{- define "fullname" -}}
{{- if .Values.name_suffix }}
{{- printf "%s%s" .Values.application_name .Values.name_suffix | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s" .Values.application_name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "hostname" -}}
{{- printf "%s.%s.%s" .Values.application_name .Values.environment .Values.ingress.domain -}}
{{- end -}}
