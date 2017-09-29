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

defmodule GoogleApi.FirebaseRules.V1.Model.FunctionMock do
  @moduledoc """
  Mock function definition.  Mocks must refer to a function declared by the target service. The type of the function args and result will be inferred at test time. If either the arg or result values are not compatible with function type declaration, the request will be considered invalid.  More than one &#x60;FunctionMock&#x60; may be provided for a given function name so long as the &#x60;Arg&#x60; matchers are distinct. There may be only one function for a given overload where all &#x60;Arg&#x60; values are &#x60;Arg.any_value&#x60;.

  ## Attributes

  - args (List[Arg]): The list of &#x60;Arg&#x60; values to match. The order in which the arguments are provided is the order in which they must appear in the function invocation. Defaults to: `null`.
  - function (String): The name of the function.  The function name must match one provided by a service declaration. Defaults to: `null`.
  - result (Result): The mock result of the function call. Defaults to: `null`.
  """

  defstruct [
    :"args",
    :"function",
    :"result"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.FunctionMock do
  import GoogleApi.FirebaseRules.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"args", :list, GoogleApi.FirebaseRules.V1.Model.Arg, options)
    |> deserialize(:"result", :struct, GoogleApi.FirebaseRules.V1.Model.Result, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.FunctionMock do
  def encode(value, options) do
    GoogleApi.FirebaseRules.V1.Deserializer.serialize_non_nil(value, options)
  end
end

