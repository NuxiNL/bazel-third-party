load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def third_party_repositories():
    http_archive(
        name = "boringssl",
        patches = [
            "@org_cloudabi_bazel_third_party//:patches/boringssl/cloudabi.diff",
            "@org_cloudabi_bazel_third_party//:patches/boringssl/const-warning.diff",
        ],
        urls = ["https://boringssl.googlesource.com/boringssl/+archive/afc30d43eef92979b05776ec0963c9cede5fb80f.tar.gz"],
    )

    http_archive(
        name = "com_github_cares_cares",
        build_file = "@com_github_grpc_grpc//third_party:cares/cares.BUILD",
        patches = [
            "@org_cloudabi_bazel_third_party//:patches/com_github_cares_cares/const-warning.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_cares_cares/force-sock_funcs.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_cares_cares/no-IN_CLASS.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_cares_cares/no-fopen.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_cares_cares/no-inet_addr.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_cares_cares/sys_select.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_cares_cares/unsafe-string-functions.diff",
        ],
        strip_prefix = "c-ares-3be1924221e1326df520f8498d704a5c4c8d0cce",
        urls = ["https://github.com/c-ares/c-ares/archive/3be1924221e1326df520f8498d704a5c4c8d0cce.tar.gz"],
    )

    http_archive(
        name = "com_github_grpc_grpc",
        patches = [
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/cares.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/clock_gettime.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/localtime_r.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/memory.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/msghdr-msg_name.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/netinet_tcp.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/no-fopen.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/no-setenv.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/no-socket-bind-connect.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/no-socket.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/no-strcpy.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/platform.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_github_grpc_grpc/strtok_r.diff",
        ],
        sha256 = "34ed95b727e7c6fcbf85e5eb422e962788e21707b712fdb4caf931553c2c6dbc",
        strip_prefix = "grpc-1.17.2",
        urls = ["https://github.com/grpc/grpc/archive/v1.17.2.tar.gz"],
    )

    http_archive(
        name = "com_github_open_source_parsers_jsoncpp",
        build_file = "@org_cloudabi_bazel_third_party//:BUILD.jsoncpp",
        sha256 =
            "c49deac9e0933bcb7044f08516861a2d560988540b23de2ac1ad443b219afdb6",
        strip_prefix = "jsoncpp-1.8.4",
        urls = ["https://github.com/open-source-parsers/jsoncpp/archive/1.8.4.tar.gz"],
    )

    http_archive(
        name = "com_github_jbeder_yaml_cpp",
        build_file = "@org_cloudabi_bazel_third_party//:BUILD.yaml_cpp",
        patches = ["@org_cloudabi_bazel_third_party//:patches/com_github_jbeder_yaml_cpp/no-ifstream.diff"],
        sha256 = "e4d8560e163c3d875fd5d9e5542b5fd5bec810febdcba61481fe5fc4e6b1fd05",
        strip_prefix = "yaml-cpp-yaml-cpp-0.6.2",
        urls = ["https://github.com/jbeder/yaml-cpp/archive/yaml-cpp-0.6.2.tar.gz"],
    )

    http_archive(
        name = "com_google_protobuf",
        patches = [
            "@org_cloudabi_bazel_third_party//:patches/com_google_protobuf/endian.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_google_protobuf/no-filesystem-namespace.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_google_protobuf/no-stdout.diff",
            "@org_cloudabi_bazel_third_party//:patches/com_google_protobuf/unsafe-string-functions.diff",
        ],
        sha256 = "73fdad358857e120fd0fa19e071a96e15c0f23bb25f85d3f7009abfd4f264a2a",
        strip_prefix = "protobuf-3.6.1.3",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.6.1.3.tar.gz"],
    )
