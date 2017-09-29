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

defmodule GoogleApi.DNS.V1.Model.ResourceRecordSet do
  @moduledoc """
  A unit of data that will be returned by the DNS servers.

  ## Attributes

  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;dns#resourceRecordSet\&quot;. Defaults to: `null`.
  - name (String): For example, www.example.com. Defaults to: `null`.
  - rrdatas (List[String]): As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1). Defaults to: `null`.
  - ttl (Integer): Number of seconds that this ResourceRecordSet can be cached by resolvers. Defaults to: `null`.
  - type (String): The identifier of a supported record type, for example, A, AAAA, MX, TXT, and so on. Defaults to: `null`.
  """

  defstruct [
    :"kind",
    :"name",
    :"rrdatas",
    :"ttl",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.ResourceRecordSet do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.ResourceRecordSet do
  def encode(value, options) do
    GoogleApi.DNS.V1.Deserializer.serialize_non_nil(value, options)
  end
end

