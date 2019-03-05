class Birthstones::CLI
  def call
    list_birthstones
    main_menu
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
    while input != "exit"
      puts puts "Every month has its own special birthstone. Below is a list of each month's birthstone.\nIf you would like to find out more about a particular birthstone, please enter just the number of month. For example, to view July's birthstone, type '7'."
  end

end
