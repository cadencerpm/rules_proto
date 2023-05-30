"""
GENERATED FILE - DO NOT EDIT (created via @build_stack_rules_proto//cmd/depsgen)
"""


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def protoc_gen_validate_deps():
    """protoc_gen_validate dependency macro
    """
    envoyproxy_protoc_gen_validate_v1_0_1_darwin_x86_64()  # via <TOP>
    envoyproxy_protoc_gen_validate_v1_0_1_linux_x86_64()  # via <TOP>
    envoyproxy_protoc_gen_validate_v1_0_1_windows_x86_64()  # via <TOP>


def envoyproxy_protoc_gen_validate_v1_0_1_darwin_x86_64():
    _maybe(
        http_archive,
        name = "envoyproxy_protoc_gen_validate_v1_0_1_darwin_x86_64",
        sha256 = "cb1f321fa1f181ad67c8416c50fc2a09d181134b34d731c1da4e58c2f069af0e",
        urls = [
            "https://github.com/bufbuild/protoc-gen-validate/releases/download/v1.0.1/protoc-gen-validate_1.0.1_darwin_amd64.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-validate-go"],
) """,
    )

def envoyproxy_protoc_gen_validate_v1_0_1_linux_x86_64():
    _maybe(
        http_archive,
        name = "envoyproxy_protoc_gen_validate_v1_0_1_linux_x86_64",
        sha256 = "427f6cd62015ffe2db5f6bb59aca7dd395e61f431a3228667ca7fb3e052372bb",
        urls = [
            "https://github.com/bufbuild/protoc-gen-validate/releases/download/v1.0.1/protoc-gen-validate_1.0.1_linux_amd64.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-doc"],
) """,
    )

def envoyproxy_protoc_gen_validate_v1_0_1_windows_x86_64():
    _maybe(
        http_archive,
        name = "envoyproxy_protoc_gen_validate_v1_0_1_windows_x86_64",
        sha256 = "4d40d9063114c46fe6dee1ff1e565587acbdace8b8d3bf15c4bc3daf09a65576",
        urls = [
            "https://github.com/bufbuild/protoc-gen-validate/releases/download/v1.0.1/protoc-gen-validate_1.0.1_windows_amd64.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-doc"],
) """,
    )
