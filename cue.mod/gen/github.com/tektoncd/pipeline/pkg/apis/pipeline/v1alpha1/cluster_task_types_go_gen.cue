// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/pipeline/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// ClusterTask is a Task with a cluster scope. ClusterTasks are used to
// represent Tasks that should be publicly addressable from any namespace in the
// cluster.
#ClusterTask: {
	metav1.#TypeMeta

	// +optional
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)

	// Spec holds the desired state of the Task from the client
	// +optional
	spec?: #TaskSpec @go(Spec)
}

// ClusterTaskList contains a list of ClusterTask
#ClusterTaskList: {
	metav1.#TypeMeta

	// +optional
	metadata?: metav1.#ListMeta @go(ListMeta)
	items: [...#ClusterTask] @go(Items,[]ClusterTask)
}
