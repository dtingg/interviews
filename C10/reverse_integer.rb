# C10: Reverse an integer: given 123, return 321

def reverse_int(int)
  return int if !int # nil check
  
  string_num = int.to_s
  
  i = -1
  length = string_num.length
  
  reverse_string = ""
  
  length.times do
    reverse_string << string_num[i]
    i -= 1
  end
  
  reverse_num = reverse_string.to_i
  
  if int < 0
    return -reverse_num
  else
    return reverse_num
  end
end

int1 = 123 # 321
int2 = 5 # 5
int3 = 22 # 22
int4 = 40 # 4
int5 = 0 # 0
int6 = nil # nil
int7 = -123 # -321

p reverse_int(int1) 
p reverse_int(int2) 
p reverse_int(int3) 
p reverse_int(int4) 
p reverse_int(int5)
p reverse_int(int6)
p reverse_int(int7)
