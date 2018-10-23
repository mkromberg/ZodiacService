﻿ sign←GetSign date;zd;⎕TRAP
⍝ Compute sign of the Zodiac from a 2-element integer vector containing [Month,Day]
⍝ Uses reference to "backend", assuming we have run with docker-compose

 ⎕TRAP←0 'S'

 zd←GetJSON'backend:8080/GetZodiacData' ''
 sign←⊃zd.signs[1+12|zd.starts⍸100⊥2↑date]
 sign←sign,' [container=',CONTAINERID,']'
