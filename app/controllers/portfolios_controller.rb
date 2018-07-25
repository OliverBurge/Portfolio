class PortfoliosController < ApplicationController

    def show
    @portfolio_items = Portfolio.find(params[:id])
  end

	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_items = Portfolio.new
	end

	def edit
		@portfolio_items = Portfolio.find(params[:id])
	end

  def create
    @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live!' }
      else
        format.html { render :new }
      end
    end
 end

   def update
   	@portfolio_items = Portfolio.find(params[:id])
   	
    respond_to do |format|
      if @portfolio_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    # Perform the lookup
    @portfolio_item = Portfolio.find(params[:id])
    # Destroy/Delete the record
    @portfolio_item.destroy
    # Redirect
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Portfolio item was successfully deleted.' }
    end
  end

end	


	

