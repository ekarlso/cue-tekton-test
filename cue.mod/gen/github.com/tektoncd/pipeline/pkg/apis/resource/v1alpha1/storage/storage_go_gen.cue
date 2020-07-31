// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/resource/v1alpha1/storage

package storage

// ArtifactStorageBucketType holds the name of the PipelineResource type for a bucket
#ArtifactStorageBucketType: "bucket"

// ArtifactStoragePVCType holds the name of the PipelineResource type for a pvc
#ArtifactStoragePVCType: "pvc"

// It adds a function to the PipelineResourceInterface for retrieving secrets that are usually
// needed for storage PipelineResources.
#PipelineStorageResourceInterface: _