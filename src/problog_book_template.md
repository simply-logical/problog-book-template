(sec:intro)=
# Interactive ProbLog Book Example #

## About ##

This online book describes the process of building online interactive
[ProbLog] materials using [*Jupyter Book*], and hosting them on
[*GitHub Pages*].
The source of this book can be found in the
[simply-logical/problog-book-template] GitHub repository, which can also serve
as a template and a starting point for building your own ProbLog book.
This book repeats the same content on *three* consecutive pages to exemplify
different source formats that can be used with the Jupyter Book platform:
* [Jupyter Notebooks];
* [Markdown Notebooks]; and
* [Custom Notebooks] (processed with [Jupytext]).

In addition to Jupyter Book, we use [`ipywidgets`] to embed interactive code
boxes (useful to operationalise ProbLog code), which can either be executed
directly in the book with [Thebe] or by launching the selected page as a
Jupyter Notebook with [MyBinder].
Selected pages of the book are accompanied by [reveal.js] slides composed
from the Jupyter Notebooks and [Markdown Notebooks] that are also sources
underlying some sections of this book.
Static slides are built with the `jupyter nbconvert` conversion tool -- see
the [`build_slides.sh`] script for more details.
Slides can also be launched with [RISE] from a Jupyter Notebook through
MyBinder to allow interactive and executable content.
Therefore, in our workflow a single source file produces:
* computational notebooks;
* static and interactive slides; and
* sections of an online document/book.

```{note}
To learn more about executing ProbLog programmes from within Python see the
[*ProbLog as a Python library*] tutorial.
The content of this book and its accompanying slides and notebook
comes from the [*Bayesian networks*] ProbLog tutorial.
```

## Building the Book ##

To build this book you need `jupyter-book` and a collection of Python
packages specific to its content:
* `ipywidgets` -- for interactive ProbLog code boxes;
* `jupytext` -- to launch pages written in [Markdown Notebooks] in Jupyter;
* `notebook` -- to run Jupyter Notebook;
* `problog` -- for executing ProbLog programmes; and
* `rise` -- to launch interactive and executable reveal.js presentations.

You can either install them individually with `pip install ...` or by using
our dedicated [`requirements-jb.txt`] and [`requirements.txt`] files:
```bash
pip install -r requirements-jb.txt
pip install -r requirements.txt
```
Then, the book can be built with `jb build .` and the static slides with
`./build_slides.sh`.

:::{note}
For more details about installing necessary dependencies and building this
book see the [`README.md`] file included in the [GitHub repository] that
holds the source of this book.
:::

[ProbLog]: https://dtai.cs.kuleuven.be/problog/
[simply-logical/problog-book-template]: https://github.com/simply-logical/problog-book-template
[*Jupyter Book*]: https://jupyterbook.org/
[*GitHub Pages*]: https://pages.github.com/
[GitHub repository]: https://github.com/simply-logical/problog-book-template
[`README.md`]: https://github.com/simply-logical/problog-book-template#building-the-book
[`build_slides.sh`]: https://github.com/simply-logical/problog-book-template/blob/master/build_slides.sh
[`ipywidgets`]: https://ipywidgets.readthedocs.io/
[*ProbLog as a Python library*]: https://dtai.cs.kuleuven.be/problog/tutorial/advanced/01_python_interface.html
[*Bayesian networks*]: https://dtai.cs.kuleuven.be/problog/tutorial/basic/02_bayes.html
[Thebe]: https://jupyterbook.org/interactive/launchbuttons.html#live-interactive-pages-with-thebelab
[MyBinder]: https://jupyterbook.org/interactive/launchbuttons.html#binder-buttons-for-your-pages
[reveal.js]: https://github.com/hakimel/reveal.js/
[Markdown Notebooks]: https://jupyterbook.org/file-types/myst-notebooks.html
[Jupyter Notebooks]: https://jupyterbook.org/file-types/notebooks.html
[Custom Notebooks]: https://jupyterbook.org/file-types/jupytext.html
[Jupytext]: https://github.com/mwouts/jupytext
[RISE]: https://rise.readthedocs.io/en/stable/
[`requirements-jb.txt`]: https://github.com/simply-logical/problog-book-template/blob/master/requirements-jb.txt
[`requirements.txt`]: https://github.com/simply-logical/problog-book-template/blob/master/requirements.txt
