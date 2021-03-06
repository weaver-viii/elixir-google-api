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

defmodule GoogleApi.AppEngine.V1.Model.IdentityAwareProxy do
  @moduledoc """
  Identity-Aware Proxy

  ## Attributes

  - enabled (Boolean): Whether the serving infrastructure will authenticate and authorize all incoming requests.If true, the oauth2_client_id and oauth2_client_secret fields must be non-empty. Defaults to: `null`.
  - oauth2ClientId (String): OAuth2 client ID to use for the authentication flow. Defaults to: `null`.
  - oauth2ClientSecret (String): OAuth2 client secret to use for the authentication flow.For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2_client_secret_sha256 field.@InputOnly Defaults to: `null`.
  - oauth2ClientSecretSha256 (String): Hex-encoded SHA-256 hash of the client secret.@OutputOnly Defaults to: `null`.
  """

  defstruct [
    :"enabled",
    :"oauth2ClientId",
    :"oauth2ClientSecret",
    :"oauth2ClientSecretSha256"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.IdentityAwareProxy do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.IdentityAwareProxy do
  def encode(value, options) do
    GoogleApi.AppEngine.V1.Deserializer.serialize_non_nil(value, options)
  end
end

