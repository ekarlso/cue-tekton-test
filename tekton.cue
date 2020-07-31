package kube

import (
  tkn_v1_beta "github.com/tektoncd/pipeline/pkg/apis/pipeline/v1beta1"
)

tknTask: [ID=_]: tkn_v1_beta.#Task & {
  apiVersion: "tekton.dev/v1beta1"
  kind:       "Task"
  metadata: name: ID
}