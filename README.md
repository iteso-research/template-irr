# ITESO Internal Research Report -- LaTeX Template

A LaTeX template for writing Internal Research Reports (IRR) for the **Doctoral Program in Engineering Sciences** at [ITESO](https://www.iteso.mx/), Universidad Jesuita de Guadalajara.

This is an **unofficial**, open source reimplementation of the original MS Word template developed by Prof. J. E. Rayas-Sanchez. It preserves the same structural and typographic conventions while leveraging LaTeX automation through [Overleaf](https://www.overleaf.com/).

## Repository/Project Structure

```
template-irr/
  main.tex                  # Report content (edit this file)
  references.bib            # Bibliography entries (BibTeX)
  latexmkrc                 # Build config: adds style/ to TEXINPUTS
  style/
    iteso-irr.cls           # Document class (loads article + style defs)
    iteso-phdengsci.def     # All formatting: geometry, headers, captions,
                            #   cover page, first page, packages
  figures/
    iteso-logo.png          # ITESO institutional logo
  LICENSE                   # LPPL v1.3c
  README.md
```

**Content and presentation are separated.** Authors write only in `main.tex` and `references.bib`. The class and style files should not be modified for individual reports.

## Quick Start

There are mainly two ways of utilising this template: 

1. Online editing and compilation. Strong suggestion is [overleaf](www.overleaf.com)
2. Offline/Local editing and compilation.

### Overleaf (recommended)

1. Download this repository as a ZIP file (Code > Download ZIP).
2. In Overleaf, click **New Project > Upload Project** and select the ZIP.
3. Open `main.tex`, edit the metadata block, and start writing.

### Local compilation

```bash
git clone https://github.com/iteso-research/template-irr.git
cd template-irr
export TEXINPUTS="./style//:"
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

The `latexmkrc` file configures the `style/` path automatically for `latexmk`:

```bash
latexmk -pdf main.tex
```

## Features

- **Automated cover page and title page** generated from five metadata commands (`\ReportTitle`, `\ReportAuthors`, `\ReportFileName`, `\ReportDate`, `\CopyrightYear`).
- **IEEE-style formatting**: Roman-numeral sections, lettered subsections, `Fig. N.` and `TABLE N` captions, IEEE citation format.
- **BibTeX bibliography** with example entries across 16 reference categories: journal papers, books, book chapters, conference papers (engineering and ML), arXiv preprints, technical reports, datasets, software repositories, open source software, handbooks, standards, patents, online sources, theses, and internal reports.
- **Algorithm pseudocode** via `algorithm2e` (loaded by the class).
- **Source code listings** via `listings` with syntax highlighting and line numbers (loaded by the class).
- **Figure export guidance** for Matlab, Python (matplotlib), R (ggplot2), Jupyter notebooks, Inkscape, draw.io, and TikZ/PGFPlots.
- **Reproducibility section** with a structured template covering software environment, hardware, stochastic control, data, and a ready-to-use statement block.
- **Zotero integration** workflow documented for Better BibTeX export to Overleaf via GitHub sync.

## How It Differs from the Word Template

| # | Word version | LaTeX version |
|---|---|---|
| 1 | Two files per report (text + figures) with manual page sync | Single `main.tex` with automatic pagination |
| 2 | References via manually formatted endnotes | BibTeX with automatic formatting and numbering |
| 3 | Manual equation numbering with tab alignment | Automatic numbering and cross-referencing |
| 4 | Examples from microwave engineering only | Examples from engineering and ML/AI/data science |
| 5 | Three sections on Word-specific workflows | Sections on algorithms, code listings, reproducibility |
| 6 | No pseudocode or code listing support | `algorithm2e` and `listings` loaded by the class |
| 7 | Appendix lists Matlab and Visio files only | Adds Python, Jupyter, R, YAML, model checkpoints, Docker |
| 8 | No reproducibility guidance | Structured section with five subsections and a statement template |
| 9 | Figure insertion via Windows clipboard paste formats | Figure insertion via file export (PDF from any tool) |

### Advantages of this LaTeX version

- **Zotero works in the browser.** The Zotero plugin does not function in Word Online (Office 365 web app). In Overleaf, the BibTeX workflow works identically online and offline.
- **Real version control.** Plain text source files produce meaningful line-by-line diffs in Git. Word's Version History shows only timestamped snapshots with no line-level comparison.
- **Formatting cannot be broken by authors.** The class file is a separate dependency. Writing in `main.tex` cannot corrupt styles, import foreign formatting, or overwrite fields.
- **Multi-domain examples.** The template serves students across all research areas, not just one group's domain.
- **Zero installation in Overleaf.** The full feature set runs in a browser. Word's full capabilities (Zotero plugin, macro-enabled templates) require the desktop application.

## Writing a New Report

1. Edit the metadata block at the top of `main.tex`:

```latex
\ReportTitle{Your Report Title Here}
\ReportAuthors{Your Name}
\ReportFileName{PhDEngScITESO-YY-NN-R}
\ReportDate{Month DD, YYYY}
\CopyrightYear{YYYY}
```

2. Replace the sample content in `main.tex` with your report. Keep the structural sections (Introduction, Conclusions, Acknowledgement, References) and add or remove numbered sections as needed.

3. Add your bibliography entries to `references.bib` or replace it with a Zotero-exported file.

4. Place figures as PDF files in the project directory and include them with `\includegraphics`.

5. Compile (Overleaf compiles automatically; locally use `latexmk -pdf main.tex`).

### Filename convention

Report identifiers follow the format `PhDEngScITESO-YY-NN-R`, where `YY` is the last two digits of the year of publication (approval date by the thesis advisor) and `NN` is a consecutive number assigned by the Chair of the PhD program.

## Zotero Integration

The recommended workflow for managing references:

1. Install the [Better BibTeX](https://retorque.re/zotero-better-bibtex/) plugin in Zotero.
2. Right-click a Zotero collection and select **Export Collection**, choosing **Better BibTeX** as the format and enabling **Keep updated**.
3. Save the exported file as `references.bib` in the project directory.
4. In Overleaf, upload the file directly or synchronize it via a linked GitHub repository.

Any reference added or edited in Zotero is then automatically available in the LaTeX project upon recompilation.

## Requirements

- **Overleaf**: No local installation needed. Upload the project and compile.
- **Local**: A TeX Live or MiKTeX distribution with the following packages (all standard): `mathptmx`, `geometry`, `fancyhdr`, `titlesec`, `caption`, `subcaption`, `booktabs`, `hyperref`, `enumitem`, `algorithm2e`, `listings`, `amsmath`, `amssymb`, `bm`, `cite`, `setspace`, `indentfirst`.

## License

This work is distributed under the [LaTeX Project Public License](https://www.latex-project.org/lppl.txt), version 1.3c or later. You are free to use, copy, modify, and distribute this template, provided that modified versions are distributed under a different name.

## Contributing

Issues and pull requests are welcome. If you modify the class or style files, please test compilation on Overleaf and verify that no warnings or errors are produced before submitting.

---

This template preserves the formatting standard established by:

> J. E. Rayas-Sanchez, "A New MS-Word Template for Internal Research Reports of the Doctoral Program in Engineering Sciences at ITESO," Internal Report PhDEngScITESO-15-00-R, ITESO, Tlaquepaque, Mexico, May 2015.

LaTeX implementation by J. Francisco Munoz-Elguezabal (franciscome@iteso.mx).
