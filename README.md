# Machine Learning in Quantitative Finance: A Systematic Review (2015-2025)

**Author:** Akram Khan  
**ORCID:** [0009-0002-7521-8648](https://orcid.org/0009-0002-7521-8648)  
**SSRN:** [Abstract ID 6562398](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=6562398)

## Abstract

We review 227 studies applying machine learning to quantitative finance, published between 2015 and 2025. We organize them into a two-dimensional taxonomy covering six application domains (return prediction, risk management, portfolio optimization, derivatives pricing, market microstructure, and alternative data) and five methodological families (tree-based methods, deep learning, reinforcement learning, NLP, and hybrids).

Our main findings are that tree-based ensembles remain hard to beat for cross-sectional prediction, that the strongest ML improvements over traditional methods are in derivatives pricing and volatility forecasting rather than return prediction, that reinforcement learning for portfolio management has attracted more papers than evidence, and that only about one in five studies shares code.

## Repository Contents

```
paper/
  main.tex              # Master LaTeX file
  sections/             # All paper sections (12 files)
  bib/references.bib    # Bibliography (70+ entries)
  main.pdf              # Compiled paper (45 pages)
```

## Compiling

```bash
# Requires tectonic or pdflatex + bibtex
tectonic main.tex
```

## Citation

```bibtex
@techreport{Khan2026survey,
  title={Machine Learning in Quantitative Finance: A Systematic Review of Methods, Applications, and Open Challenges (2015--2025)},
  author={Khan, Akram},
  institution={SSRN},
  number={6562398},
  year={2026}
}
```

## License

MIT
