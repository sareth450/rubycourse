class WelcomesController < ApplicationController
  def index
    @ilosc = 5
    @komunikat = "komunikat"
    @tablica = [1, 2, 3, "jeden", "osiem", 4.5]
    @hasz = {"aaa" => 5, "bbb"=> 12}
    puts("Controller: #{@komunikat}. Ilosc: #{@ilosc}")
  end
end
