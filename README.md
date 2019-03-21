# Description

Forked from lest/centos7-rpm-builder-docker to add support in for OracleLinux7. Nearly all the work was done by Sergey Nartimov (lest).

## Using

### OracleLinux 7
`docker pull marklemoine/oraclelinux7-rpm-builder`

# Docker OracleLinux 7 RPM Builder

Example usage:

``` shell
docker run --rm \
  -v ${PWD}:/rpmbuild \
  <TBA>/oraclelinux7-rpm-builder \
  bin/build-spec SPECS/my-package.spec
```

