## Survey database — schema and provenance

This file documents the structure of `survey_database.csv`, which contains structured metadata for studies surveyed in Khan (2026).

### Schema

| Column | Type | Description |
|--------|------|-------------|
| `citation_key` | string | BibTeX key (matches `../bib/references.bib`). |
| `authors` | string | Surname-first author list, semicolon-separated for >3 authors via "and others". |
| `year` | integer | Year of the cited version (preprint year if no journal version). |
| `venue` | string | Journal, conference, or preprint server. |
| `application_domain` | enum | `return_prediction`, `risk_management`, `portfolio_optimization`, `derivatives`, `microstructure`, `alternative_data`, or a slash-separated combination for cross-domain studies. Also `methodology` and `review` for foundational/review papers. |
| `ml_method` | string | Brief description of the primary ML method. |
| `ml_family` | enum | `tree`, `deep_learning`, `deep_rl`, `nlp`, `hybrid`, `linear_ml`, `interpretability`, `methodology`, `review`, `baseline`. |
| `asset_class` | string | E.g., `US Equities`, `Multi-asset`, `Crypto`, `LOB`. `—` if not applicable. |
| `data_source` | string | E.g., `CRSP`, `Yahoo Finance`, `FI-2010`, `SEC`. |
| `sample_period` | string | Inclusive year range (`YYYY-YYYY`) or `—` if non-empirical. |
| `geography` | string | `US`, `EU`, `China`, `Global`, etc. |
| `primary_metric` | string | Primary performance metric reported. |
| `key_finding` | string | One-sentence summary of the main result. |
| `code_available` | enum | `Y`, `N`, `—` (not applicable). |
| `data_availability` | enum | `public`, `proprietary`, `mixed`, `simulation`, `—`. |
| `rds_score` | int 0–2 or empty | Reproducibility Disclosure Score (see §10.5 of the paper). `+1` if `code_available = Y`, `+1` if `data_availability ∈ {public, simulation}`. Empty for foundational/baseline/methodology papers where the rubric does not apply. |

### Coverage

- Total rows: **119** (excluding header).
- Paper's PRISMA flow target: **227** (see §2).
- Difference: **108 studies** identified through screening but not yet entered into structured form. Population is ongoing.

### Provenance notes

- Rows were extracted from the paper's bibliography and the author's reading notes during 2025–2026. Where the paper cites a study with limited detail (e.g., synthetic-data simulations with no asset class), the corresponding column is filled with `—` rather than guessed.
- `key_finding` summaries are paraphrases of each paper's headline result; they are not verbatim from the source.
- The `code_available` flag reflects public availability at the time the row was added. It is not re-checked automatically — readers spotting newly-released code are encouraged to file a PR.
- For `methodology` rows (foundational ML papers like the LSTM or Transformer original), domain/asset/period are `—` because the paper is not a finance application.
- `rds_score` was computed from the existing `code_available` and `data_availability` fields. The 99 rows with a non-empty score are the "applicable empirical studies" referenced in §10.5; the 20 rows with empty `rds_score` are foundational, baseline, or methodology papers where the rubric does not apply.

### Versioning

When this database is updated, release notes will appear in the GitHub repository's release notes:
- v0.1 (initial release): 119 rows, covering all studies cited in the appendix tables of the paper.
- Future releases will add screened-but-not-yet-entered studies to reach the full 227, plus any studies flagged by readers via Issues.

### License

Released under CC0 1.0 (public domain dedication). You may use, modify, redistribute, and publish derivatives without restriction or attribution, though citing Khan (2026) is appreciated.
