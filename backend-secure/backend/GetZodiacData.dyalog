 ZodiacData←GetZodiacData dummy;⎕TRAP
⍝ Ignore argument, return Zodiac Data

 'ZodiacData' ⎕NS ''
 ZodiacData.signs←'Capricorn' 'Aquarius' 'Pisces' 'Aries' 'Taurus' 'Gemini' 'Cancer' 'Leo' 'Virgo' 'Libra' 'Scorpio' 'Sagittarius'
 ZodiacData.starts←119 218 320 419 520 620 722 822 922 1022 1121 1221

:If 0≠⎕NC '#.PeerCert'
    ZodiacData.(id ca)←#.(⊃PeerCert).Formatted.(Subject Issuer)
:EndIf
