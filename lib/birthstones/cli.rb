require 'pry'
class Birthstones::CLI

  def call
    call_birthstones
    main_menu
  end

  def call_birthstones
    puts "Birthstones by Month:"
    Birthstones::Stone.get_stones
    Birthstones::Stone.all.each_with_index do |stone, i|
      puts "#{i + 1}. #{stone.month} - #{stone.name}."
    end
    puts "Every month has its own special birthstone. Above is a list of each month's birthstone."
  end

  def list_birthstones
    puts "Birthstones by Month:"
    Birthstones::Stone.all.each_with_index do |stone, i|
      puts "#{i + 1}. #{stone.month} - #{stone.name}."
    end
  end

  def main_menu
    input = nil
    while input != "done"
      puts "If you would like to find out more about a particular birthstone, please enter just the number of month. For example, to view July's birthstone, type '7'."
      puts "You can always type 'list' to view the list of birthstones by month again."
      input = gets.strip.downcase
      if input.to_i > 0
        stone = Birthstones::Stone.all[input.to_i-1]
        puts "#{stone.month}: #{stone.name}."
        puts "Overview:\n #{stone.overview}"
        puts "To learn more, visit #{stone.learn_more}."
      elsif input == "list"
        list_birthstones
      elsif input == "done"
        done
      else
        puts "Not a valid input. Please type the number of a month, 'list', or 'done'."
      end
    end
  end

  def done
    puts "Thank you for using my program!"
  end

end
