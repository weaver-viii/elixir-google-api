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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.Tier do
  @moduledoc """
  A Google Cloud SQL service tier resource.

  ## Attributes

  - DiskQuota (String): The maximum disk size of this tier in bytes. Defaults to: `null`.
  - RAM (String): The maximum RAM usage of this tier in bytes. Defaults to: `null`.
  - kind (String): This is always sql#tier. Defaults to: `null`.
  - region (List[String]): The applicable regions for this tier. Defaults to: `null`.
  - tier (String): An identifier for the service tier, for example D1, D2 etc. For related information, see Pricing. Defaults to: `null`.
  """

  defstruct [
    :"DiskQuota",
    :"RAM",
    :"kind",
    :"region",
    :"tier"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Tier do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Tier do
  def encode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Deserializer.serialize_non_nil(value, options)
  end
end

