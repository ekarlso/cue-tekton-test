// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/tektoncd/pipeline/pkg/apis/pipeline/v1alpha1

package v1alpha1

import "github.com/tektoncd/pipeline/pkg/apis/pipeline/v1beta1"

// WorkspaceDeclaration is a declaration of a volume that a Task requires.
#WorkspaceDeclaration: v1beta1.#WorkspaceDeclaration

// WorkspaceBinding maps a Task's declared workspace to a Volume.
#WorkspaceBinding: v1beta1.#WorkspaceBinding

// PipelineWorkspaceDeclaration creates a named slot in a Pipeline that a PipelineRun
// is expected to populate with a workspace binding.
#PipelineWorkspaceDeclaration: v1beta1.#PipelineWorkspaceDeclaration

// WorkspacePipelineTaskBinding describes how a workspace passed into the pipeline should be
// mapped to a task's declared workspace.
#WorkspacePipelineTaskBinding: v1beta1.#WorkspacePipelineTaskBinding