package grpcnode

import (
	"fmt"
	"path"
	"strings"

	"github.com/bazelbuild/bazel-gazelle/label"
	"github.com/stackb/rules_proto/pkg/protoc"
)

func init() {
	protoc.Plugins().MustRegisterPlugin(&ProtocGenGrpcWeb{})
}

// ProtocGenGrpcWeb implements Plugin for grpc_web_plugin in the
// grpc/grpc-web repo.
type ProtocGenGrpcWeb struct{}

// Name implements part of the Plugin interface.
func (p *ProtocGenGrpcWeb) Name() string {
	return "grpc:grpc-web:protoc-gen-grpc-web"
}

// Configure implements part of the Plugin interface.
func (p *ProtocGenGrpcWeb) Configure(ctx *protoc.PluginContext) *protoc.PluginConfiguration {
	if !protoc.HasServices(ctx.ProtoLibrary.Files()...) {
		return nil
	}
	return &protoc.PluginConfiguration{
		Label: label.New("build_stack_rules_proto", "plugin/grpc/grpc-web", "protoc-gen-grpc-web"),
		Outputs: protoc.FlatMapFiles(
			grpcGeneratedFileName(ctx.Rel, ctx.PluginConfig.GetOptions()),
			protoc.HasService,
			ctx.ProtoLibrary.Files()...,
		),
		Options: ctx.PluginConfig.GetOptions(),
	}
}

// grpcGeneratedFileName is a utility function that returns a function that
// computes the name of a predicted generated file having the given extension(s)
// relative to the given dir.
func grpcGeneratedFileName(reldir string, options []string) func(f *protoc.File) []string {
	isTypescript := false
	for _, option := range options {
		if option == "import_style=typescript" {
			isTypescript = true
		}
	}

	return func(f *protoc.File) []string {
		name := strings.ReplaceAll(f.Name, "-", "_")
		if reldir != "" {
			name = path.Join(reldir, name)
		}

		var filename string
		if isTypescript {
			segments := strings.Split(name, "/")
			lastSegment := segments[len(segments)-1]
			capitalized := strings.Title(lastSegment)
			segments[len(segments)-1] = capitalized
			filename = fmt.Sprintf("%sServiceClientPb.ts", strings.Join(segments, "/"))
		} else {
			filename = fmt.Sprintf("%s_grpc_web_pb.js", name)
		}

		return []string{filename}
	}
}
