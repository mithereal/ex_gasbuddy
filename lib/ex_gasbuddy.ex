defmodule ExGasbuddy do
  @moduledoc """
  Fetch data from gasbuddy.com.
  """

  @url "https://www.gasbuddy.com/graphql"

  @doc """
    Fetch the data for the station id

    iex> {_status, data, _headers} = ExGasbuddy.fetch("177845")
  """
  def fetch(id \\ "177845") do
    GQL.query(
      "query Station($station_id: ID!) { station(id: $station_id) {id, name, latitude, longitude,fuels,currency, openStatus, prices { credit{ postedTime, price } }, phone, priceUnit, address {
        country,line1,line2,locality,postalCode,region}, hours {nextIntervals {close, open}, openingHours,status} } }",
      url: @url,
      variables: [station_id: id]
    )
  end

  @doc """
    Fetch the station(s) data near the query (zip code)

    iex> {_status, data, _headers} = ExGasbuddy.search("85711")
  """
  def search(string \\ "85711") do
    GQL.query(
      "query LocationBySearchTerm($search: String) {  locationBySearchTerm(search: $search) { displayName, trends { areaName, country, today, todayLow }, stations{count, results{id, name, latitude, longitude,fuels,currency, openStatus, prices { credit{ postedTime, price } }, phone, priceUnit, address {
        country,line1,line2,locality,postalCode,region}, hours {nextIntervals {close, open}, openingHours,status} } } }  }",
      url: @url,
      variables: [search: string]
    )
  end
end
