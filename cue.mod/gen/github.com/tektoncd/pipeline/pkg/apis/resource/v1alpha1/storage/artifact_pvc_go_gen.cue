// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/resource/v1alpha1/storage

package storage

import corev1 "k8s.io/api/core/v1"

// ArtifactPVC represents the pvc created by the pipelinerun for artifacts temporary storage.
// +k8s:deepcopy-gen=true
#ArtifactPVC: {
	Name:                   string
	PersistentVolumeClaim?: null | corev1.#PersistentVolumeClaim @go(,*corev1.PersistentVolumeClaim)
	ShellImage:             string
}
