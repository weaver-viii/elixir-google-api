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

defmodule GoogleApi.Monitoring.V3.Model.TypedValue do
  @moduledoc """
  A single strongly-typed value.

  ## Attributes

  - boolValue (Boolean): A Boolean value: true or false. Defaults to: `null`.
  - distributionValue (Distribution): A distribution value. Defaults to: `null`.
  - doubleValue (Float): A 64-bit double-precision floating-point number. Its magnitude is approximately &amp;plusmn;10&lt;sup&gt;&amp;plusmn;300&lt;/sup&gt; and it has 16 significant digits of precision. Defaults to: `null`.
  - int64Value (String): A 64-bit integer. Its range is approximately &amp;plusmn;9.2x10&lt;sup&gt;18&lt;/sup&gt;. Defaults to: `null`.
  - stringValue (String): A variable-length string value. Defaults to: `null`.
  """

  defstruct [
    :"boolValue",
    :"distributionValue",
    :"doubleValue",
    :"int64Value",
    :"stringValue"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.TypedValue do
  import GoogleApi.Monitoring.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"distributionValue", :struct, GoogleApi.Monitoring.V3.Model.Distribution, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.TypedValue do
  def encode(value, options) do
    GoogleApi.Monitoring.V3.Deserializer.serialize_non_nil(value, options)
  end
end

