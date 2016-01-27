class PaginatorController < ApplicationController
  
  def index
    paginate(page_number, params[:numbers_per_page])
  end

  private

  def paginator_params
    params.permit(:numbers_per_page)
  end
end
