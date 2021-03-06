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

defmodule GoogleApi.Content.V2.Model.OrdersCreateTestOrderRequest do
  @moduledoc """
  

  ## Attributes

  - templateName (String): The test order template to use. Specify as an alternative to testOrder as a shortcut for retrieving a template and then creating an order using that template. Defaults to: `null`.
  - testOrder (TestOrder): The test order to create. Defaults to: `null`.
  """

  defstruct [
    :"templateName",
    :"testOrder"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrdersCreateTestOrderRequest do
  import GoogleApi.Content.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"testOrder", :struct, GoogleApi.Content.V2.Model.TestOrder, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrdersCreateTestOrderRequest do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

