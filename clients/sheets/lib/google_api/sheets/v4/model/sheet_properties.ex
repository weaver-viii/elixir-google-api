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

defmodule GoogleApi.Sheets.V4.Model.SheetProperties do
  @moduledoc """
  Properties of a sheet.

  ## Attributes

  - gridProperties (GridProperties): Additional properties of the sheet if this sheet is a grid. (If the sheet is an object sheet, containing a chart or image, then this field will be absent.) When writing it is an error to set any grid properties on non-grid sheets. Defaults to: `null`.
  - hidden (Boolean): True if the sheet is hidden in the UI, false if it&#39;s visible. Defaults to: `null`.
  - index (Integer): The index of the sheet within the spreadsheet. When adding or updating sheet properties, if this field is excluded then the sheet will be added or moved to the end of the sheet list. When updating sheet indices or inserting sheets, movement is considered in \&quot;before the move\&quot; indexes. For example, if there were 3 sheets (S1, S2, S3) in order to move S1 ahead of S2 the index would have to be set to 2. A sheet index update request will be ignored if the requested index is identical to the sheets current index or if the requested new index is equal to the current sheet index + 1. Defaults to: `null`.
  - rightToLeft (Boolean): True if the sheet is an RTL sheet instead of an LTR sheet. Defaults to: `null`.
  - sheetId (Integer): The ID of the sheet. Must be non-negative. This field cannot be changed once set. Defaults to: `null`.
  - sheetType (String): The type of sheet. Defaults to GRID. This field cannot be changed once set. Defaults to: `null`.
    - Enum - one of [SHEET_TYPE_UNSPECIFIED, GRID, OBJECT]
  - tabColor (Color): The color of the tab in the UI. Defaults to: `null`.
  - title (String): The name of the sheet. Defaults to: `null`.
  """

  defstruct [
    :"gridProperties",
    :"hidden",
    :"index",
    :"rightToLeft",
    :"sheetId",
    :"sheetType",
    :"tabColor",
    :"title"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.SheetProperties do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"gridProperties", :struct, GoogleApi.Sheets.V4.Model.GridProperties, options)
    |> deserialize(:"tabColor", :struct, GoogleApi.Sheets.V4.Model.Color, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.SheetProperties do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end

