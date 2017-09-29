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

defmodule GoogleApi.UrlShortener.V1.Model.UrlHistory do
  @moduledoc """
  

  ## Attributes

  - items (List[Url]): A list of URL resources. Defaults to: `null`.
  - itemsPerPage (Integer): Number of items returned with each full \&quot;page\&quot; of results. Note that the last page could have fewer items than the \&quot;itemsPerPage\&quot; value. Defaults to: `null`.
  - kind (String): The fixed string \&quot;urlshortener#urlHistory\&quot;. Defaults to: `null`.
  - nextPageToken (String): A token to provide to get the next page of results. Defaults to: `null`.
  - totalItems (Integer): Total number of short URLs associated with this user (may be approximate). Defaults to: `null`.
  """

  defstruct [
    :"items",
    :"itemsPerPage",
    :"kind",
    :"nextPageToken",
    :"totalItems"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.UrlShortener.V1.Model.UrlHistory do
  import GoogleApi.UrlShortener.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"items", :list, GoogleApi.UrlShortener.V1.Model.Url, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.UrlShortener.V1.Model.UrlHistory do
  def encode(value, options) do
    GoogleApi.UrlShortener.V1.Deserializer.serialize_non_nil(value, options)
  end
end

