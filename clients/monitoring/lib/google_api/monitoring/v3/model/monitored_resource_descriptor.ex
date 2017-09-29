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

defmodule GoogleApi.Monitoring.V3.Model.MonitoredResourceDescriptor do
  @moduledoc """
  An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of \&quot;gce_instance\&quot; and specifies the use of the labels \&quot;instance_id\&quot; and \&quot;zone\&quot; to identify particular VM instances.Different APIs can support different monitored resource types. APIs generally provide a list method that returns the monitored resource descriptors used by the API.

  ## Attributes

  - description (String): Optional. A detailed description of the monitored resource type that might be used in documentation. Defaults to: `null`.
  - displayName (String): Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, \&quot;Google Cloud SQL Database\&quot;. Defaults to: `null`.
  - labels (List[LabelDescriptor]): Required. A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels \&quot;database_id\&quot; and \&quot;zone\&quot;. Defaults to: `null`.
  - name (String): Optional. The resource name of the monitored resource descriptor: \&quot;projects/{project_id}/monitoredResourceDescriptors/{type}\&quot; where {type} is the value of the type field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format \&quot;monitoredResourceDescriptors/{type}\&quot;. Defaults to: `null`.
  - type (String): Required. The monitored resource type. For example, the type \&quot;cloudsql_database\&quot; represents databases in Google Cloud SQL. The maximum length of this value is 256 characters. Defaults to: `null`.
  """

  defstruct [
    :"description",
    :"displayName",
    :"labels",
    :"name",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.MonitoredResourceDescriptor do
  import GoogleApi.Monitoring.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"labels", :list, GoogleApi.Monitoring.V3.Model.LabelDescriptor, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.MonitoredResourceDescriptor do
  def encode(value, options) do
    GoogleApi.Monitoring.V3.Deserializer.serialize_non_nil(value, options)
  end
end

