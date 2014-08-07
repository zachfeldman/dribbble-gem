module Shot

  def shots
    p "Please choose from the following shot options using their number:"
    @shot_options.each_with_index{|shot, n| p "#{n+1} #{shot}"}
    choice = gets
    make_request "shots/#{@shot_options[choice.to_i - 1]}"
  end

  def shots_type(type)
    make_request "shots/#{type}"
  end

  def shot(id)
    make_request "shots/#{id}"
  end

end