defmodule Maps do
  # Define a function
  def test() do
    colors = %{primary: "red", secondary: "blue"}

    IO.write("Prim color : #{colors.primary}\n")
    IO.write("Sec color : #{colors.secondary}\n\n")

###############################################################

    %{primary: primCol, secondary: secCol} = colors

    IO.write("Prim color : #{primCol}\n")
    IO.write("Sec color : #{secCol}\n\n")

###############################################################

    colors = Map.put(colors, :third, "pink")
    IO.write("Prim color : #{colors.primary}\n")
    IO.write("Sec color : #{colors.secondary}\n")
    IO.write("Third color : #{colors.third}\n\n")

###############################################################

    colors = %{colors | third: "yellow"}
    IO.write("Prim color : #{colors.primary}\n")
    IO.write("Sec color : #{colors.secondary}\n")
    IO.write("Third color : #{colors.third}\n\n")

###############################################################


  end
end

