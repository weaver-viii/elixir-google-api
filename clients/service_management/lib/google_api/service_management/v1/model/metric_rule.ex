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

defmodule GoogleApi.ServiceManagement.V1.Model.MetricRule do
  @moduledoc """
  Bind API methods to metrics. Binding a method to a metric causes that metric&#39;s configured quota behaviors to apply to the method call.

  ## Attributes

  - metricCosts (Map[String, String]): Metrics to update when the selected methods are called, and the associated cost applied to each metric.  The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative. Defaults to: `null`.
  - selector (String): Selects the methods to which this rule applies.  Refer to selector for syntax details. Defaults to: `null`.
  """

  defstruct [
    :"metricCosts",
    :"selector"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.MetricRule do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.MetricRule do
  def encode(value, options) do
    GoogleApi.ServiceManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

