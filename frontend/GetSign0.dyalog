 sign←GetSign0 date;zd
⍝ Compute sign of the Zodiac from a 2-element integer vector containing [Month,Day]
 ⎕TRAP←0 'S'
 zd←GetJSON(DOCKERHOST,':8081/GetZodiacData')''
 sign←⊃zd.signs[1+12|zd.starts⍸100⊥2↑date]
 sign←sign,' [container=',CONTAINERID,']'
