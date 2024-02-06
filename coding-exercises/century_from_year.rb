
# def centuryFromYear(year)
#   year % 100 == 0 ? year / 100 : year / 100 + 1
# end

def centuryFromYear(year)
  if year.is_a?(Integer) && year > 0
    year % 100 == 0 ? year / 100 : year / 100 + 1
  else
    "Invalid Year"
  end
end

p centuryFromYear(1705)
p centuryFromYear(1900)
p centuryFromYear(1992)
p centuryFromYear(2024)
p centuryFromYear(1)