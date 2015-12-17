a = 4.5

r = a * math.sqrt(2 / math.sqrt(3) / math.pi)

R = a * 2 / math.sqrt(math.sqrt(3) * math.pi)

mr = (R+r)/2
mt = (R-r)+.5

function comb(f)
  for i=-47,47 do
    x = 2*a * i*math.sqrt(3)/2
    for j=-40,40 do
      y = 2*a * (j+i%2/2)
      f(x, y, r)
    end
  end
end

function inner(x, y)
  tex.print('\\fill ('..x..'bp,'..y..'bp) circle ('..r..'bp);')
end

function outer(x, y)
  tex.print('\\fill [white] ('..x..'bp,'..y..'bp) circle ('..R..'bp);')
end

function mezzo(x, y)
  tex.print('\\draw [line width='..mt..'] ('..x..'bp,'..y..'bp) circle ('..mr..'bp);')
end

