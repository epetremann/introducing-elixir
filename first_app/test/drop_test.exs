
defmodule DropTest do
  use ExUnit.Case
  doctest Drop

  test "test fall_velocity(20)" do
    assert Drop.fall_velocity(20) == 19.79898987322333
  end
  test "mps_to_mph(test fall_velocity(20))" do
    Convert.mps_to_mph(Drop.fall_velocity(20)) == 44.289078952755766
  end
end
