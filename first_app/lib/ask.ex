defmodule Ask do
  def get_planemo do
    answer_to_planet = %{"a" => :earth,
                         "b" => :moon,
                         "c" => :mars} 
    prompt = """
        Which Planet are you on?
             a) earth
             b) moon
             c) mars
        Enter a, b, or c >
    """
    answer =
      IO.gets(prompt)
    |> String.first
    |> String.downcase

    if Map.has_key?(answer_to_planet,answer) do
      answer_to_planet[answer]
    else
      IO.puts "Enter a,b or c only!"
      get_planemo()
    end
  end

  def get_distance()do
    IO.gets("Enter distance in meters : ") |>
    String.to_charlist |>
    Enum.filter(&is_digit(&1)) |>
    List.to_integer
  end
  defp is_digit(x) do
    x >= ?0 and x <= ?9
  end
end
