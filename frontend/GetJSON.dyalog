 r←GetJSON(url params);cmd;q
⍝ Get JSON Data

 cmd←⎕NEW #.HttpCommand
 cmd.(Command URL)←'POST'url
 cmd.Params←1 ⎕JSON params
 cmd.Headers⍪←'content-type' 'application/json'
 q←cmd.Run

 :If q.rc=0
 :AndIf q.HttpStatus=200
     r←⎕JSON q.Data
 :Else
     ('GetJSON failed: ',⍕q.(rc HttpStatus HttpMessage))⎕SIGNAL 11
 :EndIf
