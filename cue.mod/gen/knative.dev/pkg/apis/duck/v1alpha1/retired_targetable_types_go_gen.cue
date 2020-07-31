// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go knative.dev/pkg/apis/duck/v1alpha1

package v1alpha1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// Targetable is an earlier version of the Callable interface.
// Callable is a higher-level interface which implements Addressable
// but further promises that the destination may synchronously return
// response messages in reply to a message.
//
// Targetable implementations should instead implement Addressable and
// include an `eventing.knative.dev/returns=any` annotation.
//
// Targetable is retired; implement Addressable for now.
#Targetable: {
	domainInternal?: string @go(DomainInternal)
}

// Target is a skeleton type wrapping Targetable in the manner we expect
// resource writers defining compatible resources to embed it.  We will
// typically use this type to deserialize Targetable ObjectReferences and
// access the Targetable data.  This is not a real resource.
#Target: {
	metav1.#TypeMeta
	metadata?: metav1.#ObjectMeta @go(ObjectMeta)
	status:    #TargetStatus      @go(Status)
}

// TargetStatus shows how we expect folks to embed Targetable in
// their Status field.
#TargetStatus: {
	targetable?: null | #Targetable @go(Targetable,*Targetable)
}

// TargetList is a list of Target resources
#TargetList: {
	metav1.#TypeMeta
	metadata: metav1.#ListMeta @go(ListMeta)
	items: [...#Target] @go(Items,[]Target)
}
