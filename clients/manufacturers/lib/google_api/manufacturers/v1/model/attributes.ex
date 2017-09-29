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

defmodule GoogleApi.Manufacturers.V1.Model.Attributes do
  @moduledoc """
  Attributes of the product. For more information, see https://support.google.com/manufacturers/answer/6124116.

  ## Attributes

  - additionalImageLink (List[Image]): The additional images of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#addlimage. Defaults to: `null`.
  - ageGroup (String): The target age group of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#agegroup. Defaults to: `null`.
  - brand (String): The brand name of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#brand. Defaults to: `null`.
  - capacity (Capacity): The capacity of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#capacity. Defaults to: `null`.
  - color (String): The color of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#color. Defaults to: `null`.
  - count (Count): The count of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#count. Defaults to: `null`.
  - description (String): The description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#description. Defaults to: `null`.
  - disclosureDate (String): The disclosure date of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#disclosure. Defaults to: `null`.
  - featureDescription (List[FeatureDescription]): The rich format description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#featuredesc. Defaults to: `null`.
  - flavor (String): The flavor of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#flavor. Defaults to: `null`.
  - format (String): The format of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#format. Defaults to: `null`.
  - gender (String): The target gender of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#gender. Defaults to: `null`.
  - gtin (List[String]): The Global Trade Item Number (GTIN) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#gtin. Defaults to: `null`.
  - imageLink (Image): The image of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#image. Defaults to: `null`.
  - itemGroupId (String): The item group id of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#itemgroupid. Defaults to: `null`.
  - material (String): The material of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#material. Defaults to: `null`.
  - mpn (String): The Manufacturer Part Number (MPN) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#mpn. Defaults to: `null`.
  - pattern (String): The pattern of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#pattern. Defaults to: `null`.
  - productDetail (List[ProductDetail]): The details of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productdetail. Defaults to: `null`.
  - productLine (String): The name of the group of products related to the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productline. Defaults to: `null`.
  - productName (String): The canonical name of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productname. Defaults to: `null`.
  - productPageUrl (String): The URL of the detail page of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productpage. Defaults to: `null`.
  - productType (List[String]): The category of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#producttype. Defaults to: `null`.
  - releaseDate (String): The release date of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#release. Defaults to: `null`.
  - scent (String): The scent of the product. For more information, see  https://support.google.com/manufacturers/answer/6124116#scent. Defaults to: `null`.
  - size (String): The size of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#size. Defaults to: `null`.
  - sizeSystem (String): The size system of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#sizesystem. Defaults to: `null`.
  - sizeType (String): The size type of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#sizetype. Defaults to: `null`.
  - suggestedRetailPrice (Price): The suggested retail price (MSRP) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#price. Defaults to: `null`.
  - targetAccountId (String): The target account id. Should only be used in the accounts of the data partners. Defaults to: `null`.
  - theme (String): The theme of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#theme. Defaults to: `null`.
  - title (String): The title of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#title. Defaults to: `null`.
  - videoLink (List[String]): The videos of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#video. Defaults to: `null`.
  """

  defstruct [
    :"additionalImageLink",
    :"ageGroup",
    :"brand",
    :"capacity",
    :"color",
    :"count",
    :"description",
    :"disclosureDate",
    :"featureDescription",
    :"flavor",
    :"format",
    :"gender",
    :"gtin",
    :"imageLink",
    :"itemGroupId",
    :"material",
    :"mpn",
    :"pattern",
    :"productDetail",
    :"productLine",
    :"productName",
    :"productPageUrl",
    :"productType",
    :"releaseDate",
    :"scent",
    :"size",
    :"sizeSystem",
    :"sizeType",
    :"suggestedRetailPrice",
    :"targetAccountId",
    :"theme",
    :"title",
    :"videoLink"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Manufacturers.V1.Model.Attributes do
  import GoogleApi.Manufacturers.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"additionalImageLink", :list, GoogleApi.Manufacturers.V1.Model.Image, options)
    |> deserialize(:"capacity", :struct, GoogleApi.Manufacturers.V1.Model.Capacity, options)
    |> deserialize(:"count", :struct, GoogleApi.Manufacturers.V1.Model.Count, options)
    |> deserialize(:"featureDescription", :list, GoogleApi.Manufacturers.V1.Model.FeatureDescription, options)
    |> deserialize(:"imageLink", :struct, GoogleApi.Manufacturers.V1.Model.Image, options)
    |> deserialize(:"productDetail", :list, GoogleApi.Manufacturers.V1.Model.ProductDetail, options)
    |> deserialize(:"suggestedRetailPrice", :struct, GoogleApi.Manufacturers.V1.Model.Price, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Manufacturers.V1.Model.Attributes do
  def encode(value, options) do
    GoogleApi.Manufacturers.V1.Deserializer.serialize_non_nil(value, options)
  end
end

