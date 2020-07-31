// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/resource/v1alpha1/storage

package storage

import resource "github.com/tektoncd/pipeline/pkg/apis/resource/v1alpha1"

_#secretVolumeMountPath: "/var/bucketsecret"

// ArtifactBucket contains the Storage bucket configuration defined in the
// Bucket config map.
// +k8s:deepcopy-gen=true
#ArtifactBucket: {
	Name:     string
	Location: string
	Secrets: [...resource.#SecretParam] @go(,[]resource.SecretParam)
	ShellImage:  string
	GsutilImage: string
}
