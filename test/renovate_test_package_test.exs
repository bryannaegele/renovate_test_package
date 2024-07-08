defmodule RenovateTestPackageTest do
  use ExUnit.Case
  doctest RenovateTestPackage

  test "greets the world" do
    assert RenovateTestPackage.hello() == :world
  end
end
