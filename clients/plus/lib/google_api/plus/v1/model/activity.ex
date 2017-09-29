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

defmodule GoogleApi.Plus.V1.Model.Activity do
  @moduledoc """
  

  ## Attributes

  - access (Acl): Identifies who has access to see this activity. Defaults to: `null`.
  - actor (ActivityActor):  Defaults to: `null`.
  - address (String): Street address where this activity occurred. Defaults to: `null`.
  - annotation (String): Additional content added by the person who shared this activity, applicable only when resharing an activity. Defaults to: `null`.
  - crosspostSource (String): If this activity is a crosspost from another system, this property specifies the ID of the original activity. Defaults to: `null`.
  - etag (String): ETag of this response for caching purposes. Defaults to: `null`.
  - geocode (String): Latitude and longitude where this activity occurred. Format is latitude followed by longitude, space separated. Defaults to: `null`.
  - id (String): The ID of this activity. Defaults to: `null`.
  - kind (String): Identifies this resource as an activity. Value: \&quot;plus#activity\&quot;. Defaults to: `null`.
  - location (Place): The location where this activity occurred. Defaults to: `null`.
  - object (ActivityObject):  Defaults to: `null`.
  - placeId (String): ID of the place where this activity occurred. Defaults to: `null`.
  - placeName (String): Name of the place where this activity occurred. Defaults to: `null`.
  - provider (ActivityProvider):  Defaults to: `null`.
  - published (DateTime): The time at which this activity was initially published. Formatted as an RFC 3339 timestamp. Defaults to: `null`.
  - radius (String): Radius, in meters, of the region where this activity occurred, centered at the latitude and longitude identified in geocode. Defaults to: `null`.
  - title (String): Title of this activity. Defaults to: `null`.
  - updated (DateTime): The time at which this activity was last updated. Formatted as an RFC 3339 timestamp. Defaults to: `null`.
  - url (String): The link to this activity. Defaults to: `null`.
  - verb (String): This activity&#39;s verb, which indicates the action that was performed. Possible values include, but are not limited to, the following values:   - \&quot;post\&quot; - Publish content to the stream.  - \&quot;share\&quot; - Reshare an activity. Defaults to: `null`.
  """

  defstruct [
    :"access",
    :"actor",
    :"address",
    :"annotation",
    :"crosspostSource",
    :"etag",
    :"geocode",
    :"id",
    :"kind",
    :"location",
    :"object",
    :"placeId",
    :"placeName",
    :"provider",
    :"published",
    :"radius",
    :"title",
    :"updated",
    :"url",
    :"verb"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.Activity do
  import GoogleApi.Plus.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"access", :struct, GoogleApi.Plus.V1.Model.Acl, options)
    |> deserialize(:"actor", :struct, GoogleApi.Plus.V1.Model.ActivityActor, options)
    |> deserialize(:"location", :struct, GoogleApi.Plus.V1.Model.Place, options)
    |> deserialize(:"object", :struct, GoogleApi.Plus.V1.Model.ActivityObject, options)
    |> deserialize(:"provider", :struct, GoogleApi.Plus.V1.Model.ActivityProvider, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.Activity do
  def encode(value, options) do
    GoogleApi.Plus.V1.Deserializer.serialize_non_nil(value, options)
  end
end

