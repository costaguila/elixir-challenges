defmodule DateValidation do

  def is_leapyear(year) when rem(year, 400) == 0 do true end
  def is_leapyear(year) when (rem(year, 100) != 0 and rem(year, 4) == 0) do true end
  def is_leapyear(year) do false end

end
