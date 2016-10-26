defmodule Hnlinksearch.HnLinkSearchController do
  use Hnlinksearch.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  
  def parse(conn, %{"url" => url} = params) do
    IO.puts url
    { output, exit_code } = System.cmd "python", ["hnlinkurl.py"]
    list = String.split(output, ",")
    render conn, "hnlinkdata.html", message: list
  end

end
