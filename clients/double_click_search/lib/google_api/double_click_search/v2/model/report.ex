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

defmodule GoogleApi.DoubleClickSearch.V2.Model.Report do
  @moduledoc """
  A DoubleClick Search report. This object contains the report request, some report metadata such as currency code, and the generated report rows or report files.

  ## Attributes

  - files (List[ReportFiles]): Asynchronous report only. Contains a list of generated report files once the report has succesfully completed. Defaults to: `null`.
  - id (String): Asynchronous report only. Id of the report. Defaults to: `null`.
  - isReportReady (Boolean): Asynchronous report only. True if and only if the report has completed successfully and the report files are ready to be downloaded. Defaults to: `null`.
  - kind (String): Identifies this as a Report resource. Value: the fixed string doubleclicksearch#report. Defaults to: `null`.
  - request (ReportRequest): The request that created the report. Optional fields not specified in the original request are filled with default values. Defaults to: `null`.
  - rowCount (Integer): The number of report rows generated by the report, not including headers. Defaults to: `null`.
  - rows (List[ReportRow]): Synchronous report only. Generated report rows. Defaults to: `null`.
  - statisticsCurrencyCode (String): The currency code of all monetary values produced in the report, including values that are set by users (e.g., keyword bid settings) and metrics (e.g., cost and revenue). The currency code of a report is determined by the statisticsCurrency field of the report request. Defaults to: `null`.
  - statisticsTimeZone (String): If all statistics of the report are sourced from the same time zone, this would be it. Otherwise the field is unset. Defaults to: `null`.
  """

  defstruct [
    :"files",
    :"id",
    :"isReportReady",
    :"kind",
    :"request",
    :"rowCount",
    :"rows",
    :"statisticsCurrencyCode",
    :"statisticsTimeZone"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.Report do
  import GoogleApi.DoubleClickSearch.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"files", :list, GoogleApi.DoubleClickSearch.V2.Model.ReportFiles, options)
    |> deserialize(:"request", :struct, GoogleApi.DoubleClickSearch.V2.Model.ReportRequest, options)
    |> deserialize(:"rows", :list, GoogleApi.DoubleClickSearch.V2.Model.ReportRow, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.Report do
  def encode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Deserializer.serialize_non_nil(value, options)
  end
end

