class FactorsController < ApplicationController
  def new
    @factor=Factor.new
  end

  def show
   @factor=Factor.find(params[:id])
   @address=@factor['address']
   @word=@factor['word']
   gon.address=@factor['address']
   gon.word=@factor['word']
  end

  def create
    if request.post?
      @factor=Factor.create(factor_params)
    end
    redirect_to @factor
  end

end

  private

  def factor_params
    params.require(:factor).permit(:address, :word)
  end
