module Player
  
  def player(id)
    make_request "players/#{id}"
  end

  def player_followers(id)
    make_request "players/#{id}/followers"
  end

end