defmodule ExGasbuddyTest do
  use ExUnit.Case
  doctest ExGasbuddy

  test "greets the world" do
    assert ExGasbuddy.hello() == :world
  end
end
