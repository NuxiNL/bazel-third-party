load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def third_party_repositories():
    http_archive(
        name = "com_github_open_source_parsers_jsoncpp",
        build_file = "@com_github_nuxinl_bazel_third_party//:BUILD.jsoncpp",
        sha256 =
            "c49deac9e0933bcb7044f08516861a2d560988540b23de2ac1ad443b219afdb6",
        strip_prefix = "jsoncpp-1.8.4",
        urls = ["https://github.com/open-source-parsers/jsoncpp/archive/1.8.4.tar.gz"],
    )

    http_archive(
        name = "com_github_jbeder_yaml_cpp",
        build_file = "@com_github_nuxinl_bazel_third_party//:BUILD.yaml_cpp",
        patches = ["@com_github_nuxinl_bazel_third_party//:patches/com_github_jbeder_yaml_cpp/no-ifstream.diff"],
        sha256 = "e4d8560e163c3d875fd5d9e5542b5fd5bec810febdcba61481fe5fc4e6b1fd05",
        strip_prefix = "yaml-cpp-yaml-cpp-0.6.2",
        urls = ["https://github.com/jbeder/yaml-cpp/archive/yaml-cpp-0.6.2.tar.gz"],
    )

    http_archive(
        name = "com_google_protobuf",
        patches = [
            "@com_github_nuxinl_bazel_third_party//:patches/com_google_protobuf/endian.diff",
            "@com_github_nuxinl_bazel_third_party//:patches/com_google_protobuf/no-filesystem-namespace.diff",
            "@com_github_nuxinl_bazel_third_party//:patches/com_google_protobuf/no-stdout.diff",
            "@com_github_nuxinl_bazel_third_party//:patches/com_google_protobuf/unsafe-string-functions.diff",
        ],
        sha256 = "73fdad358857e120fd0fa19e071a96e15c0f23bb25f85d3f7009abfd4f264a2a",
        strip_prefix = "protobuf-3.6.1.3",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.6.1.3.tar.gz"],
    )
