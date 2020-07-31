
set -ex

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

export GO111MODULE=on
go get github.com/tektoncd/pipeline/pkg/apis/...@v0.14.2
go get github.com/tektoncd/triggers/pkg/apis/...@v0.6.1

cue get go github.com/tektoncd/pipeline/pkg/apis/...
cue get go github.com/tektoncd/triggers/pkg/apis/...
