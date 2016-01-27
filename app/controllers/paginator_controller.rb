class PaginatorController < ApplicationController
  
  def index
  	if paginator_params[:numbers_per_page].present?
  		@number_per_page = paginator_params[:numbers_per_page].to_i 
  	else
  		@number_per_page = 1000
  	end

  	if paginator_params[:current_page].present?
  		current_page = paginator_params[:current_page].to_i 
  	else
  		current_page = 0
  	end

  	@pages = Paginator.pagination_to_display(@number_per_page, current_page)

    @numbers = Paginator.numbers_as_words(current_page,	@number_per_page)

    @total_pages = Paginator.total_page_count(@number_per_page)
  end

  private

  def paginator_params
    params.permit(:numbers_per_page, :current_page)
  end

 
end
