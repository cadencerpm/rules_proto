"""
GENERATED FILE - DO NOT EDIT (created via @build_stack_rules_proto//cmd/depsgen)
"""


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def protoc_gen_doc_deps():
    """protoc_gen_doc dependency macro
    """
    com_github_pseudomuto_protoc_gen_doc_v1_5_1_darwin_x86_64()  # via <TOP>
    com_github_pseudomuto_protoc_gen_doc_v1_5_1_linux_x86_64()  # via <TOP>
    com_github_pseudomuto_protoc_gen_doc_v1_5_1_windows_x86_64()  # via <TOP>


def com_github_pseudomuto_protoc_gen_doc_v1_5_1_darwin_x86_64():
    _maybe(
        http_archive,
        name = "com_github_pseudomuto_protoc_gen_doc_v1_5_1_darwin_x86_64",
        sha256 = "f429e5a5ddd886bfb68265f2f92c1c6a509780b7adcaf7a8b3be943f28e144ba",
        urls = [
            "https://github.com/pseudomuto/protoc-gen-doc/releases/download/v1.5.1/protoc-gen-doc_1.5.1_darwin_amd64.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-doc"],
) """,
    )

def com_github_pseudomuto_protoc_gen_doc_v1_5_1_linux_x86_64():
    _maybe(
        http_archive,
        name = "com_github_pseudomuto_protoc_gen_doc_v1_5_1_linux_x86_64",
        sha256 = "47cd72b07e6dab3408d686a65d37d3a6ab616da7d8b564b2bd2a2963a72b72fd",
        urls = [
            "https://github.com/pseudomuto/protoc-gen-doc/releases/download/v1.5.1/protoc-gen-doc_1.5.1_linux_amd64.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-doc"],
) """,
    )

def com_github_pseudomuto_protoc_gen_doc_v1_5_1_windows_x86_64():
    _maybe(
        http_archive,
        name = "com_github_pseudomuto_protoc_gen_doc_v1_5_1_windows_x86_64",
        sha256 = "8acf0bf64eda29183b4c6745c3c6a12562fd9a8ab08d61788cf56e6659c66b3b",
        urls = [
            "https://github.com/pseudomuto/protoc-gen-doc/releases/download/v1.5.1/protoc-gen-doc_1.5.1_windows_amd64.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-doc"],
) """,
    )
