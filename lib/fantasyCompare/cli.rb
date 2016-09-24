class FantasyCompare::CLI

  def call
    inputs
  end

  # Takes input to parse proper JSON Position data by returing proper url link
  # Mai CLI functionality
  def inputs
    positions = ["QB","RB","WR","TE","K","DEF"]
    puts "Please pick a position (1-6) \n1.QB\n2.RB\n3.WR\n4.Te\n5.K\n6.DEF"
    pos_input = gets.chomp
    pos_input = pos_input.to_i-1
    if !pos_input.between?(0,5)
      puts "Invalid Input"
      inputs
    else
      @position = positions[pos_input]
    end
      puts "Please select a week for stats"
      @week = gets.chomp
    self.url(@position, @week)
    self.players
    self.top_ten_list(@players)
      puts "Please select a team to find out more info"
    self.list(@list)
      @info = gets.chomp
    self.detail_player_view(@info)
      puts "Information for this team is as follows"
    self.detail_url(@playerId)
    self.show_detail_veiw
      puts @detail
    self.next_note(1) #increments notes
  end
