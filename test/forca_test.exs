defmodule ForcaTest do
  use ExUnit.Case
  doctest Forca

  test "greets the world" do
    assert Forca.hello() == :world
  end
end
