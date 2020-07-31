module github.com/ekarlso/cue-tekton-test

go 1.14

require (
	github.com/tektoncd/pipeline v0.14.2 // indirect
	github.com/tektoncd/triggers v0.6.1 // indirect
)

replace (
	k8s.io/api => k8s.io/api v0.16.5
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.16.5
	k8s.io/apimachinery => k8s.io/apimachinery v0.16.5
	k8s.io/apiserver => k8s.io/apiserver v0.16.5
	k8s.io/client-go => k8s.io/client-go v0.16.5
	k8s.io/code-generator => k8s.io/code-generator v0.16.5
)
