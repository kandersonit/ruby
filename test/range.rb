sample_reading = 1
puts case sample_reading
       when 0..100 then "below normal"
       when 101..150 then "normal"
         else "excessive"
     end