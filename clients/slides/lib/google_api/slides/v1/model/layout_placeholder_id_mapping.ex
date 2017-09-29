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

defmodule GoogleApi.Slides.V1.Model.LayoutPlaceholderIdMapping do
  @moduledoc """
  The user-specified ID mapping for a placeholder that will be created on a slide from a specified layout.

  ## Attributes

  - layoutPlaceholder (Placeholder): The placeholder on a layout that will be applied to a slide. Only type and index are needed. For example, a predefined &#x60;TITLE_AND_BODY&#x60; layout may usually have a TITLE placeholder with index 0 and a BODY placeholder with index 0. Defaults to: `null`.
  - layoutPlaceholderObjectId (String): The object ID of the placeholder on a layout that will be applied to a slide. Defaults to: `null`.
  - objectId (String): A user-supplied object ID for the placeholder identified above that to be created onto a slide.  If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex &#x60;[a-zA-Z0-9_]&#x60;); remaining characters may include those as well as a hyphen or colon (matches regex &#x60;[a-zA-Z0-9_-:]&#x60;). The length of the ID must not be less than 5 or greater than 50.  If you don&#39;t specify an ID, a unique one is generated. Defaults to: `null`.
  """

  defstruct [
    :"layoutPlaceholder",
    :"layoutPlaceholderObjectId",
    :"objectId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.LayoutPlaceholderIdMapping do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"layoutPlaceholder", :struct, GoogleApi.Slides.V1.Model.Placeholder, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.LayoutPlaceholderIdMapping do
  def encode(value, options) do
    GoogleApi.Slides.V1.Deserializer.serialize_non_nil(value, options)
  end
end

