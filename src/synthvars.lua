-- Synthesized variables.
local synthvars = {}
-- hitpoints
synthvars.health = {
[0] = "|sox -np synth sq C#5 sq D#5 sq F#5 sq A5 sq C#6 remix - fade 0 5.5 5 remix v0.9 v0.4 pitch -400",
[10] = "|sox -np synth sq D#3 sq B3 sq C#4 sq F4 sq A4 remix - fade p 0 .7 .4 remix v0.9 v0.4",
[20] = "|sox -np synth sq C#5 sq D#5 sq F#5 sq A5 sq C#6 remix - fade p 0 .7 .4 remix v0.9 v0.4",
[30] = "|sox -np synth tri C#3 tri E3 tri A3 remix - fade p 0 .7 .4 remix v0.9 v0.4 pitch -300",
[40] = "|sox -np synth tri C#3 tri E3 tri A3 remix - fade p 0 .7 .4 remix v0.9 v0.4",
[50] = "|sox -np synth tri C#3 tri E3 tri A3 remix - fade p 0 .7 .4 remix v0.9 v0.4 pitch 300",
[60] = "|sox -np synth tri D5 tri F5 tri G#5 tri A5 tri C6 remix - fade p 0 .7 .4 remix v0.9 v0.4 pitch -300",
[70] = "|sox -np synth tri D5 tri F5 tri G#5 tri A5 tri C6 remix - fade p 0 .7 .4 remix v0.9 v0.4",
[80] = "|sox -np synth tri D5 tri F5 tri G#5 tri A5 tri C6 remix - fade p 0 .7 .4 remix v0.9 v0.4 pitch 300"
}

-- spellpoints
synthvars.spell = {
    [0] = "|sox -np synth pl G2 pl B2 pl D3 pl G3 pl D4 pl F4 delay 0 .05 .1 .15 .2 .25 remix - fade 0 0.55 pitch -200",
    [10] = "|sox -np synth pl G2 pl B2 pl D3 pl G3 pl D4 pl F4 delay 0 .05 .1 .15 .2 .25 remix - fade 0 0.55",
    [20] = "|sox -np synth pl G2 pl B2 pl D3 pl G3 pl D4 pl F4 delay 0 .05 .1 .15 .2 .25 remix - fade 0 0.55 pitch 200",
    [30] = "|sox -np synth pl C3 pl E3 pl G3 pl C4 pl E4 delay 0 .05 .1 .15 .2 remix - fade 0 0.55 pitch -200",
    [40] = "|sox -np synth pl C3 pl E3 pl G3 pl C4 pl E4 delay 0 .05 .1 .15 .2 remix - fade 0 0.55",
    [50] = "|sox -np synth pl C3 pl E3 pl G3 pl C4 pl E4 delay 0 .05 .1 .15 .2 remix - fade 0 0.55 pitch 200",
    [60] = "|sox -np synth pl D2 pl A3 pl D3 pl F#3 delay 0 .05 .1 .15 remix - fade 0 0.55 pitch -300",
    [70] = "|sox -np synth pl D2 pl A3 pl D3 pl F#3 delay 0 .05 .1 .15 remix - fade 0 0.55",
    [80] = "|sox -np synth pl D2 pl A3 pl D3 pl F#3 delay 0 .05 .1 .15 remix - fade 0 0.55 pitch 300"
}

-- Fatigue
synthvars.fatigue = {
    [0] = "|sox -np synth pl E2 sq B2 tri E3 pl G3 sq B3 tri E4 delay 0 .05 .1 .15 .2 .25 remix - fade 0 0.55 remix v0.4 v0.9 pitch -300",
    [10] = "|sox -np synth pl E2 sq B2 tri E3 pl G3 sq B3 tri E4 delay 0 .05 .1 .15 .2 .25 remix - fade 0 0.55 remix v0.4 v0.9",
    [20] = "|sox -np synth pl E2 sq B2 tri E3 pl G3 sq B3 tri E4 delay 0 .05 .1 .15 .2 .25 remix - fade 0 0.55 remix v0.4 v0.9 pitch 300",
    [30] = "|sox -np synth pl F2 sq C3 tri F3 pl A3 sq B3 tri E4 delay 0 .05 .1 .15 .2 .25 remix - fade 0 0.55 remix v0.4 v0.9 pitch -300",
    [40] = "|sox -np synth pl F2 sq C3 tri F3 pl A3 sq B3 tri E4 delay 0 .05 .1 .15 .2 .25 remix - fade 0 0.55 remix v0.4 v0.9",
    [50] = "|sox -np synth pl F2 sq C3 tri F3 pl A3 sq B3 tri E4 delay 0 .05 .1 .15 .2 .25 remix - fade 0 0.55 remix v0.4 v0.9 pitch 300",
    [60] = "|sox -np synth pl A2 sq E3 tri A3 pl C#4 sq E4 delay 0 .05 .1 .15 .2 remix - fade 0 0.55 remix v0.4 v0.9 pitch -300",
    [70] = "|sox -np synth pl A2 sq E3 tri A3 pl C#4 sq E4 delay 0 .05 .1 .15 .2 remix - fade 0 0.55 remix v0.4 v0.9",
    [80] = "|sox -np synth pl A2 sq E3 tri A3 pl C#4 sq E4 delay 0 .05 .1 .15 .2 remix - fade 0 0.55 remix v0.4 v0.9 pitch 300"
}
return synthvars