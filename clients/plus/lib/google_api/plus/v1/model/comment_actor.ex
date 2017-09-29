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

defmodule GoogleApi.Plus.V1.Model.CommentActor do
  @moduledoc """
  The person who posted this comment.

  ## Attributes

  - clientSpecificActorInfo (ActivityActorClientSpecificActorInfo):  Defaults to: `null`.
  - displayName (String): The name of this actor, suitable for display. Defaults to: `null`.
  - id (String): The ID of the actor. Defaults to: `null`.
  - image (CommentActorImage):  Defaults to: `null`.
  - url (String): A link to the Person resource for this actor. Defaults to: `null`.
  - verification (ActivityActorVerification):  Defaults to: `null`.
  """

  defstruct [
    :"clientSpecificActorInfo",
    :"displayName",
    :"id",
    :"image",
    :"url",
    :"verification"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.CommentActor do
  import GoogleApi.Plus.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"clientSpecificActorInfo", :struct, GoogleApi.Plus.V1.Model.ActivityActorClientSpecificActorInfo, options)
    |> deserialize(:"image", :struct, GoogleApi.Plus.V1.Model.CommentActorImage, options)
    |> deserialize(:"verification", :struct, GoogleApi.Plus.V1.Model.ActivityActorVerification, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.CommentActor do
  def encode(value, options) do
    GoogleApi.Plus.V1.Deserializer.serialize_non_nil(value, options)
  end
end

