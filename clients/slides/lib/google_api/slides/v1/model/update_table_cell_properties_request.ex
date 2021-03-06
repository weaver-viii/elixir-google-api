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

defmodule GoogleApi.Slides.V1.Model.UpdateTableCellPropertiesRequest do
  @moduledoc """
  Update the properties of a TableCell.

  ## Attributes

  - fields (String): The fields that should be updated.  At least one field must be specified. The root &#x60;tableCellProperties&#x60; is implied and should not be specified. A single &#x60;\&quot;*\&quot;&#x60; can be used as short-hand for listing every field.  For example to update the table cell background solid fill color, set &#x60;fields&#x60; to &#x60;\&quot;tableCellBackgroundFill.solidFill.color\&quot;&#x60;.  To reset a property to its default value, include its field name in the field mask but leave the field itself unset. Defaults to: `null`.
  - objectId (String): The object ID of the table. Defaults to: `null`.
  - tableCellProperties (TableCellProperties): The table cell properties to update. Defaults to: `null`.
  - tableRange (TableRange): The table range representing the subset of the table to which the updates are applied. If a table range is not specified, the updates will apply to the entire table. Defaults to: `null`.
  """

  defstruct [
    :"fields",
    :"objectId",
    :"tableCellProperties",
    :"tableRange"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.UpdateTableCellPropertiesRequest do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"tableCellProperties", :struct, GoogleApi.Slides.V1.Model.TableCellProperties, options)
    |> deserialize(:"tableRange", :struct, GoogleApi.Slides.V1.Model.TableRange, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.UpdateTableCellPropertiesRequest do
  def encode(value, options) do
    GoogleApi.Slides.V1.Deserializer.serialize_non_nil(value, options)
  end
end

