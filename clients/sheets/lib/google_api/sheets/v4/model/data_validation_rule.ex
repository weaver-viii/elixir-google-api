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

defmodule GoogleApi.Sheets.V4.Model.DataValidationRule do
  @moduledoc """
  A data validation rule.

  ## Attributes

  - condition (BooleanCondition): The condition that data in the cell must match. Defaults to: `null`.
  - inputMessage (String): A message to show the user when adding data to the cell. Defaults to: `null`.
  - showCustomUi (Boolean): True if the UI should be customized based on the kind of condition. If true, \&quot;List\&quot; conditions will show a dropdown. Defaults to: `null`.
  - strict (Boolean): True if invalid data should be rejected. Defaults to: `null`.
  """

  defstruct [
    :"condition",
    :"inputMessage",
    :"showCustomUi",
    :"strict"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DataValidationRule do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"condition", :struct, GoogleApi.Sheets.V4.Model.BooleanCondition, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DataValidationRule do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end

