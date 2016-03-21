library(MyPackage)

# Democratic Candidates
Hillary <- createCandidate("Hillary Clinton", "Democratic", 1614)
Bernie <- createCandidate("Bernie Sanders", "Democratic", 856)

# Republican Candidates
Trump <- createCandidate("Donald Trump", "Republican", 678)
Cruz <- createCandidate("Ted Cruz", "Republican", 423)
Kasich <- createCandidate("John Kasich", "Republican", 143)

show(Hillary)
propNeeded(Hillary, 2295)

show(Bernie)
propNeeded(Bernie, 2295)

show(Trump)
propNeeded(Trump, 1049)

show(Cruz)
propNeeded(Cruz, 1049)

show(Kasich)
propNeeded(Kasich, 1049)
