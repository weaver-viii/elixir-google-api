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

defmodule GoogleApi.Sheets.V4.Model.GradientRule do
  @moduledoc """
  A rule that applies a gradient color scale format, based on the interpolation points listed. The format of a cell will vary based on its contents as compared to the values of the interpolation points.

  ## Attributes

  - maxpoint (InterpolationPoint): The final interpolation point. Defaults to: `null`.
  - midpoint (InterpolationPoint): An optional midway interpolation point. Defaults to: `null`.
  - minpoint (InterpolationPoint): The starting interpolation point. Defaults to: `null`.
  """

  defstruct [
    :"maxpoint",
    :"midpoint",
    :"minpoint"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.GradientRule do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"maxpoint", :struct, GoogleApi.Sheets.V4.Model.InterpolationPoint, options)
    |> deserialize(:"midpoint", :struct, GoogleApi.Sheets.V4.Model.InterpolationPoint, options)
    |> deserialize(:"minpoint", :struct, GoogleApi.Sheets.V4.Model.InterpolationPoint, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.GradientRule do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end

