
vm:
	mkdir -p VictoriaMetrics/VictoriaMetrics && \
	git submodule add -b cluster https://github.com/VictoriaMetrics/VictoriaMetrics.git VictoriaMetrics/VictoriaMetrics


submodule_update:
	git submodule update --init --remote --recursive

vm_clone:
	git clone --branch cluster --recurse-submodules https://github.com/VictoriaMetrics/VictoriaMetrics.git VictoriaMetrics/VictoriaMetrics/

diff:
	mkdir -p patches/VictoriaMetrics/VictoriaMetrics/ &&
	cd VictoriaMetrics/VictoriaMetrics && \
	git diff > ../../patches/VictoriaMetrics/VictoriaMetrics/comment.patch

apply_patch:
	cd VictoriaMetrics/VictoriaMetrics && \
	git reset --hard && git pull --rebase && \
	git pull && \
	git apply ../../patches/VictoriaMetrics/VictoriaMetrics/comment.patch
