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

defmodule GoogleApi.ToolResults.V1beta3.Model.PerfMetricsSummary do
  @moduledoc """
  A summary of perf metrics collected and performance environment info

  ## Attributes

  - appStartTime (AppStartTime):  Defaults to: `null`.
  - executionId (String): A tool results execution ID. Defaults to: `null`.
  - historyId (String): A tool results history ID. Defaults to: `null`.
  - perfEnvironment (PerfEnvironment): Describes the environment in which the performance metrics were collected Defaults to: `null`.
  - perfMetrics (List[String]): Set of resource collected Defaults to: `null`.
    - Enum - one of 
  - projectId (String): The cloud project Defaults to: `null`.
  - stepId (String): A tool results step ID. Defaults to: `null`.
  """

  defstruct [
    :"appStartTime",
    :"executionId",
    :"historyId",
    :"perfEnvironment",
    :"perfMetrics",
    :"projectId",
    :"stepId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.PerfMetricsSummary do
  import GoogleApi.ToolResults.V1beta3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"appStartTime", :struct, GoogleApi.ToolResults.V1beta3.Model.AppStartTime, options)
    |> deserialize(:"perfEnvironment", :struct, GoogleApi.ToolResults.V1beta3.Model.PerfEnvironment, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.PerfMetricsSummary do
  def encode(value, options) do
    GoogleApi.ToolResults.V1beta3.Deserializer.serialize_non_nil(value, options)
  end
end

