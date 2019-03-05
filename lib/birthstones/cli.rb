class Birthstones::CLI
  def call
    list_birthstones
    main_menu
  end
end

  def list_birthstones
    puts "Every month has its own special birthstone. Below is a list of each month's birthstone.\nIf you would like to find out more about a particular birthstone, please enter just the number of month. For example, to view July's birthstone, type '7'."
  end
