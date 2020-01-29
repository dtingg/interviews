# Brute Force
def most_popular_time(arrivals, departures)
  hour_hash = {}
  length = arrivals.length
  
  i = 0
  while i < length
    (arrivals[i]..departures[i]).each do |num|
      if hour_hash[num]
        hour_hash[num] += 1
      else
        hour_hash[num] = 1
      end
    end
    i +=1
  end
  
  best_time = hour_hash.max_by do |hour, people|
    people
  end
  
  return best_time[1]
end

p most_popular_time([1, 5, 6, 9], [8, 7, 11, 9]) # 3 6-7 PM

def most_popular_time2(arrivals, departures)
  sorted_arrivals = arrivals.sort
  sorted_departures = departures.sort
end

p most_popular_time2([1, 5, 6, 9], [8, 7, 11, 9]) # 3 6-7 PM
