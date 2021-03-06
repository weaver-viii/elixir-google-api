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

defmodule GoogleApi.Sheets.V4.Model.PieChartSpec do
  @moduledoc """
  A &lt;a href&#x3D;\&quot;/chart/interactive/docs/gallery/piechart\&quot;&gt;pie chart&lt;/a&gt;.

  ## Attributes

  - domain (ChartData): The data that covers the domain of the pie chart. Defaults to: `null`.
  - legendPosition (String): Where the legend of the pie chart should be drawn. Defaults to: `null`.
    - Enum - one of [PIE_CHART_LEGEND_POSITION_UNSPECIFIED, BOTTOM_LEGEND, LEFT_LEGEND, RIGHT_LEGEND, TOP_LEGEND, NO_LEGEND, LABELED_LEGEND]
  - pieHole (Float): The size of the hole in the pie chart. Defaults to: `null`.
  - series (ChartData): The data that covers the one and only series of the pie chart. Defaults to: `null`.
  - threeDimensional (Boolean): True if the pie is three dimensional. Defaults to: `null`.
  """

  defstruct [
    :"domain",
    :"legendPosition",
    :"pieHole",
    :"series",
    :"threeDimensional"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.PieChartSpec do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"domain", :struct, GoogleApi.Sheets.V4.Model.ChartData, options)
    |> deserialize(:"series", :struct, GoogleApi.Sheets.V4.Model.ChartData, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.PieChartSpec do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end

