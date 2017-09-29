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

defmodule GoogleApi.Monitoring.V3.Model.CreateCollectdTimeSeriesRequest do
  @moduledoc """
  The CreateCollectdTimeSeries request.

  ## Attributes

  - collectdPayloads (List[CollectdPayload]): The collectd payloads representing the time series data. You must not include more than a single point for each time series, so no two payloads can have the same values for all of the fields plugin, plugin_instance, type, and type_instance. Defaults to: `null`.
  - collectdVersion (String): The version of collectd that collected the data. Example: \&quot;5.3.0-192.el6\&quot;. Defaults to: `null`.
  - resource (MonitoredResource): The monitored resource associated with the time series. Defaults to: `null`.
  """

  defstruct [
    :"collectdPayloads",
    :"collectdVersion",
    :"resource"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.CreateCollectdTimeSeriesRequest do
  import GoogleApi.Monitoring.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"collectdPayloads", :list, GoogleApi.Monitoring.V3.Model.CollectdPayload, options)
    |> deserialize(:"resource", :struct, GoogleApi.Monitoring.V3.Model.MonitoredResource, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.CreateCollectdTimeSeriesRequest do
  def encode(value, options) do
    GoogleApi.Monitoring.V3.Deserializer.serialize_non_nil(value, options)
  end
end

