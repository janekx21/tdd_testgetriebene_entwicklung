#import "@preview/polylux:0.3.1": *

#import themes.simple: *

#set text(font: "Noto Sans")

#show: simple-theme.with(
  footer: [Test Driven Development Workshop \@ MD-Dev-Days 13.05.2024],
)

#title-slide[
  == Test Driven Development

  MD-Dev—Days

  Workshop von Rico Saßen

  13.05.2024

]
#pdfpc.speaker-note("test")

#centered-slide[
  #image("tdd_cycle.png")
]

#slide[

  == Wichtige Punkte

  #v(3em)

  #line-by-line(mode: "transparent")[
    - Reflektiere den aktuellen Ausgangspunkt
    - Finde den nächsten Einzelschritt
    - Überlege die einfachste Lösung für das Erfüllen des Schritts
    - Einfacher ist nicht schlechter, sondern leichter zu verstehen
    - Generalisiere nur, wenn es Sinn ergibt
  ]
  
]

#focus-slide[
  *Spontantest*

  Was waren die wichtigen Punkte?
]

#centered-slide[
  == Testpriorität
  
  #enum-one-by-one(mode: "transparent")[Make it Work][Make it Right][Make it Fast]
]

#centered-slide[
  == Teststruktur AAA
  
  #enum-one-by-one(mode: "transparent")[Arrang][Act][Assert]
]

#focus-slide[
  *Spontantest*

  Wie lauten die Testprioritäten?

  #pause
  Wie lautet die Teststruktur?
]

#centered-slide[
  == Unit Test-Eigenschaften - FIRST
  
  #line-by-line(mode: "transparent")[
    - #strong[F]ast - schnell ausführbar sein
    - #strong[I]ndependent - unabhängig vom Rest sein
    - #strong[R]epeatable - wiederholbar sein ohne dass der Test sich anders verhält (Determinismus)
    - #strong[S]elf-Validating - selbst aussagen können ob der Test bestanden ist
    - #strong[T]imely - so früh wie möglich schreiben
  ]

  #pdfpc.speaker-note("This is a note that only the speaker will see.")

]


#focus-slide[
  *Spontantest*

  Wofür steht

  F I R S T
]

#centered-slide[
  == Kata

  Muscle Memory Übung

  #pause
  _Ich möchte TDD verinnerlichen, aber habe Probleme beim Aufsetzen des Projekts_
]

#centered-slide[
  == Kata: From Roman Numerals

  Schreibe eine Funktion `convert(string romanNumeral): int` die römische Zahlen in Dezimalzahlen umwandelt

  ```
  "I" -> 1
  "IV" -> 4
  "XIX" -> 19
  ```
]

#centered-slide[
  == Mündliche Umfrage

  Wer von euch hat Lust an einem mini TDD Workshop aus Katas teilzunehmen?

  Hand heben! 🖑
]
