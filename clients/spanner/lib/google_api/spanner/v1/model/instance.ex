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

defmodule GoogleApi.Spanner.V1.Model.Instance do
  @moduledoc """
  An isolated set of Cloud Spanner resources on which databases can be hosted.

  ## Attributes

  - config (String): Required. The name of the instance&#39;s configuration. Values are of the form &#x60;projects/&lt;project&gt;/instanceConfigs/&lt;configuration&gt;&#x60;. See also InstanceConfig and ListInstanceConfigs. Defaults to: `null`.
  - displayName (String): Required. The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length. Defaults to: `null`.
  - labels (Map[String, String]): Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer&#39;s organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.).   * Label keys must be between 1 and 63 characters long and must conform to    the following regular expression: &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60;.  * Label values must be between 0 and 63 characters long and must conform    to the regular expression &#x60;([a-z]([-a-z0-9]*[a-z0-9])?)?&#x60;.  * No more than 64 labels can be associated with a given resource.  See https://goo.gl/xmQnxf for more information on and examples of labels.  If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn&#39;t rely upon specific characters being disallowed.  For example, representing labels as the string:  name + \&quot;_\&quot; + value  would prove problematic if we were to allow \&quot;_\&quot; in a future release. Defaults to: `null`.
  - name (String): Required. A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form &#x60;projects/&lt;project&gt;/instances/a-z*[a-z0-9]&#x60;. The final segment of the name must be between 6 and 30 characters in length. Defaults to: `null`.
  - nodeCount (Integer): Required. The number of nodes allocated to this instance. This may be zero in API responses for instances that are not yet in state &#x60;READY&#x60;.  Each Spanner node can provide up to 10,000 QPS of reads or 2000 QPS of writes (writing single rows at 1KB data per row), and 2 TiB storage.  For optimal performance, we recommend provisioning enough nodes to keep overall CPU utilization under 75%.  A minimum of 3 nodes is recommended for production environments.  This minimum is required for SLAs to apply to your instance.  Note that Cloud Spanner performance is highly dependent on workload, schema design, and dataset characteristics. The performance numbers above are estimates, and assume [best practices](https://cloud.google.com/spanner/docs/bulk-loading) are followed. Defaults to: `null`.
  - state (String): Output only. The current instance state. For CreateInstance, the state must be either omitted or set to &#x60;CREATING&#x60;. For UpdateInstance, the state must be either omitted or set to &#x60;READY&#x60;. Defaults to: `null`.
    - Enum - one of [STATE_UNSPECIFIED, CREATING, READY]
  """

  defstruct [
    :"config",
    :"displayName",
    :"labels",
    :"name",
    :"nodeCount",
    :"state"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Instance do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

