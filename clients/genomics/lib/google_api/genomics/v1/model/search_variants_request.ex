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

defmodule GoogleApi.Genomics.V1.Model.SearchVariantsRequest do
  @moduledoc """
  The variant search request.

  ## Attributes

  - callSetIds (List[String]): Only return variant calls which belong to call sets with these ids. Leaving this blank returns all variant calls. If a variant has no calls belonging to any of these call sets, it won&#39;t be returned at all. Defaults to: `null`.
  - end (String): The end of the window, 0-based exclusive. If unspecified or 0, defaults to the length of the reference. Defaults to: `null`.
  - maxCalls (Integer): The maximum number of calls to return in a single page. Note that this limit may be exceeded in the event that a matching variant contains more calls than the requested maximum. If unspecified, defaults to 5000. The maximum value is 10000. Defaults to: `null`.
  - pageSize (Integer): The maximum number of variants to return in a single page. If unspecified, defaults to 5000. The maximum value is 10000. Defaults to: `null`.
  - pageToken (String): The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of &#x60;nextPageToken&#x60; from the previous response. Defaults to: `null`.
  - referenceName (String): Required. Only return variants in this reference sequence. Defaults to: `null`.
  - start (String): The beginning of the window (0-based, inclusive) for which overlapping variants should be returned. If unspecified, defaults to 0. Defaults to: `null`.
  - variantName (String): Only return variants which have exactly this name. Defaults to: `null`.
  - variantSetIds (List[String]): At most one variant set ID must be provided. Only variants from this variant set will be returned. If omitted, a call set id must be included in the request. Defaults to: `null`.
  """

  defstruct [
    :"callSetIds",
    :"end",
    :"maxCalls",
    :"pageSize",
    :"pageToken",
    :"referenceName",
    :"start",
    :"variantName",
    :"variantSetIds"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.SearchVariantsRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.SearchVariantsRequest do
  def encode(value, options) do
    GoogleApi.Genomics.V1.Deserializer.serialize_non_nil(value, options)
  end
end

