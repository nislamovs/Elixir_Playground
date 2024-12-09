defmodule Lists do
  # Define a function
  def test() do
    colors = [{:primary, "red"}, {:secondary, "purple"}]

    IO.write("Prim color : #{colors[:primary]}\n")
    IO.write("Sec color : #{colors[:secondary]}\n\n")

###############################################################

    colors2 = [primary: "red", secondary: "purple"]

    IO.write("Prim color : #{colors2[:primary]}\n")
    IO.write("Sec color : #{colors2[:secondary]}\n\n")

###############################################################

    colors3 = [primary: "red", primary: "purple"]

    IO.write("Prim color : #{colors3[:primary]}\n")
    IO.write("Sec color : #{colors3[:primary]}\n\n")

###############################################################


  end
end

