(sec:intro)=
# Interactive ProbLog Book Example #

## About ##

This online book describes the process of building online interactive
[ProbLog] materials using [*Jupyter Book*], and hosting them on
[*GitHub Pages*].
The source of this book can be found in the
[simply-logical/problog-book-template] GitHub repository, which can also serve
as a template and a starting point for building your own ProbLog book.
This book repeats the same content on *four* consecutive pages to exemplify
different source formats and technologies that can be used with the
Jupyter Book platform:
* [Jupyter Notebooks] -- [here](text/bayesian_networks-jnb);
* [Markdown Notebooks][mnb] -- [here](text/bayesian_networks-mnb);
* [Custom Notebooks] (processed with [Jupytext]) --
  [here](text/bayesian_networks-pnb); and
* [Markdown source][mnb] (utilising the [sphinx-problog] extension) --
  [here](text/bayesian_networks-sp-mnb).

In addition to Jupyter Book, we use [`ipywidgets`] and bespoke
[iPython cell magic][magic] to embed interactive ProbLog code boxes that
can either be executed directly in the book with [Thebe] or launched as a
Jupyter Notebook with [MyBinder] -- these approaches require a running
Python kernel to make the ProbLog code executable.
Alternatively, the [sphinx-problog] Jupyter Book extension allows to
embed *native* interactive ProbLog code boxes -- no Python required.
All pages of the book are accompanied by [reveal.js] slides composed
from the sources underlying the respective sections of this book.
Static slides are built with the `jupyter nbconvert` conversion tool -- see
the [`build_slides.sh`] script for more details.
Slides can also be launched with [RISE] from a Jupyter Notebook through
MyBinder to allow interactive and executable content.
Therefore, in our workflow a single source file can possibly produce:
* computational notebooks;
* static and interactive slides; and
* sections of an online document/book.

```{note}
To learn more about executing ProbLog programmes from within Python see the
[*ProbLog as a Python library*] tutorial.
To discover how to embed *native* ProbLog code boxes see the
[sphinx-problog] Jupyter Book extension.
The content of this book and its accompanying slides and notebooks
come from the [*Bayesian networks*] ProbLog tutorial.
```

## Building the Book ##

To build this book you need `jupyter-book` and a collection of Python
packages specific to its content:
* `ipywidgets` -- for Python-based interactive ProbLog code boxes;
* `jupytext` -- to launch pages written in [Markdown Notebooks][mnb]
  in Jupyter;
* `notebook` -- to run Jupyter Notebook;
* `problog` -- for executing ProbLog programmes from within Python;
* `sphinx-problog` -- for creating *native* ProbLog code bexes within
  Jupyter Book; and
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

[magic]: https://ipython.readthedocs.io/en/stable/interactive/magics.html#cell-magics
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
[mnb]: https://jupyterbook.org/file-types/myst-notebooks.html
[Jupyter Notebooks]: https://jupyterbook.org/file-types/notebooks.html
[Custom Notebooks]: https://jupyterbook.org/file-types/jupytext.html
[Jupytext]: https://github.com/mwouts/jupytext
[RISE]: https://rise.readthedocs.io/en/stable/
[`requirements-jb.txt`]: https://github.com/simply-logical/problog-book-template/blob/master/requirements-jb.txt
[`requirements.txt`]: https://github.com/simply-logical/problog-book-template/blob/master/requirements.txt
[sphinx-problog]: https://github.com/simply-logical/sphinx-problog
