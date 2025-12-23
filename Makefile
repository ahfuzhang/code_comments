
# make clone prj=dotnet name=aspnetcore ver=v8.0.22
# make clone prj=VictoriaMetrics name=VictoriaLogs ver=v1.37.0
clone:
	git clone --branch $(ver) --recurse-submodules \
	  https://github.com/$(prj)/$(name).git $(name)_$(ver)

# make diff name=aspnetcore ver=v8.0.22
# make diff name=VictoriaLogs ver=v1.37.0
diff:
	mkdir -p patches/$(name)_$(ver)/ && \
	cd $(name)_$(ver) && \
	git add -N . && \
	git -c core.quotePath=false diff --name-only | while IFS= read -r file; do \
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
