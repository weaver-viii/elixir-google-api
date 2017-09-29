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

defmodule GoogleApi.Vault.V1.Model.AddMatterPermissionsRequest do
  @moduledoc """
  Add an account with the permission specified. The role cannot be owner. If an account already has a role in the matter, it will be overwritten.

  ## Attributes

  - ccMe (Boolean): Only relevant if send_emails is true. True to CC requestor in the email message. False to not CC requestor. Defaults to: `null`.
  - matterPermission (MatterPermission): The MatterPermission to add. Defaults to: `null`.
  - sendEmails (Boolean): True to send notification email to the added account. False to not send notification email. Defaults to: `null`.
  """

  defstruct [
    :"ccMe",
    :"matterPermission",
    :"sendEmails"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.AddMatterPermissionsRequest do
  import GoogleApi.Vault.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"matterPermission", :struct, GoogleApi.Vault.V1.Model.MatterPermission, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.AddMatterPermissionsRequest do
  def encode(value, options) do
    GoogleApi.Vault.V1.Deserializer.serialize_non_nil(value, options)
  end
end

