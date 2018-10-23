 r←Initialize
⍝ Set up some docker-related globals

 DOCKERHOST←{0::'127.0.0.1' ⋄ ¯3↓2 1 2⊃#.DRC.GetProp'.' 'tcplookup' ⍵ 80}'host.docker.internal'  ⍝ Doesn't work on AWS
 CONTAINERID←12↑({(7+⍵⍳'/')↓⍵}⊃⊃⎕NGET'/proc/self/cgroup' 1)
 r←0
