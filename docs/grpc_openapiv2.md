---
layout: default
title: grpc_openapiv2
permalink: examples/grpc_openapiv2
parent: Examples
---


# grpc_openapiv2 example

`bazel test //example/golden:grpc_openapiv2_test`


## `BUILD.bazel` (after gazelle)

~~~python
load("@rules_proto//proto:defs.bzl", "proto_library")
load("@build_stack_rules_proto//rules/go:proto_go_library.bzl", "proto_go_library")
load("@build_stack_rules_proto//rules:proto_compile.bzl", "proto_compile")

# gazelle:proto_plugin protoc-gen-go implementation golang:protobuf:protoc-gen-go
# gazelle:proto_rule proto_compile implementation stackb:rules_proto:proto_compile
# gazelle:proto_rule proto_go_library implementation stackb:rules_proto:proto_go_library
# gazelle:proto_plugin protoc-gen-go dep @org_golang_google_protobuf//reflect/protoreflect
# gazelle:proto_plugin protoc-gen-go dep @org_golang_google_protobuf//runtime/protoimpl
# gazelle:proto_rule proto_go_library visibility //visibility:public
# gazelle:proto_language go plugin protoc-gen-go
# gazelle:proto_language go rule proto_compile
# gazelle:proto_language go rule proto_go_library

# gazelle:proto_plugin protoc-gen-grpc-openapiv2 implementation grpc-ecosystem:grpc-gateway:protoc-gen-grpc-openapiv2
# gazelle:proto_plugin protoc-gen-grpc-openapiv2 option logtostderr=true
# gazelle:proto_plugin protoc-gen-grpc-openapiv2 option use_go_templates=true
# gazelle:proto_language go plugin protoc-gen-grpc-openapiv2

proto_library(
    name = "pb_proto",
    srcs = ["example.proto"],
    visibility = ["//visibility:public"],
)

proto_compile(
    name = "pb_go_compile",
    options = {"@build_stack_rules_proto//plugin/grpc-ecosystem/grpc-gateway:protoc-gen-grpc-openapiv2": [
        "logtostderr=true",
        "use_go_templates=true",
    ]},
    outputs = [
        "example.pb.go",
        "example.swagger.json",
    ],
    plugins = [
        "@build_stack_rules_proto//plugin/golang/protobuf:protoc-gen-go",
        "@build_stack_rules_proto//plugin/grpc-ecosystem/grpc-gateway:protoc-gen-grpc-openapiv2",
    ],
    proto = "pb_proto",
)

proto_go_library(
    name = "pb_go_proto",
    srcs = ["example.pb.go"],
    importpath = "./",
    visibility = ["//visibility:public"],
    deps = [
        "@org_golang_google_protobuf//reflect/protoreflect",
        "@org_golang_google_protobuf//runtime/protoimpl",
    ],
)
~~~


## `BUILD.bazel` (before gazelle)

~~~python
# gazelle:proto_plugin protoc-gen-go implementation golang:protobuf:protoc-gen-go
# gazelle:proto_rule proto_compile implementation stackb:rules_proto:proto_compile
# gazelle:proto_rule proto_go_library implementation stackb:rules_proto:proto_go_library
# gazelle:proto_plugin protoc-gen-go dep @org_golang_google_protobuf//reflect/protoreflect
# gazelle:proto_plugin protoc-gen-go dep @org_golang_google_protobuf//runtime/protoimpl
# gazelle:proto_rule proto_go_library visibility //visibility:public
# gazelle:proto_language go plugin protoc-gen-go
# gazelle:proto_language go rule proto_compile
# gazelle:proto_language go rule proto_go_library

# gazelle:proto_plugin protoc-gen-grpc-openapiv2 implementation grpc-ecosystem:grpc-gateway:protoc-gen-grpc-openapiv2
# gazelle:proto_plugin protoc-gen-grpc-openapiv2 option logtostderr=true
# gazelle:proto_plugin protoc-gen-grpc-openapiv2 option use_go_templates=true
# gazelle:proto_language go plugin protoc-gen-grpc-openapiv2
~~~


## `WORKSPACE`

~~~python
~~~

