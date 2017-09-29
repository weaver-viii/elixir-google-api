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

defmodule GoogleApi.Slides.V1.Model.LayoutProperties do
  @moduledoc """
  The properties of Page are only relevant for pages with page_type LAYOUT.

  ## Attributes

  - displayName (String): The human-readable name of the layout. Defaults to: `null`.
  - masterObjectId (String): The object ID of the master that this layout is based on. Defaults to: `null`.
  - name (String): The name of the layout. Defaults to: `null`.
  """

  defstruct [
    :"displayName",
    :"masterObjectId",
    :"name"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.LayoutProperties do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.LayoutProperties do
  def encode(value, options) do
    GoogleApi.Slides.V1.Deserializer.serialize_non_nil(value, options)
  end
end

