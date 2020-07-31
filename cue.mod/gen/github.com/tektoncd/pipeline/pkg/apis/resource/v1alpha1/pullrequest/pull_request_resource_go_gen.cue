// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/resource/v1alpha1/pullrequest

package pullrequest

import resourcev1alpha1 "github.com/tektoncd/pipeline/pkg/apis/resource/v1alpha1"

_#prSource:       "pr-source"
_#authTokenField: "authToken"

// nolint: gosec
_#authTokenEnv: "AUTH_TOKEN"

// Resource is an endpoint from which to get data which is required
// by a Build/Task for context.
#Resource: {
	name: string @go(Name)
	type: string @go(Type)

	// URL pointing to the pull request.
	// Example: https://github.com/owner/repo/pulls/1
	url: string @go(URL)

	// SCM provider (github or gitlab today). This will be guessed from URL if not set.
	provider: string @go(Provider)

	// Secrets holds a struct to indicate a field name and corresponding secret name to populate it.
	secrets: [...resourcev1alpha1.#SecretParam] @go(Secrets,[]resourcev1alpha1.SecretParam)
	"insecure-skip-tls-verify": bool @go(InsecureSkipTLSVerify)
}