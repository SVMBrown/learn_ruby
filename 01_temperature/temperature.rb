def ftoc(f)
  (((f.to_f + 40) * 40 / 72) - 40).round(1)
end
def ctof(c)
  (((c.to_f + 40) * 72 / 40) - 40).round(1)
end
