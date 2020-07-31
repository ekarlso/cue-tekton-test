// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/config

package config

_#disableHomeEnvOverwriteKey:             "disable-home-env-overwrite"
_#disableWorkingDirOverwriteKey:          "disable-working-directory-overwrite"
_#disableAffinityAssistantKey:            "disable-affinity-assistant"
_#runningInEnvWithInjectedSidecarsKey:    "running-in-environment-with-injected-sidecars"
#DefaultDisableHomeEnvOverwrite:          false
#DefaultDisableWorkingDirOverwrite:       false
#DefaultDisableAffinityAssistant:         false
#DefaultRunningInEnvWithInjectedSidecars: true

// FeatureFlags holds the features configurations
// +k8s:deepcopy-gen=true
#FeatureFlags: {
	DisableHomeEnvOverwrite:          bool
	DisableWorkingDirOverwrite:       bool
	DisableAffinityAssistant:         bool
	RunningInEnvWithInjectedSidecars: bool
}
