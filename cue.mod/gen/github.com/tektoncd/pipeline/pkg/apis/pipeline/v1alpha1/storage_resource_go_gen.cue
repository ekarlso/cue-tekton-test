// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/pipeline/v1alpha1

package v1alpha1

// PipelineResourceTypeGCS is the subtype for the GCSResources, which is backed by a GCS blob/directory.
#PipelineResourceTypeGCS: "gcs"

// PipelineResourceTypeBuildGCS is the subtype for the BuildGCSResources, which is simialr to the GCSResource but
// with additional functionality that was added to be compatible with knative build.
#PipelineResourceTypeBuildGCS: "build-gcs"
