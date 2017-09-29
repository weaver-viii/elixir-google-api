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

defmodule GoogleApi.SearchConsole.V1.Model.Image do
  @moduledoc """
  Describe image data.

  ## Attributes

  - data (String): Image data in format determined by the mime type. Currently, the format will always be \&quot;image/png\&quot;, but this might change in the future. Defaults to: `null`.
  - mimeType (String): The mime-type of the image data. Defaults to: `null`.
  """

  defstruct [
    :"data",
    :"mimeType"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.SearchConsole.V1.Model.Image do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.SearchConsole.V1.Model.Image do
  def encode(value, options) do
    GoogleApi.SearchConsole.V1.Deserializer.serialize_non_nil(value, options)
  end
end

