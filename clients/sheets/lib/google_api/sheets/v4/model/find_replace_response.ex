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

defmodule GoogleApi.Sheets.V4.Model.FindReplaceResponse do
  @moduledoc """
  The result of the find/replace.

  ## Attributes

  - formulasChanged (Integer): The number of formula cells changed. Defaults to: `null`.
  - occurrencesChanged (Integer): The number of occurrences (possibly multiple within a cell) changed. For example, if replacing &#x60;\&quot;e\&quot;&#x60; with &#x60;\&quot;o\&quot;&#x60; in &#x60;\&quot;Google Sheets\&quot;&#x60;, this would be &#x60;\&quot;3\&quot;&#x60; because &#x60;\&quot;Google Sheets\&quot;&#x60; -&gt; &#x60;\&quot;Googlo Shoots\&quot;&#x60;. Defaults to: `null`.
  - rowsChanged (Integer): The number of rows changed. Defaults to: `null`.
  - sheetsChanged (Integer): The number of sheets changed. Defaults to: `null`.
  - valuesChanged (Integer): The number of non-formula cells changed. Defaults to: `null`.
  """

  defstruct [
    :"formulasChanged",
    :"occurrencesChanged",
    :"rowsChanged",
    :"sheetsChanged",
    :"valuesChanged"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.FindReplaceResponse do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.FindReplaceResponse do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end

