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

defmodule GoogleApi.Genomics.V1.Model.Program do
  @moduledoc """
  

  ## Attributes

  - commandLine (String): The command line used to run this program. Defaults to: `null`.
  - id (String): The user specified locally unique ID of the program. Used along with &#x60;prevProgramId&#x60; to define an ordering between programs. Defaults to: `null`.
  - name (String): The display name of the program. This is typically the colloquial name of the tool used, for example &#39;bwa&#39; or &#39;picard&#39;. Defaults to: `null`.
  - prevProgramId (String): The ID of the program run before this one. Defaults to: `null`.
  - version (String): The version of the program run. Defaults to: `null`.
  """

  defstruct [
    :"commandLine",
    :"id",
    :"name",
    :"prevProgramId",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.Program do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.Program do
  def encode(value, options) do
    GoogleApi.Genomics.V1.Deserializer.serialize_non_nil(value, options)
  end
end

