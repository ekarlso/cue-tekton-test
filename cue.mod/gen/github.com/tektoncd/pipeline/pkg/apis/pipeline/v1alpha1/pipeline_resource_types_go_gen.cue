// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/pipeline/v1alpha1

package v1alpha1

import resource "github.com/tektoncd/pipeline/pkg/apis/resource/v1alpha1"

// PipelineResourceType represents the type of endpoint the pipelineResource is, so that the
// controller will know this pipelineResource should be fetched and optionally what
// additional metatdata should be provided for it.
#PipelineResourceType: string // #enumPipelineResourceType

#enumPipelineResourceType:
	#PipelineResourceTypeGit |
	#PipelineResourceTypeStorage |
	#PipelineResourceTypeImage |
	#PipelineResourceTypeCluster |
	#PipelineResourceTypePullRequest |
	#PipelineResourceTypeCloudEvent |
	#PipelineResourceTypeGCS |
	#PipelineResourceTypeBuildGCS

// PipelineResourceTypeGit indicates that this source is a Git repo.
#PipelineResourceTypeGit: "git"

// PipelineResourceTypeStorage indicates that this source is a storage blob resource.
#PipelineResourceTypeStorage: "storage"

// PipelineResourceTypeImage indicates that this source is a docker Image.
#PipelineResourceTypeImage: "image"

// PipelineResourceTypeCluster indicates that this source is a k8s cluster Image.
#PipelineResourceTypeCluster: "cluster"

// PipelineResourceTypePullRequest indicates that this source is a SCM Pull Request.
#PipelineResourceTypePullRequest: "pullRequest"

// PipelineResourceTypeCloudEvent indicates that this source is a cloud event URI
#PipelineResourceTypeCloudEvent: "cloudEvent"

// PipelineResource describes a resource that is an input to or output from a
// Task.
//
#PipelineResource: resource.#PipelineResource

// PipelineResourceSpec defines  an individual resources used in the pipeline.
#PipelineResourceSpec: resource.#PipelineResourceSpec

// SecretParam indicates which secret can be used to populate a field of the resource
#SecretParam: resource.#SecretParam

// ResourceParam declares a string value to use for the parameter called Name, and is used in
// the specific context of PipelineResources.
#ResourceParam: resource.#ResourceParam

// ResourceDeclaration defines an input or output PipelineResource declared as a requirement
// by another type such as a Task or Condition. The Name field will be used to refer to these
// PipelineResources within the type's definition, and when provided as an Input, the Name will be the
// path to the volume mounted containing this PipelineResource as an input (e.g.
// an input Resource named `workspace` will be mounted at `/workspace`).
#ResourceDeclaration: resource.#ResourceDeclaration

// PipelineResourceList contains a list of PipelineResources
#PipelineResourceList: resource.#PipelineResourceList
