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

defmodule GoogleApi.ServiceUser.V1.Model.Field do
  @moduledoc """
  A single field of a message type.

  ## Attributes

  - cardinality (String): The field cardinality. Defaults to: `null`.
    - Enum - one of [CARDINALITY_UNKNOWN, CARDINALITY_OPTIONAL, CARDINALITY_REQUIRED, CARDINALITY_REPEATED]
  - defaultValue (String): The string value of the default value of this field. Proto2 syntax only. Defaults to: `null`.
  - jsonName (String): The field JSON name. Defaults to: `null`.
  - kind (String): The field type. Defaults to: `null`.
    - Enum - one of [TYPE_UNKNOWN, TYPE_DOUBLE, TYPE_FLOAT, TYPE_INT64, TYPE_UINT64, TYPE_INT32, TYPE_FIXED64, TYPE_FIXED32, TYPE_BOOL, TYPE_STRING, TYPE_GROUP, TYPE_MESSAGE, TYPE_BYTES, TYPE_UINT32, TYPE_ENUM, TYPE_SFIXED32, TYPE_SFIXED64, TYPE_SINT32, TYPE_SINT64]
  - name (String): The field name. Defaults to: `null`.
  - number (Integer): The field number. Defaults to: `null`.
  - oneofIndex (Integer): The index of the field type in &#x60;Type.oneofs&#x60;, for message or enumeration types. The first type has index 1; zero means the type is not in the list. Defaults to: `null`.
  - options (List[Option]): The protocol buffer options. Defaults to: `null`.
  - packed (Boolean): Whether to use alternative packed wire representation. Defaults to: `null`.
  - typeUrl (String): The field type URL, without the scheme, for message or enumeration types. Example: &#x60;\&quot;type.googleapis.com/google.protobuf.Timestamp\&quot;&#x60;. Defaults to: `null`.
  """

  defstruct [
    :"cardinality",
    :"defaultValue",
    :"jsonName",
    :"kind",
    :"name",
    :"number",
    :"oneofIndex",
    :"options",
    :"packed",
    :"typeUrl"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Field do
  import GoogleApi.ServiceUser.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"options", :list, GoogleApi.ServiceUser.V1.Model.Option, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Field do
  def encode(value, options) do
    GoogleApi.ServiceUser.V1.Deserializer.serialize_non_nil(value, options)
  end
end

