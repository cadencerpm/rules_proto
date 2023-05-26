package grpcgateway

import (
	"path"

	"github.com/bazelbuild/bazel-gazelle/label"
	"github.com/stackb/rules_proto/pkg/protoc"
)

func init() {
	protoc.Plugins().MustRegisterPlugin(&protocGenGoAipPlugin{})
}

// protocGenGoAipPlugin implements Plugin for protoc-gen-validate.
type protocGenGoAipPlugin struct{}

// Name implements part of the Plugin interface.
func (p *protocGenGoAipPlugin) Name() string {
	return "einride:protoc-gen-go-aip"
}

// Configure implements part of the Plugin interface.
func (p *protocGenGoAipPlugin) Configure(ctx *protoc.PluginContext) *protoc.PluginConfiguration {
	if !p.shouldApply(ctx.ProtoLibrary) {
		return nil
	}
	return &protoc.PluginConfiguration{
		Label:   label.New("build_stack_rules_proto", "plugin/einride/protoc-gen-go-aip", "protoc-gen-go-aip"),
		Outputs: p.outputs(ctx.Rel, ctx.ProtoLibrary),
		Options: ctx.PluginConfig.GetOptions(),
	}
}

func (p *protocGenGoAipPlugin) shouldApply(lib protoc.ProtoLibrary) bool {
	return protoc.HasServices(lib.Files()...)
}

func (p *protocGenGoAipPlugin) outputs(rel string, lib protoc.ProtoLibrary) []string {
	srcs := make([]string, 0)
	for _, f := range lib.Files() {
		if !f.HasServices() {
			continue
		}
		base := f.Name
		if rel != "" {
			base = path.Join(rel, base)
		}
		srcs = append(srcs, base+"_aip.go")
	}
	return srcs
}
