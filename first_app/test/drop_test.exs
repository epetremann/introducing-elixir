defmodule DropTest do
  use ExUnit.Case, async: true
  doctest Drop

  test "test fall_velocity(20)" do
    assert Drop.fall_velocity(20) == 19.79898987322333
  end
  test "mps_to_mph(test fall_velocity(20))" do
    assert Convert.mps_to_mph(Drop.fall_velocity(20)) == 44.289078952755766
  end
  test "test fall_velocity/2)" do
    assert Drop.fall_velocity(20) == 19.79898987322333
    assert Drop.fall_velocity(:earth, 20) == 19.79898987322333
    assert Drop.fall_velocity(:moon, 20) == 8.0
    assert Drop.fall_velocity(:mars, 20) == 12.181953866272849
    assert Drop.fall_velocity(:jupiter, 20) == 0
  end

end



