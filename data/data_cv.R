projects <- tribble(
  ~area, ~accomplishment, ~year, ~where, ~detail,
  "Noldus Information Technology", "Erasmus Ladder Analysis Application", 2022, "Development and Analysis", "Developed a new version of analysis software for one of their research products, the Erasmus Ladder. The software analyses data aquired from behavioral studies using the device and allows researchers to easily visualise data to better support research conclusions by providing publication level graphs, plots and statistical analyses.",
)

skills <- tribble(
  ~area, ~skills,
  "Programming Languages", "BASH, R, Rmarkdown, SQL, Shiny",
  "Markup Languages", "HTML, LaTeX, Markdown, RMarkdown",
  "Data Interchange Formats", "CSV, Excel, Fastq, BAM",
  "Other Languages", "YAML",
  "Version Control", "Git",
  "Text Editors", "RStudio, SQL Server Management Studio",
  "Microsoft Office", "Excel, Outlook, OneNote, PowerPoint, Word",
  "Research analysis skills", "Data preperaion, Data visualisation, NGS data analysis, Metagenomics",
  "Laboratory Reaserch skills", "PCR techniques, SDS-PAGE and westernblot, RNA and DNA Isolation, DNA sequencing, Plasmid Transfromations, Protein Synthesis, Plasmid modifications"
)

edu <- tribble(
  ~degree, ~startYear, ~endYear, ~inst, ~where, ~detail,
  "Hogeschool Utrecht", 2017, NA, "Bachelors Life Sciences", "Utrecht", "Biomolecular Research Track",
  "Baudartius College", 2011, 2016, "HAVO Diploma (N&T)", "Zutphen - Gelderland", NA
)

hob <- tribble(
  ~name, ~type, ~detail,
  "Fitness", "Cardiovascular and Hypertrophy based", "Working out keeps me mentally and physically healthy, and I enjoy it very much. As a hobby working out helps with maintaining discipline and a positive connection with ones own body.",
  "Miniature Painting", "Warhammer and Infinity", "Building and painting miniatures is a fun way to escape daily life and an amazing way to create something new. It's a slow process whitch requires allot of patience and very fine motor skills.",
  "Playing Guitar", "Rock, Metal, Alt", "Music is one of my greatest passions in life. I love listening to music and I love to make it. Altough I am a drummer at heart I currently don't have the means to practice that skill so I picked up the guitar which I very much enjoy aswell",
  "Reading", "Paperbacks or Audiobooks","To grow as a person or shortly escape reality reading is one of my favorite choices for a past time activity. From science-fiction to self-help books, ficional romances to scientific works, I enjoy reading it all."
)
