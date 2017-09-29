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

defmodule GoogleApi.Slides.V1.Model.InsertTableRowsRequest do
  @moduledoc """
  Inserts rows into a table.

  ## Attributes

  - cellLocation (TableCellLocation): The reference table cell location from which rows will be inserted.  A new row will be inserted above (or below) the row where the reference cell is. If the reference cell is a merged cell, a new row will be inserted above (or below) the merged cell. Defaults to: `null`.
  - insertBelow (Boolean): Whether to insert new rows below the reference cell location.  - &#x60;True&#x60;: insert below the cell. - &#x60;False&#x60;: insert above the cell. Defaults to: `null`.
  - number (Integer): The number of rows to be inserted. Maximum 20 per request. Defaults to: `null`.
  - tableObjectId (String): The table to insert rows into. Defaults to: `null`.
  """

  defstruct [
    :"cellLocation",
    :"insertBelow",
    :"number",
    :"tableObjectId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.InsertTableRowsRequest do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"cellLocation", :struct, GoogleApi.Slides.V1.Model.TableCellLocation, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.InsertTableRowsRequest do
  def encode(value, options) do
    GoogleApi.Slides.V1.Deserializer.serialize_non_nil(value, options)
  end
end

