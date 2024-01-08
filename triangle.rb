def triangle_type(a, b, c)
  return '三角形じゃないです＞＜' if [a, b, c].min <= 0 || a + b <= c || a + c <= b || b + c <= a

  if a == b && b == c
    '正三角形ですね！'
  elsif a == b || b == c || a == c
    '二等辺三角形ですね！'
  else
    '不等辺三角形ですね！'
  end
end

if __FILE__ == $PROGRAM_NAME
  if ARGV.length != 1
    puts "正確な辺の長さをカンマ区切りで入力してください。例：ruby triangle.rb 2,3,4"
  else
    sides = ARGV[0].split(',').map(&:to_i)
    puts triangle_type(*sides)
  end
end
