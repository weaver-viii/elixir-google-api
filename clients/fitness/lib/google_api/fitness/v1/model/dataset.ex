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

defmodule GoogleApi.Fitness.V1.Model.Dataset do
  @moduledoc """
  A dataset represents a projection container for data points. They do not carry any info of their own. Datasets represent a set of data points from a particular data source. A data point can be found in more than one dataset.

  ## Attributes

  - dataSourceId (String): The data stream ID of the data source that created the points in this dataset. Defaults to: `null`.
  - maxEndTimeNs (String): The largest end time of all data points in this possibly partial representation of the dataset. Time is in nanoseconds from epoch. This should also match the first part of the dataset identifier. Defaults to: `null`.
  - minStartTimeNs (String): The smallest start time of all data points in this possibly partial representation of the dataset. Time is in nanoseconds from epoch. This should also match the first part of the dataset identifier. Defaults to: `null`.
  - nextPageToken (String): This token will be set when a dataset is received in response to a GET request and the dataset is too large to be included in a single response. Provide this value in a subsequent GET request to return the next page of data points within this dataset. Defaults to: `null`.
  - point (List[DataPoint]): A partial list of data points contained in the dataset, ordered by largest endTimeNanos first. This list is considered complete when retrieving a small dataset and partial when patching a dataset or retrieving a dataset that is too large to include in a single response. Defaults to: `null`.
  """

  defstruct [
    :"dataSourceId",
    :"maxEndTimeNs",
    :"minStartTimeNs",
    :"nextPageToken",
    :"point"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.Dataset do
  import GoogleApi.Fitness.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"point", :list, GoogleApi.Fitness.V1.Model.DataPoint, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fitness.V1.Model.Dataset do
  def encode(value, options) do
    GoogleApi.Fitness.V1.Deserializer.serialize_non_nil(value, options)
  end
end

