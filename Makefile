build_ol7:
	docker build --pull --force-rm \
		--tag marklemoine/oraclelinux7-rpm-builder \
		--file Dockerfile.ol7 .

build: build_ol7

test: build	test_ol7 

test_ol7:
	docker run --rm \
		-v ${PWD}/tests/:/rpmbuild/SOURCES/ \
		-v ${PWD}/_dist_ol7:/rpmbuild/ \
		marklemoine/oraclelinux7-rpm-builder build-spec /rpmbuild/SOURCES/test1.spec

clean:
	rm -rf _dist
	rm **/*.tar.gz
	rm **/*.jar
