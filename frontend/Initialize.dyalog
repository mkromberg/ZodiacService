 r←Initialize
⍝ Set up some docker-related globals

 DOCKERHOST←¯3↓2 1 2⊃#.DRC.GetProp'.' 'tcplookup' 'host.docker.internal' 80
 CONTAINERID←12↑({(7+⍵⍳'/')↓⍵}⊃⊃⎕NGET'/proc/self/cgroup' 1)
 r←0
