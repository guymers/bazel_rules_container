# Copyright 2017 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@io_bazel_rules_docker//docker:hash.bzl", _sha256 = "sha256")

def sha256(ctx, artifact):
  return _sha256(ctx, artifact)

tools = {
  "sha256": attr.label(
    default = Label("@io_bazel_rules_docker//docker:sha256"),
    cfg = "host",
    executable = True,
    allow_files = True,
  ),
}
