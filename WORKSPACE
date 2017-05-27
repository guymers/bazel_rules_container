workspace(name = "bazel_rules_container")

load("//container:repositories.bzl", "container_repositories")
container_repositories()

load("@io_bazel_rules_go//go:def.bzl", "go_repositories")
go_repositories()

load("//container:repositories_go.bzl", "container_repositories_go")
container_repositories_go()

# test and documentation repositories
git_repository(
    name = "io_bazel",
    remote = "https://github.com/bazelbuild/bazel.git",
    commit = "1cc2041ed3f9f4eaf16e606e2c61e59d35fd597d", # 0.5.0
)

git_repository(
    name = "io_bazel_rules_sass",
    remote = "https://github.com/bazelbuild/rules_sass.git",
    commit = "721bc03d1e670d92dae647df1af15d590adf5ce9", # 0.0.2
)
load("@io_bazel_rules_sass//sass:sass.bzl", "sass_repositories")
sass_repositories()

git_repository(
    name = "io_bazel_skydoc",
    remote = "https://github.com/bazelbuild/skydoc.git",
    commit = "10262d5d3facd451e79bb5e9a8505360bb546f42", # 0.1.3
)
load("@io_bazel_skydoc//skylark:skylark.bzl", "skydoc_repositories")
skydoc_repositories()
