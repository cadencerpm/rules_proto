"""
GENERATED FILE - DO NOT EDIT (created via @build_stack_rules_proto//cmd/depsgen)
"""


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def protoc_gen_gotag_deps():
    """protoc_gen_gotag dependency macro
    """
    srikrsna_protoc_gen_gotag_v0_6_2_darwin_x86_64()  # via <TOP>
    srikrsna_protoc_gen_gotag_v0_6_2_linux_x86_64()  # via <TOP>


def srikrsna_protoc_gen_gotag_v0_6_2_darwin_x86_64():
    _maybe(
        http_file,
        name = "srikrsna_protoc_gen_gotag_v0_6_2_darwin_x86_64",
        executable = True,
        sha256 = "3cf65a04b705b204378ff373d18298f059607ace22cbe65ffbd5d9382534686e",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-gotag-0.6.2/protoc-gen-gotag-darwin-amd64",
        ],
    )

def srikrsna_protoc_gen_gotag_v0_6_2_linux_x86_64():
    _maybe(
        http_file,
        name = "srikrsna_protoc_gen_gotag_v0_6_2_linux_x86_64",
        executable = True,
        sha256 = "19779ebd865e8fc36e2e580a953677e4d6c5dd196603c7e243bab76b3355bccb",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-gotag-0.6.2/protoc-gen-tag-linux-amd64",
        ],
    )
