def fibs(num)
  seq = [1, 1]
  if num==0
    return [1]
  elsif num==1
    return seq
  else
    (num - 2).times do |x|
      seq << (seq[-1] + seq[-2])
    end
    return seq
  end
end
p fibs(10)

def fibs_rec(num, seq=[1, 1])
  if num > 2
    fibs_rec((num-1), (seq << (seq[-1] + seq[-2])))
  else
    return seq
  end
end
p fibs_rec(10)