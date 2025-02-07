<img width=250px src="https://atsign.dev/assets/img/@platform_logo_grey.svg?sanitize=true">

[![Build Status](https://github.com/atsign-foundation/at_tools/actions/workflows/at_tools.yaml/badge.svg)](https://github.com/atsign-foundation/at_tools/actions/workflows/at_tools.yaml)
[![GitHub License](https://img.shields.io/badge/license-BSD3-blue.svg)](./LICENSE)

## at_tools

This repository contains @protocol tools and libraries for developers
building @platform applications who wish to utilize the authentication
methods and commonly used components of the @protocol:

(These libraries can also be found on pub.dev as linked)

### pub.dev packages

[at_commons](https://pub.dev/packages/at_commons)- at_commons library
is used for commonly used components in implementation of the @protocol.

[at_utils](https://pub.dev/packages/at_utils)- This is the Utility library
for @protocol projects. It contains utility classes for atsign, atmetadata,
configuration and logger.


### standalone tools

[at_cli](./at_cli)- A command line tool to execute verbs on the @platform.

[at_cram](./at_cram)- The challenge–response authentication mechanism of the
@protocol.

[at_dump_atKeys](./at_dump_atKeys)- A command line tool to dump keys from a
.atKeys file.

[at_pkam](./at_pkam)- The public key authentication mechanism of the
@protocol.

[at_ve_doctor](./at_ve_doctor)- A very simple way to test the status of the
secondaries running in the Virtual Environment. Using the
[at_server_status](https://pub.dev/packages/at_server_status) package.
