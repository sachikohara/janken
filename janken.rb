def janken
  puts "じゃんけんポン"
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"
  player_hand = gets.to_i    #自分の手を取得

  program_hand = rand(3)
  jankens = ["グー","チョキ","パー"]
    
  puts "あなたの手:#{jankens[player_hand]}, コンピューターの手:#{jankens[program_hand]}"

  if(player_hand != 1 && player_hand != 2 && player_hand != 0)
    puts "適切な数字を入力してください.やり直し"
    return true
  end

  if player_hand ==  program_hand
    puts "あいこです。もう一回。"
    return true
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "じゃんけんはあなたの勝利"
    @win_or_lose = "win"
  else
    puts"じゃんけんはあなたの負けです"
    @win_or_lose = "lose"
  end

  puts "あっち向いてホイ"
  puts "[0]:右\n[1]:左\n[2]:上\n[3]:下"
  player_direction = gets.to_i 

  program_direction = rand(4)
  directions = ["右","左","上","下"]

  puts "あなたの指:#{directions[player_direction]}, コンピューターの:#{directions[program_direction]}"
  if(player_direction != 1 && player_direction != 2 && player_direction != 0 && player_direction != 3)
    puts "適切な数字を入力してください.じゃんけんからやり直し"
    return true
  end

  if @win_or_lose == "win" && player_direction == program_direction
    puts "あなたの勝ちです"
    return false
  elsif @win_or_lose == "lose" && player_direction == program_direction
    puts "あなたの負けです"
    return false
  else
    puts "もう一回最初から"
    return true
  end
end
  next_game = true
  while  next_game
    next_game = janken
  end
