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

defmodule GoogleApi.TaskQueue.V1beta2.Model.TaskQueueAcl do
  @moduledoc """
  ACLs that are applicable to this TaskQueue object.

  ## Attributes

  - adminEmails (List[String]): Email addresses of users who are \&quot;admins\&quot; of the TaskQueue. This means they can control the queue, eg set ACLs for the queue. Defaults to: `null`.
  - consumerEmails (List[String]): Email addresses of users who can \&quot;consume\&quot; tasks from the TaskQueue. This means they can Dequeue and Delete tasks from the queue. Defaults to: `null`.
  - producerEmails (List[String]): Email addresses of users who can \&quot;produce\&quot; tasks into the TaskQueue. This means they can Insert tasks into the queue. Defaults to: `null`.
  """

  defstruct [
    :"adminEmails",
    :"consumerEmails",
    :"producerEmails"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.TaskQueue.V1beta2.Model.TaskQueueAcl do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.TaskQueue.V1beta2.Model.TaskQueueAcl do
  def encode(value, options) do
    GoogleApi.TaskQueue.V1beta2.Deserializer.serialize_non_nil(value, options)
  end
end

