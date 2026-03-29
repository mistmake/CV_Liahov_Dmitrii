# CV Liahov Dmitrii

LaTeX-проект резюме на кастомном шаблоне `russell`.

## Как собирать

Важно: этот шаблон нужно собирать через `xelatex`, а не через `pdflatex`.
Причина в том, что шаблон использует `fontspec` и `unicode-math`.

Самый простой способ:

```bash
make
```

или

```bash
make pdf
```

Готовый файл появится как `resume.pdf`.

## Полезные команды

Собрать PDF:

```bash
make pdf
```

Собрать PDF с `biber`:
используй это, если включишь публикации или библиографию.

```bash
make pdf-bib
```

Очистить временные файлы сборки:

```bash
make clean
```

## Ручная сборка

Если по какой-то причине не хочется использовать `make`, можно собрать вручную:

```bash
xelatex -interaction=nonstopmode -halt-on-error resume.tex
xelatex -interaction=nonstopmode -halt-on-error resume.tex
```

Для версии с библиографией:

```bash
xelatex -interaction=nonstopmode -halt-on-error resume.tex
biber resume
xelatex -interaction=nonstopmode -halt-on-error resume.tex
xelatex -interaction=nonstopmode -halt-on-error resume.tex
```
