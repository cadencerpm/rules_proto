package grpcgateway

import (
	"path"

	"github.com/bazelbuild/bazel-gazelle/label"
	"github.com/stackb/rules_proto/pkg/protoc"
)

func init() {
	protoc.Plugins().MustRegisterPlugin(&protcGenValidatePlugin{})
}

// protcGenValidatePlugin implements Plugin for protoc-gen-validate.
type protcGenValidatePlugin struct{}

// Name implements part of the Plugin interface.
func (p *protcGenValidatePlugin) Name() string {
	return "envoyproxy:protoc-gen-validate"
}

// Configure implements part of the Plugin interface.
func (p *protcGenValidatePlugin) Configure(ctx *protoc.PluginContext) *protoc.PluginConfiguration {
	if !p.shouldApply(ctx.ProtoLibrary) {
		return nil
	}
	return &protoc.PluginConfiguration{
		Label:   label.New("build_stack_rules_proto", "plugin/envoyproxy/protoc-gen-validate", "protoc-gen-validate"),
		Outputs: p.outputs(ctx.Rel, ctx.ProtoLibrary),
		Options: ctx.PluginConfig.GetOptions(),
	}
}

func (p *protcGenValidatePlugin) shouldApply(lib protoc.ProtoLibrary) bool {
	return protoc.HasServices(lib.Files()...)
}

func (p *protcGenValidatePlugin) outputs(rel string, lib protoc.ProtoLibrary) []string {
	srcs := make([]string, 0)
	for _, f := range lib.Files() {
		if !f.HasServices() {
			continue
		}
		base := f.Name
		if rel != "" {
			base = path.Join(rel, base)
		}
		srcs = append(srcs, base+".pb.validate.go")
	}
	return srcs
}
