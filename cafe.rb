# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: '470' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
].freeze

# メニュー配列を受け取り、選択されたメニュー番号に一致するメニューを返す
def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  order_number = gets.to_i - 1
  puts "#{menus[order_number][:name]}(#{menus[order_number][:price]}円)ですね。"
  menus[order_number]
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
drink = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
food = take_order(FOODS)

total = drink[:price].to_i + food[:price].to_i
puts "お会計は#{total}円になります。ありがとうございました！"
