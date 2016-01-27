class Paginator

  MAX_COUNT = 1000000 #One Million

  def self.paginate(page_number, numbers_per_page)
    first_number = page_number * numbers_per_page
    last_number = first_number + numbers_per_page
    numbers = first_number.upto(last_number)
  end

  def total_page_count(numbers_per_page)
    page_count = MAX_COUNT / numbers_per_page
    (MAX_COUNT % numbers_per_page > 0) ? (return page_count+1) : (return page_count)
  end

  def next_page(current_page)
  end

  def previous_page(current_page)
  end

end
