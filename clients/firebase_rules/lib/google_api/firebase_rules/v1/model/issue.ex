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

defmodule GoogleApi.FirebaseRules.V1.Model.Issue do
  @moduledoc """
  Issues include warnings, errors, and deprecation notices.

  ## Attributes

  - description (String): Short error description. Defaults to: `null`.
  - severity (String): The severity of the issue. Defaults to: `null`.
    - Enum - one of [SEVERITY_UNSPECIFIED, DEPRECATION, WARNING, ERROR]
  - sourcePosition (SourcePosition): Position of the issue in the &#x60;Source&#x60;. Defaults to: `null`.
  """

  defstruct [
    :"description",
    :"severity",
    :"sourcePosition"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.Issue do
  import GoogleApi.FirebaseRules.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"sourcePosition", :struct, GoogleApi.FirebaseRules.V1.Model.SourcePosition, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.Issue do
  def encode(value, options) do
    GoogleApi.FirebaseRules.V1.Deserializer.serialize_non_nil(value, options)
  end
end

