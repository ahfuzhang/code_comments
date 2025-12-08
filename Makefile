
# make clone prj=VictoriaMetrics name=VictoriaLogs ver=v1.37.0
clone:
	git clone --branch $(ver) --recurse-submodules \
	  https://github.com/$(prj)/$(name).git $(name)_$(ver)

# make diff name=VictoriaLogs ver=v1.37.0
diff:
	mkdir -p patches/$(name)_$(ver)/ && \
	cd $(name)_$(ver) && \
	git add -N . && \
	git diff --name-only | while read file; do \
		mkdir -p "../patches/$(name)_$(ver)/$$(dirname $$file)"; \
		git diff "$$file" > "../patches/$(name)_$(ver)/$$file.patch"; \
	done

# make patch name=VictoriaLogs ver=v1.37.0
patch:
	cd $(name)_$(ver) && \
	git reset --hard && \
	find ../patches/$(name)_$(ver) -name '*.patch' | while read patch; do \
		git apply "$$patch"; \
	done
