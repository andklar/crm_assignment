def ftoc(f)
  temp = (f.to_f - 32.0) * (5.0/9.0)
  temp.round
end

def ctof(c)
  temp = (c.to_f / (5.0/9.0)) + 32.0
  temp.round
end
