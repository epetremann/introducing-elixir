defmodule Drop do
  @moduledoc """
  Functions calculating velocities achieved by objects dropped in a vacuum.

  From *Introducing Elixir, Second Edition, O'Reilly Media, Inc., 2017.
  Copyright 2017 by Simon St. Laurent and J. David Eisenberg.

  """
  @doc """
  Calculates the velocity of an object falling on earth (or on another planet)
  as if it were in a vacuum (no air resistance). The distance is
  the height from which the object falls, specified in meters,
  and the function returns a velocity in meters per second.
  """

  @spec fall_velocity(atom(), number()) :: float()
  def fall_velocity(planet \\ :earth, distance ) when is_atom(planet) and  distance >= 0 do
    # returns speed of falling object after a certain distance in meter per second
    import :math, only: [sqrt: 1]     # import the function sqrt from erlang mosule :math
    sqrt(2 * gravity(planet) * distance)
  end

  @doc """
  Get the gravity of a planet.
  returns 0 is planet is unknown.
  """
  @spec gravity(atom()) :: float
  def gravity(planet) do
    %{
    earth: 9.8 ,
    mars:  3.71,
    moon:  1.6
  } |> Map.get(planet, 0)  #get gravity of planet, 0 if not in the map
  end


end
