"""
GENERATED FILE - DO NOT EDIT (created via @build_stack_rules_proto//cmd/depsgen)
"""


load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def grpc_gateway_ts_deps():
    """grpc_gateway_ts dependency macro
    """
    grpc_gateway_ts_darwin_amd64()  # via <TOP>
    grpc_gateway_ts_darwin_arm64()  # via <TOP>
    grpc_gateway_ts_linux()  # via <TOP>
    grpc_gateway_ts_windows()  # via <TOP>


def grpc_gateway_ts_darwin_amd64():
    _maybe(
        http_archive,
        name = "grpc_gateway_ts_darwin_amd64",
        sha256 = "161418a4a0cdb49027e918f5dff9ce7a7b59866393764add0c72c24e00ee8f07",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-grpc-gateway-ts_1.1.2/protoc-gen-grpc-gateway-ts_1.1.2_Darwin_amd64_patched.tar.gz",
        ],
        build_file_content = """
filegroup(
    name = "exe",
    srcs = ["protoc-gen-grpc-gateway-ts"],
    visibility = ["//visibility:public"],
)
""",
    )

def grpc_gateway_ts_darwin_arm64():
    _maybe(
        http_archive,
        name = "grpc_gateway_ts_darwin_arm64",
        sha256 = "07869625ce2dda23775ad19f9d441db84408117a374b852d734a08fbfc3fe963",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-grpc-gateway-ts_1.1.2/protoc-gen-grpc-gateway-ts_1.1.2_Darwin_arm64_patched.tar.gz",
        ],
        build_file_content = """
filegroup(
    name = "exe",
    srcs = ["protoc-gen-grpc-gateway-ts"],
    visibility = ["//visibility:public"],
)
""",
    )

def grpc_gateway_ts_linux():
    _maybe(
        http_archive,
        name = "grpc_gateway_ts_linux",
        sha256 = "a0578238b252aab1ec686845c47234641df70d6e8873b58cb1cf0d4ce9222711",
        urls = [
            "https://github.com/cadencerpm/rules_proto/releases/download/protoc-gen-grpc-gateway-ts_1.1.2/protoc-gen-grpc-gateway-ts_1.1.2_Linux_amd64_patched.tar.gz",
        ],
        build_file_content = """
filegroup(
    name = "exe",
    srcs = ["protoc-gen-grpc-gateway-ts"],
    visibility = ["//visibility:public"],
)
""",
    )

def grpc_gateway_ts_windows():
    _maybe(
        http_archive,
        name = "grpc_gateway_ts_windows",
        sha256 = "ba769d45f99fded91329f68053a8755573e4fac9842ca11cd3864dd7f8425817",
        urls = [
            "https://github.com/grpc-ecosystem/protoc-gen-grpc-gateway-ts/releases/download/v1.1.1/protoc-gen-grpc-gateway-ts_1.1.1_Windows_amd64.tar.gz",
        ],
        build_file_content = """
filegroup(
    name = "exe",
    srcs = ["protoc-gen-grpc-gateway-ts.exe"],
    visibility = ["//visibility:public"],
)
""",
    )
