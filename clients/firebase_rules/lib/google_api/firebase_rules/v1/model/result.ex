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

defmodule GoogleApi.FirebaseRules.V1.Model.Result do
  @moduledoc """
  Possible result values from the function mock invocation.

  ## Attributes

  - undefined (Empty): The result is undefined, meaning the result could not be computed. Defaults to: `null`.
  """

  defstruct [
    :"undefined"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.Result do
  import GoogleApi.FirebaseRules.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"undefined", :struct, GoogleApi.FirebaseRules.V1.Model.Empty, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.Result do
  def encode(value, options) do
    GoogleApi.FirebaseRules.V1.Deserializer.serialize_non_nil(value, options)
  end
end

