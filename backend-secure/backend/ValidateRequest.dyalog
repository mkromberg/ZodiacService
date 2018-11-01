 r←ValidateRequest req
 r←0
 :If ~0∊⍴req.PeerCert
     #.PeerCert←req.PeerCert
 :Else
     #.⎕EX 'PeerCert'
 :EndIf
