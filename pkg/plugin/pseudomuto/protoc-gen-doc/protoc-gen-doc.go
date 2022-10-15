package grpcgateway

import (
	"github.com/bazelbuild/bazel-gazelle/label"
	"github.com/stackb/rules_proto/pkg/plugin/golang/protobuf"
	"github.com/stackb/rules_proto/pkg/protoc"
)

func init() {
	protoc.Plugins().MustRegisterPlugin(&protocGenDocPlugin{})
}

// protocGenDocPlugin implements Plugin for protoc-gen-validate.
type protocGenDocPlugin struct{}

// Name implements part of the Plugin interface.
func (p *protocGenDocPlugin) Name() string {
	return "pseudomuto:protoc-gen-doc"
}

// Configure implements part of the Plugin interface.
func (p *protocGenDocPlugin) Configure(ctx *protoc.PluginContext) *protoc.PluginConfiguration {
	options := ctx.PluginConfig.GetOptions()
	mappings, _ := protobuf.GetImportMappings(options)

	outputs := p.outputs(ctx.ProtoLibrary, mappings)
	out := "markdown," + outputs[0] + ",source_relative"
	opts := append(ctx.PluginConfig.GetOptions(), out)

	return &protoc.PluginConfiguration{
		Label:   label.New("build_stack_rules_proto", "plugin/pseudomuto/protoc-gen-doc", "protoc-gen-doc"),
		Outputs: outputs,
		Options: opts,
	}
}

func (p *protocGenDocPlugin) outputs(lib protoc.ProtoLibrary, importMappings map[string]string) []string {
	srcs := make([]string, 0)
	for _, f := range lib.Files() {
		srcs = append(srcs, protobuf.GetGoOutputBaseName(f, importMappings)+".pb.md")
	}
	return srcs
}
