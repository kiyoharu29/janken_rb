janken_hands = ["グー", "チョキ", "パー"]
finger_direction = ["上", "下", "左", "右"]

while true 
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(終了)"

  user_hand = gets.to_i
  cpu_hand = rand(3)

  unless user_hand == 3
    puts "ホイ！"
    puts "---------------"
    puts "あなた：#{janken_hands[user_hand]}を出しました"
    puts "相手：#{janken_hands[cpu_hand]}を出しました"
    puts "---------------"

    while user_hand == cpu_hand 
      puts "あいこで..."
      puts "0(グー)1(チョキ)2(パー)3(終了)"

      user_hand = gets.to_i
      cpu_hand = rand(3)

      puts "ショ！"
      puts "---------------"
      puts "あなた：#{janken_hands[user_hand]}を出しました"
      puts "相手：#{janken_hands[cpu_hand]}を出しました"
      puts "---------------"
    end
    
    if user_hand == 0 && cpu_hand == 1 || user_hand == 1 && cpu_hand == 2 || user_hand == 2 && cpu_hand == 0
      user_winner_flag = true
    else
      user_winner_flag = false
    end

    puts "あっち向いて..."
    puts "0(上)1(下)2(左)3(右)"
    user_direction = gets.to_i
    cpu_direction = rand(4)
    puts "ホイ！"
    puts "---------------"
    puts "あなた：#{finger_direction[user_direction]}"
    puts "相手：#{finger_direction[cpu_direction]}"

    if user_winner_flag && user_direction == cpu_direction
      puts "あなたの勝ちです!"
    elsif !user_winner_flag && user_direction == cpu_direction
      puts "CPUの勝ちです!"
    end
    else
      break
    end
end