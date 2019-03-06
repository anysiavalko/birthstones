class Birthstones::CLI
  def call
    list_birthstones
    main_menu
    done
  end

  def list_birthstones
    puts "Birthstones by Month:"
    @stones = Birthstones::Stone.list
    @stones.each_with_index(1) do |stone, i|
      puts "#{i}. #{stone.month} - #{stone.name}"
    end
  end

  def main_menu
    input = nil
    while input != "done"
      puts "Every month has its own special birthstone. Below is a list of each month's birthstone."
      puts "If you would like to find out more about a particular birthstone, please enter just the number of month. For example, to view July's birthstone, type '7'."
      puts "You can always type 'list' to view the list of birthstones by month again."
      input = gets
      if input > 0
        the_stone = @stones[input-1]
        #puts scraped information about stone
      elsif input == list
        list_birthstones
      else
        puts "Not a valid input. Please type the number of a month, 'list', or 'done'."
      end
    end
  end

  def done
    puts "Thank you for using my program!"
  end

end
