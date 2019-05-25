deps_config := \
	kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
