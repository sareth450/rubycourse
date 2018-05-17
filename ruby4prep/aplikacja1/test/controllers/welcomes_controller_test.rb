require 'test_helper'

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcomes_index_url
    assert_response :success
  end
  test "komunikat" do
    # do a standard get of the product
    get welcomes_index_url
    assert_response :success
    #check that the content matches
    assert_select '#kom', html: '<p>Tresc komunikatu: komunikat</p>'
  end

  test "pokazuje @ilosc razy komunikat" do
    # do a standard get of the product
    get welcomes_index_url
    assert_response :success
    #check that the content matches
    assert_select '#kom2', html:
    '<p>komunikat</p>
    <p>komunikat</p>
    <p>komunikat</p>
    <p>komunikat</p>
    <p>komunikat</p>'
  end

  test "pokazuje tablice" do
    # do a standard get of the product
    get welcomes_index_url
    assert_response :success
    #check that the content matches
    assert_select '#tab', html:
    '<p> tablica[1] = 1 </p>
    <p> tablica[2] = 2 </p>
    <p> tablica[3] = 3 </p>
    <p> tablica[4] = jeden </p>
    <p> tablica[5] = osiem </p>
    <p> tablica[6] = 4.5 </p>'  
end

  test "pokazuje hasza" do
    # do a standard get of the product
    get welcomes_index_url
    assert_response :success
    #check that the content matches
    assert_select '#hasz', html:
    '<p> hasz[aaa] = 5 </p>
    <p> hasz[bbb] = 12 </p>' 
 end

end



