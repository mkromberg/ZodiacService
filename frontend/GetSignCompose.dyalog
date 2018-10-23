 sign←GetSignCompose date;cmd;q;zd;⎕TRAP
⍝ Compute sign of the Zodiac from a 2-element integer vector containing [Month,Day]
⍝ Using docker-compose

 cmd←⎕NEW #.HttpCommand
 cmd.(Command URL)←'POST' 'backend:8080/GetZodiacData'
 cmd.Headers⍪←'content-type' 'application/json'
 q←cmd.Run

 :If q.rc=0
 :AndIf q.HttpStatus=200
     zd←⎕JSON q.Data
 :Else
     ('Unable to contact Zodiac Data Server at ',zdserver)⎕SIGNAL 11
 :EndIf

 sign←zd.signs[1+12|zd.starts⍸100⊥2↑date]
 sign←sign,' [container=',CONTAINERID,']'
