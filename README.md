# Third-party libraries for Bazel

This repository contains recipes for building third-party Open Source
libraries using Bazel. These recipes may be added to an existing Bazel
workspace by adding the following lines to the `WORKSPACE` file:

```python
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_github_nuxinl_bazel_third_party",
    commit = "<insert commit hash here>",
    remote = "https://github.com/NuxiNL/bazel-third-party.git",
)

load("@com_github_nuxinl_bazel_third_party//:third_party.bzl", "third_party_repositories")

third_party_repositories()
```

You may then include third-party libraries in your code base by
depending on one of the targets below (i.e., adding them to
`cc_binary()` or `cc_library()`'s `deps`:

* JsonCpp: `@com_github_open_source_parsers_jsoncpp//:jsoncpp`
* yaml-cpp: `@com_github_jbeder_yaml_cpp//:yaml_cpp`
