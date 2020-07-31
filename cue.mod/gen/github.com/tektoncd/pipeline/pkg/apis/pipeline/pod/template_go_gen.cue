// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/pipeline/pod

package pod

import corev1 "k8s.io/api/core/v1"

// PodTemplate holds pod specific configuration
// +k8s:deepcopy-gen=true
#Template: {
	// NodeSelector is a selector which must be true for the pod to fit on a node.
	// Selector which must match a node's labels for the pod to be scheduled on that node.
	// More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
	// +optional
	nodeSelector?: {[string]: string} @go(NodeSelector,map[string]string)

	// If specified, the pod's tolerations.
	// +optional
	tolerations?: [...corev1.#Toleration] @go(Tolerations,[]corev1.Toleration)

	// If specified, the pod's scheduling constraints
	// +optional
	affinity?: null | corev1.#Affinity @go(Affinity,*corev1.Affinity)

	// SecurityContext holds pod-level security attributes and common container settings.
	// Optional: Defaults to empty.  See type description for default values of each field.
	// +optional
	securityContext?: null | corev1.#PodSecurityContext @go(SecurityContext,*corev1.PodSecurityContext)

	// List of volumes that can be mounted by containers belonging to the pod.
	// More info: https://kubernetes.io/docs/concepts/storage/volumes
	// +optional
	volumes?: [...corev1.#Volume] @go(Volumes,[]corev1.Volume) @protobuf(1,bytes,rep)

	// RuntimeClassName refers to a RuntimeClass object in the node.k8s.io
	// group, which should be used to run this pod. If no RuntimeClass resource
	// matches the named class, the pod will not be run. If unset or empty, the
	// "legacy" RuntimeClass will be used, which is an implicit class with an
	// empty definition that uses the default runtime handler.
	// More info: https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md
	// This is a beta feature as of Kubernetes v1.14.
	// +optional
	runtimeClassName?: null | string @go(RuntimeClassName,*string) @protobuf(2,bytes,opt)

	// AutomountServiceAccountToken indicates whether pods running as this
	// service account should have an API token automatically mounted.
	// +optional
	automountServiceAccountToken?: null | bool @go(AutomountServiceAccountToken,*bool) @protobuf(3,varint,opt)

	// Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are
	// 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig
	// will be merged with the policy selected with DNSPolicy.
	// +optional
	dnsPolicy?: null | corev1.#DNSPolicy @go(DNSPolicy,*corev1.DNSPolicy) @protobuf(4,bytes,opt,casttype=k8s.io/api/core/v1.DNSPolicy)

	// Specifies the DNS parameters of a pod.
	// Parameters specified here will be merged to the generated DNS
	// configuration based on DNSPolicy.
	// +optional
	dnsConfig?: null | corev1.#PodDNSConfig @go(DNSConfig,*corev1.PodDNSConfig) @protobuf(5,bytes,opt)

	// EnableServiceLinks indicates whether information about services should be injected into pod's
	// environment variables, matching the syntax of Docker links.
	// Optional: Defaults to true.
	// +optional
	enableServiceLinks?: null | bool @go(EnableServiceLinks,*bool) @protobuf(6,varint,opt)

	// If specified, indicates the pod's priority. "system-node-critical" and
	// "system-cluster-critical" are two special keywords which indicate the
	// highest priorities with the former being the highest priority. Any other
	// name must be defined by creating a PriorityClass object with that name.
	// If not specified, the pod priority will be default or zero if there is no
	// default.
	// +optional
	priorityClassName?: null | string @go(PriorityClassName,*string) @protobuf(7,bytes,opt)

	// SchedulerName specifies the scheduler to be used to dispatch the Pod
	// +optional
	schedulerName: string @go(SchedulerName)

	// ImagePullSecrets gives the name of the secret used by the pod to pull the image if specified
	ImagePullSecrets: [...corev1.#LocalObjectReference] @go(,[]corev1.LocalObjectReference)

	// HostNetwork specifies whether the pod may use the node network namespace
	// +optional
	hostNetwork: bool @go(HostNetwork)
}
