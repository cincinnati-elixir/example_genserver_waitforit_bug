defmodule ExampleGenserverWaitforitBug do
  use GenServer
  require WaitForIt
  @moduledoc """
  Documentation for ExampleGenserverWaitforitBug.
  """

  def start_link() do
    names = ["world"]
    GenServer.start_link(__MODULE__, names, name: __MODULE__)
  end

  def hello(name) do
    GenServer.call(__MODULE__, {:request_greeting, name})
  end

  def handle_call({:request_greeting, name}, _from, names) do
    greeting = WaitForIt.case_wait name do
      "world" -> "Hello world"
    end
    {:reply, greeting, names}
  end
end
