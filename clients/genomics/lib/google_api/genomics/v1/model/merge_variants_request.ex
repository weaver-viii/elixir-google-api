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

defmodule GoogleApi.Genomics.V1.Model.MergeVariantsRequest do
  @moduledoc """
  

  ## Attributes

  - infoMergeConfig (Map[String, String]): A mapping between info field keys and the InfoMergeOperations to be performed on them. Defaults to: `null`.
    - Enum - one of 
  - variantSetId (String): The destination variant set. Defaults to: `null`.
  - variants (List[Variant]): The variants to be merged with existing variants. Defaults to: `null`.
  """

  defstruct [
    :"infoMergeConfig",
    :"variantSetId",
    :"variants"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.MergeVariantsRequest do
  import GoogleApi.Genomics.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"variants", :list, GoogleApi.Genomics.V1.Model.Variant, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.MergeVariantsRequest do
  def encode(value, options) do
    GoogleApi.Genomics.V1.Deserializer.serialize_non_nil(value, options)
  end
end

