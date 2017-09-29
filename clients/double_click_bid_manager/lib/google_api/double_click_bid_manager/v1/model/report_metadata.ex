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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.ReportMetadata do
  @moduledoc """
  Report metadata.

  ## Attributes

  - googleCloudStoragePath (String): The path to the location in Google Cloud Storage where the report is stored. Defaults to: `null`.
  - reportDataEndTimeMs (String): The ending time for the data that is shown in the report. Defaults to: `null`.
  - reportDataStartTimeMs (String): The starting time for the data that is shown in the report. Defaults to: `null`.
  - status (ReportStatus): Report status. Defaults to: `null`.
  """

  defstruct [
    :"googleCloudStoragePath",
    :"reportDataEndTimeMs",
    :"reportDataStartTimeMs",
    :"status"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.ReportMetadata do
  import GoogleApi.DoubleClickBidManager.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"status", :struct, GoogleApi.DoubleClickBidManager.V1.Model.ReportStatus, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.ReportMetadata do
  def encode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Deserializer.serialize_non_nil(value, options)
  end
end

