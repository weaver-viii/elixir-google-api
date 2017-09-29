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

defmodule GoogleApi.Spanner.V1.Model.AuditLogConfig do
  @moduledoc """
  Provides the configuration for logging a type of permissions. Example:      {       \&quot;audit_log_configs\&quot;: [         {           \&quot;log_type\&quot;: \&quot;DATA_READ\&quot;,           \&quot;exempted_members\&quot;: [             \&quot;user:foo@gmail.com\&quot;           ]         },         {           \&quot;log_type\&quot;: \&quot;DATA_WRITE\&quot;,         }       ]     }  This enables &#39;DATA_READ&#39; and &#39;DATA_WRITE&#39; logging, while exempting foo@gmail.com from DATA_READ logging.

  ## Attributes

  - exemptedMembers (List[String]): Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members. Defaults to: `null`.
  - logType (String): The log type that this config enables. Defaults to: `null`.
    - Enum - one of [LOG_TYPE_UNSPECIFIED, ADMIN_READ, DATA_WRITE, DATA_READ]
  """

  defstruct [
    :"exemptedMembers",
    :"logType"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.AuditLogConfig do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.AuditLogConfig do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

