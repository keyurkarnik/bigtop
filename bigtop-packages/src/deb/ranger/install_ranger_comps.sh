#!/bin/bash

for comp in admin usersync kms tagsync hdfs-plugin yarn-plugin hive-plugin hbase-plugin knox-plugin storm-plugin kafka-plugin atlas-plugin
	do
		bash -x debian/install_ranger.sh \
			--prefix=debian/ranger \
			--build-dir=build \
			--component=${comp} \
			--doc-dir=usr/share/doc/ranger-doc
	done
