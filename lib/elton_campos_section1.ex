defmodule Core.GreenLeaf do
  @spec green_leaf(n :: integer()) :: Tuple.t()
  def green_leaf(n) do
  1..n
  |> Enum.each(&print_value(&1))
  end

  defp print_value(value) do
   cond do
    is_multiple_of_3(value) && is_multiple_of_5(value) -> IO.puts("green_leaf")
    is_multiple_of_3(value)  && !is_multiple_of_5(value) -> IO.puts("green")
    is_multiple_of_5(value)  && !is_multiple_of_3(value) -> IO.puts("leaf")
    true -> IO.puts(value)
   end 
  end

  defp is_multiple_of_3(value), do: rem(value, 3) == 0
  defp is_multiple_of_5(value), do: rem(value, 5) == 0
end
