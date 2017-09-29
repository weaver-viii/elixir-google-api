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

defmodule GoogleApi.ServiceManagement.V1.Model.DisableServiceRequest do
  @moduledoc """
  Request message for DisableService method.

  ## Attributes

  - consumerId (String): The identity of consumer resource which service disablement will be applied to.  The Google Service Management implementation accepts the following forms: - \&quot;project:&lt;project_id&gt;\&quot;  Note: this is made compatible with google.api.servicecontrol.v1.Operation.consumer_id. Defaults to: `null`.
  """

  defstruct [
    :"consumerId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.DisableServiceRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.DisableServiceRequest do
  def encode(value, options) do
    GoogleApi.ServiceManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

