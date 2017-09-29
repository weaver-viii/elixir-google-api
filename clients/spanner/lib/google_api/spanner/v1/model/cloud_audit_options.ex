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

defmodule GoogleApi.Spanner.V1.Model.CloudAuditOptions do
  @moduledoc """
  Write a Cloud Audit log

  ## Attributes

  - authorizationLoggingOptions (AuthorizationLoggingOptions): Information used by the Cloud Audit Logging pipeline. Defaults to: `null`.
  - logName (String): The log_name to populate in the Cloud Audit Record. Defaults to: `null`.
    - Enum - one of [UNSPECIFIED_LOG_NAME, ADMIN_ACTIVITY, DATA_ACCESS]
  """

  defstruct [
    :"authorizationLoggingOptions",
    :"logName"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.CloudAuditOptions do
  import GoogleApi.Spanner.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"authorizationLoggingOptions", :struct, GoogleApi.Spanner.V1.Model.AuthorizationLoggingOptions, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.CloudAuditOptions do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

