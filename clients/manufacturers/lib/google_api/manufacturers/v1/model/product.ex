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

defmodule GoogleApi.Manufacturers.V1.Model.Product do
  @moduledoc """
  Product data.

  ## Attributes

  - contentLanguage (String): The content language of the product as a two-letter ISO 639-1 language code (for example, en). @OutputOnly Defaults to: `null`.
  - finalAttributes (Attributes): Final attributes of the product. The final attributes are obtained by overriding the uploaded attributes with the manually provided and deleted attributes. Google systems only process, evaluate, review, and/or use final attributes. @OutputOnly Defaults to: `null`.
  - issues (List[Issue]): A server-generated list of issues associated with the product. @OutputOnly Defaults to: `null`.
  - manuallyDeletedAttributes (List[String]): Names of the attributes of the product deleted manually via the Manufacturer Center UI. @OutputOnly Defaults to: `null`.
  - manuallyProvidedAttributes (Attributes): Attributes of the product provided manually via the Manufacturer Center UI. @OutputOnly Defaults to: `null`.
  - name (String): Name in the format &#x60;{target_country}:{content_language}:{product_id}&#x60;.  &#x60;target_country&#x60;   - The target country of the product as a CLDR territory                      code (for example, US).  &#x60;content_language&#x60; - The content language of the product as a two-letter                      ISO 639-1 language code (for example, en).  &#x60;product_id&#x60;     -   The ID of the product. For more information, see                      https://support.google.com/manufacturers/answer/6124116#id. @OutputOnly Defaults to: `null`.
  - parent (String): Parent ID in the format &#x60;accounts/{account_id}&#x60;.  &#x60;account_id&#x60; - The ID of the Manufacturer Center account. @OutputOnly Defaults to: `null`.
  - productId (String): The ID of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#id. @OutputOnly Defaults to: `null`.
  - targetCountry (String): The target country of the product as a CLDR territory code (for example, US). @OutputOnly Defaults to: `null`.
  - uploadedAttributes (Attributes): Attributes of the product uploaded via the Manufacturer Center API or via feeds. Defaults to: `null`.
  """

  defstruct [
    :"contentLanguage",
    :"finalAttributes",
    :"issues",
    :"manuallyDeletedAttributes",
    :"manuallyProvidedAttributes",
    :"name",
    :"parent",
    :"productId",
    :"targetCountry",
    :"uploadedAttributes"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Manufacturers.V1.Model.Product do
  import GoogleApi.Manufacturers.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"finalAttributes", :struct, GoogleApi.Manufacturers.V1.Model.Attributes, options)
    |> deserialize(:"issues", :list, GoogleApi.Manufacturers.V1.Model.Issue, options)
    |> deserialize(:"manuallyProvidedAttributes", :struct, GoogleApi.Manufacturers.V1.Model.Attributes, options)
    |> deserialize(:"uploadedAttributes", :struct, GoogleApi.Manufacturers.V1.Model.Attributes, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Manufacturers.V1.Model.Product do
  def encode(value, options) do
    GoogleApi.Manufacturers.V1.Deserializer.serialize_non_nil(value, options)
  end
end

