// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/pipeline

package pipeline

// Images holds the images reference for a number of container images used
// across tektoncd pipelines.
#Images: {
	// EntrypointImage is container image containing our entrypoint binary.
	EntrypointImage: string

	// NopImage is the container image used to kill sidecars.
	NopImage: string

	// AffinityAssistantImage is the container image used for the Affinity Assistant.
	AffinityAssistantImage: string

	// GitImage is the container image with Git that we use to implement the Git source step.
	GitImage: string

	// CredsImage is the container image used to initialize credentials before the build runs.
	CredsImage: string

	// KubeconfigWriterImage is the container image containing our kubeconfig writer binary.
	KubeconfigWriterImage: string

	// ShellImage is the container image containing bash shell.
	ShellImage: string

	// GsutilImage is the container miage containing gsutil.
	GsutilImage: string

	// BuildGCSFetcherImage is the container image containing our GCS fetcher binary.
	BuildGCSFetcherImage: string

	// PRImage is the container image that we use to implement the PR source step.
	PRImage: string

	// ImageDigestExporterImage is the container image containing our image digest exporter binary.
	ImageDigestExporterImage: string
}