"""
GENERATED FILE - DO NOT EDIT (created via @build_stack_rules_proto//cmd/depsgen)
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def protoc_gen_validate_deps():
    """protoc_gen_validate dependency macro
    """
    envoyproxy_protoc_gen_validate_v0_6_7_darwin_x86_64()  # via <TOP>
    envoyproxy_protoc_gen_validate_v0_6_7_linux_x86_64()  # via <TOP>

def envoyproxy_protoc_gen_validate_v0_6_7_darwin_x86_64():
    _maybe(
        http_file,
        name = "envoyproxy_protoc_gen_validate_v0_6_7_darwin_x86_64",
        executable = True,
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-validate-0.6.7/protoc-gen-validate-darwin-amd64",
        ],
    )

def envoyproxy_protoc_gen_validate_v0_6_7_linux_x86_64():
    _maybe(
        http_file,
        name = "envoyproxy_protoc_gen_validate_v0_6_7_linux_x86_64",
        executable = True,
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-validate-0.6.7/protoc-gen-validate-linux-amd64",
        ],
    )
