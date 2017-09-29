# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ToolResults.V1beta3.Model.ToolExecutionStep do
  @moduledoc """
  Generic tool step to be used for binaries we do not explicitly support. For example: running cp to copy artifacts from one location to another.

  ## Attributes

  - toolExecution (ToolExecution): A Tool execution.  - In response: present if set by create/update request - In create/update request: optional Defaults to: `null`.
  """

  defstruct [
    :"toolExecution"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.ToolExecutionStep do
  import GoogleApi.ToolResults.V1beta3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"toolExecution", :struct, GoogleApi.ToolResults.V1beta3.Model.ToolExecution, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.ToolExecutionStep do
  def encode(value, options) do
    GoogleApi.ToolResults.V1beta3.Deserializer.serialize_non_nil(value, options)
  end
end

