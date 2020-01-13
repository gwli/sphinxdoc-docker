pandoc -F pandoc-citeproc << EOT

---
link-citations: true
references:
- id: test
  issued:
    date-parts:
    - - 1989
...

[@test].

EOT
