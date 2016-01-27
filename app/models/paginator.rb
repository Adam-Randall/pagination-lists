class Paginator

  MAX_COUNT = 1000000 #One Million

  def self.numbers_as_words(page_number, numbers_per_page)
    first_number = (page_number * numbers_per_page) + 1
    last_number = first_number + numbers_per_page

    last_number = MAX_COUNT if last_number > MAX_COUNT

    numbers = first_number.upto(last_number).map{|n| n = NumberToWord.to_words(n)}
  end



  def self.pagination_to_display(numbers_per_page, page_number)
    numbers = []
    
    page_count = total_page_count(numbers_per_page)

    if page_number > 5
      first_number = page_number - 5
    else
      first_number = 1
    end

    if page_count-2 <= page_number + 5
      last_number = page_count-2
    else
      last_number = page_number + 5
    end

    numbers << {key: 0, value: 0}

    first_number.upto(last_number).each_with_index do | number, index |
      numbers << {key: index+1, value: number}
    end

    if numbers.count != 11
      number_to_move = numbers.pop
      numbers << {key: 11, value: number_to_move[:value]}
    end

    numbers << {key: 12, value: page_count-1}

    return numbers
  end

  def self.total_page_count(numbers_per_page)
    page_count = MAX_COUNT / numbers_per_page
    (MAX_COUNT % numbers_per_page > 0) ? (return page_count+1) : (return page_count)
  end

end
