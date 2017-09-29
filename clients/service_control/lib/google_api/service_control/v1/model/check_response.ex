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

defmodule GoogleApi.ServiceControl.V1.Model.CheckResponse do
  @moduledoc """
  Response message for the Check method.

  ## Attributes

  - checkErrors (List[CheckError]): Indicate the decision of the check.  If no check errors are present, the service should process the operation. Otherwise the service should use the list of errors to determine the appropriate action. Defaults to: `null`.
  - checkInfo (CheckInfo): Feedback data returned from the server during processing a Check request. Defaults to: `null`.
  - operationId (String): The same operation_id value used in the CheckRequest. Used for logging and diagnostics purposes. Defaults to: `null`.
  - quotaInfo (QuotaInfo): Quota information for the check request associated with this response.  Defaults to: `null`.
  - serviceConfigId (String): The actual config id used to process the request. Defaults to: `null`.
  """

  defstruct [
    :"checkErrors",
    :"checkInfo",
    :"operationId",
    :"quotaInfo",
    :"serviceConfigId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.CheckResponse do
  import GoogleApi.ServiceControl.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"checkErrors", :list, GoogleApi.ServiceControl.V1.Model.CheckError, options)
    |> deserialize(:"checkInfo", :struct, GoogleApi.ServiceControl.V1.Model.CheckInfo, options)
    |> deserialize(:"quotaInfo", :struct, GoogleApi.ServiceControl.V1.Model.QuotaInfo, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.CheckResponse do
  def encode(value, options) do
    GoogleApi.ServiceControl.V1.Deserializer.serialize_non_nil(value, options)
  end
end

