"""
GENERATED FILE - DO NOT EDIT (created via @build_stack_rules_proto//cmd/depsgen)
"""


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def protoc_gen_cadence_aip_go_deps():
    """protoc_gen_cadence_aip_go dependency macro
    """
    com_github_cadence_protoc_gen_cadence_aip_go_darwin_x86_64()  # via <TOP>
    com_github_cadence_protoc_gen_cadence_aip_go_linux_x86_64()  # via <TOP>
    com_github_cadence_protoc_gen_cadence_aip_go_windows_x86_64()  # via <TOP>


def com_github_cadence_protoc_gen_cadence_aip_go_darwin_x86_64():
    _maybe(
        http_archive,
        name = "com_github_cadence_protoc_gen_cadence_aip_go_darwin_x86_64",
        sha256 = "f2429206a94cdb7e399c422a01d56ea5b7fa3322cd8795e6b2153da263d1a9fe",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-cadence-aip-go-e68aae4/protoc-gen-cadence-aip-go-darwin-amd64-e68aae4-1686839612.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-cadence-aip-go"],
) """,
    )

def com_github_cadence_protoc_gen_cadence_aip_go_linux_x86_64():
    _maybe(
        http_archive,
        name = "com_github_cadence_protoc_gen_cadence_aip_go_linux_x86_64",
        sha256 = "69787d80cf795db642eac326da8ce370ab709d3b35890d15d38cca32dfed77e7",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-cadence-aip-go-e68aae4/protoc-gen-cadence-aip-go-linux-amd64-e68aae4-1686839612.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-cadence-aip-go"],
) """,
    )

def com_github_cadence_protoc_gen_cadence_aip_go_windows_x86_64():
    _maybe(
        http_archive,
        name = "com_github_cadence_protoc_gen_cadence_aip_go_windows_x86_64",
        sha256 = "69787d80cf795db642eac326da8ce370ab709d3b35890d15d38cca32dfed77e7",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-cadence-aip-go-e68aae4/protoc-gen-cadence-aip-go-linux-amd64-e68aae4-1686839612.tar.gz",
        ],
        build_file_content = """package(default_visibility = ["//visibility:public"])
filegroup(
    name = "file",
    srcs = ["protoc-gen-cadence-aip-go"],
) """,
    )
