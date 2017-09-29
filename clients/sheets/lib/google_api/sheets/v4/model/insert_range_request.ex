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

defmodule GoogleApi.Sheets.V4.Model.InsertRangeRequest do
  @moduledoc """
  Inserts cells into a range, shifting the existing cells over or down.

  ## Attributes

  - range (GridRange): The range to insert new cells into. Defaults to: `null`.
  - shiftDimension (String): The dimension which will be shifted when inserting cells. If ROWS, existing cells will be shifted down. If COLUMNS, existing cells will be shifted right. Defaults to: `null`.
    - Enum - one of [DIMENSION_UNSPECIFIED, ROWS, COLUMNS]
  """

  defstruct [
    :"range",
    :"shiftDimension"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.InsertRangeRequest do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"range", :struct, GoogleApi.Sheets.V4.Model.GridRange, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.InsertRangeRequest do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end

