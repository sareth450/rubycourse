load 'test_helper.rb'
require '~/ruby3prep/myproject/2'
describe "odbiorca" do 
    it "Creates array [1,2,3,4] containing 2 even numbers" do
        odbiorca2 = Odbiorca.new([1,2,3,4])
        odbiorca2.ilosc_liczb_parzystych().must_equal 2
    end
end
