package grpcgateway

import (
	"github.com/bazelbuild/bazel-gazelle/label"
	"github.com/stackb/rules_proto/pkg/protoc"
)

func init() {
	protoc.Plugins().MustRegisterPlugin(&protocGenGotagPlugin{})
}

// protocGenGotagPlugin implements Plugin for protoc-gen-gotag.
type protocGenGotagPlugin struct{}

// Name implements part of the Plugin interface.
func (p *protocGenGotagPlugin) Name() string {
	return "srikrsna:protoc-gen-gotag"
}

// Configure implements part of the Plugin interface.
func (p *protocGenGotagPlugin) Configure(ctx *protoc.PluginContext) *protoc.PluginConfiguration {
	if !p.shouldApply(ctx.ProtoLibrary) {
		return nil
	}
	return &protoc.PluginConfiguration{
		Label:   label.New("build_stack_rules_proto", "plugin/srikrsna/protoc-gen-gotag", "protoc-gen-gotag"),
		Outputs: p.outputs(ctx.Rel, ctx.ProtoLibrary),
		Options: ctx.PluginConfig.GetOptions(),
	}
}

func (p *protocGenGotagPlugin) shouldApply(lib protoc.ProtoLibrary) bool {
	return true
}

func (p *protocGenGotagPlugin) outputs(rel string, lib protoc.ProtoLibrary) []string {
    srcs := make([]string, 0)
	return srcs
}
