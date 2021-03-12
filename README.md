[![Licence][licence-badge]][licence-link]
[![Online][online-badge]][online-link]

[licence-badge]: https://img.shields.io/github/license/simply-logical/problog-book-template.svg
[licence-link]: https://github.com/simply-logical/problog-book-template/blob/master/LICENCE
[online-badge]: https://img.shields.io/badge/read-online-green.svg
[online-link]: http://problog-template.simply-logical.space/

# Interactive ProbLog Book Example #

This repository holds a [*Jupyter Book*] template for building interactive
[ProbLog] books.
The built book is hosted on *GitHub Pages* and is available under
<http://problog-template.simply-logical.space>.
**This webpage describes the process of building interactive ProbLog content
with the aforementioned technology stack.**

## Building the Book ##

1. Pull the book repository
   ```bash
   git clone https://github.com/simply-logical/problog-book-template.git

   cd problog-book-template
   ```
2. Install [*Jupyter Book*](https://pypi.org/project/jupyter-book/)
   (`requirements-jb.txt`) and execution requirements (`requirements.txt`)
   ```bash
   pip install -r requirements-jb.txt
   pip install -r requirements.txt
   ```
3. Build the book
   ```bash
   jb build .
   ```
4. Build the slides
   ```bash
   ./build_slides.sh
   ```
5. Open the html build
   ```bash
   open _build/html/index.html
   ```
   or run it as a server
   ```bash
   python -m http.server --directory _build/html
   open http://localhost:8000
   ```

[*Jupyter Book*]: https://jupyterbook.org/
[ProbLog]: https://dtai.cs.kuleuven.be/problog/
