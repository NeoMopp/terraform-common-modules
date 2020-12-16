generate_module:
	mkdir $(provider)/$(module) && \
	touch $(provider)/$(module)/aws.tf && \
	touch $(provider)/$(module)/main.tf && \
	touch $(provider)/$(module)/outputs.tf && \
	touch $(provider)/$(module)/variables.tf && \
	touch $(provider)/$(module)/README.md