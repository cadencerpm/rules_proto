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
        sha256 = "67de8838133476641342900918e4ab1bf8045912404350c9f1acba751cf73ec1",
        urls = [
            "https://github.com/cadencerpm/protoc-gen-grpc-gateway-ts/releases/download/v1.1.3/protoc-gen-grpc-gateway-ts-darwin-amd64.tar.gz",
        ],
        build_file_content = """
filegroup(
    name = "exe",
    srcs = ["protoc-gen-grpc-gateway-ts-darwin-amd64"],
    visibility = ["//visibility:public"],
)
""",
    )

def grpc_gateway_ts_darwin_arm64():
    _maybe(
        http_archive,
        name = "grpc_gateway_ts_darwin_arm64",
        sha256 = "40b94ddc653b8c9ba4edc4ee9499790b36cd15f26d77308678487e139bb381aa",
        urls = [
            "https://github.com/cadencerpm/protoc-gen-grpc-gateway-ts/releases/download/v1.1.3/protoc-gen-grpc-gateway-ts-darwin-arm64.tar.gz",
        ],
        build_file_content = """
filegroup(
    name = "exe",
    srcs = ["protoc-gen-grpc-gateway-ts-darwin-arm64"],
    visibility = ["//visibility:public"],
)
""",
    )

def grpc_gateway_ts_linux():
    _maybe(
        http_archive,
        name = "grpc_gateway_ts_linux",
        sha256 = "7c7a255f62d2571b6e2c50a84a958967ab0499462966108c8585be3055d08b73",
        urls = [
            "https://github.com/cadencerpm/protoc-gen-grpc-gateway-ts/releases/download/v1.1.3/protoc-gen-grpc-gateway-ts-linux-amd64.tar.gz",
        ],
        build_file_content = """
filegroup(
    name = "exe",
    srcs = ["protoc-gen-grpc-gateway-ts-linux-amd64"],
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
