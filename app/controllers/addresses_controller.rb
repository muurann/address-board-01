class AddressesController < ApplicationController
  def index
    @address = Address.new
  end
  
  def create
    @address = Address.new(address_params)
    @address.save
    redirect_to root_path ,notice:"住所を保存しました"
  end
  
  private
  def address_params
    params.require(:address).permit(:name1_kanji,:name2_kanji,:name1_yomi,:name2_yomi,:postalcode,:address1,:address2)
  end
end
