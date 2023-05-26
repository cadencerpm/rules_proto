"""
GENERATED FILE - DO NOT EDIT (created via @build_stack_rules_proto//cmd/depsgen)
"""


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def protoc_gen_go_aip_deps():
    """protoc_gen_go_aip dependency macro
    """
    com_github_einride_protoc_gen_go_aip_v0_60_darwin_x86_64()  # via <TOP>
    com_github_einride_protoc_gen_go_aip_v0_60_linux_x86_64()  # via <TOP>
    com_github_einride_protoc_gen_go_aip_v0_60_windows_x86_64()  # via <TOP>


def com_github_einride_protoc_gen_go_aip_v0_60_darwin_x86_64():
    _maybe(
        http_archive,
        name = "com_github_einride_protoc_gen_go_aip_v0_60_darwin_x86_64",
        sha256 = "7e3154054ceae08771a1cfd39c34ad0282835a723d594bee53b3daea95926c53",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-go-aip-0.60/protoc-gen-go-aip_0.60_Darwin_amd64.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-go-aip"],
) """,
    )

def com_github_einride_protoc_gen_go_aip_v0_60_linux_x86_64():
    _maybe(
        http_archive,
        name = "com_github_einride_protoc_gen_go_aip_v0_60_linux_x86_64",
        sha256 = "3e7ff37a340c0d78b45a6d4602e6606b6bc85d263f7ce045c9a2647d4eee11a2",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-go-aip-0.60/protoc-gen-go-aip_0.60_Linux_amd64.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-go-aip"],
) """,
    )

def com_github_einride_protoc_gen_go_aip_v0_60_windows_x86_64():
    _maybe(
        http_archive,
        name = "com_github_einride_protoc_gen_go_aip_v0_60_windows_x86_64",
        sha256 = "8acf0bf64eda29183b4c6745c3c6a12562fd9a8ab08d61788cf56e6659c66b3b",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/tag/protoc-gen-go-aip-0.60/protoc-gen-go-aip_0.60_Linux_amd64.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-go-aip"],
) """,
    )
