 sign←GetSign date;cmd;q;zd;zdserver
⍝ Compute sign of the Zodiac from a 2-element integer vector containing [Month,Day]

 cmd←⎕NEW #.HttpCommand
 zdserver←DOCKERHOST,':8081'
 cmd.(Command URL)←'POST'(zdserver,'/GetZodiacData')
 cmd.Headers⍪←'content-type' 'application/json'
 q←cmd.Run

 :If q.rc=0
 :AndIf q.HttpStatus=200
     zd←⎕JSON q.Data
 :Else
     ('Unable to contact Zodiac Data Server at ',zdserver)⎕SIGNAL 11
 :EndIf

 sign←(13⍴zd.signs)⊃⍨1+(zd.starts)⍸100⊥2↑date
 sign←sign,' [container=',CONTAINERID,']'
