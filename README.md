# simple-latex-template
🚀 Simple and elegant LaTeX template that boosts your LaTeX'ing speed!

## Keyboard Shortcut

Import the settings in `.vscodes/keybindings.json` to your VSCode, then you can:

* Select some words in latex, then hit `cmd + shift + b` for **bold**
* Select some words in latex, then hit `cmd + shift + i` for *italic*.

## Templates

`template-v1.tex` defines the basic setting & import basic packages for a LaTeX file.

| Environment | Description |
|-------------|-------------|
| `\begin{defition}[arg1]`<br/>`\end{definition}` | A definition, you can fill `arg1` with terminology being defined (optional)(snippet shortcut: `DEF`) |
| `\begin{theorem}[arg1]`<br/>`\end{theorem}`   | A beautiful theorem block with `DarkBlue` color, `arg1` is the name of theorem (optional)(snippet shortcut: `THM`)  |
| `\begin{note}`<br/>`\end{note}` | Yellow background block with orange border on left, write important notes here |
| `\begin{proof}`<br/>`\end{proof}` | Proof Environment |
| `\begin{example}`<br/>`\end{example}` | Example Environment, with *italic texts inside* (snippet shortcut: `EG`) |
| `\begin{solution}`<br/>`\end{solution}` | Solution Environment, with *> End of Solution* at the end (snippet shortcut: `SOL`)|
| `\begin{proposition}[arg1]`<br/>`\end{proposition}`| Proposition Environment, `arg1` for the name of proposition. Text with `DarkBlue` color. |

## Styles

`style_v1` is the general style of all LaTeX files. If you decide to use some other style, do not import `style-v1.tex` in your tex project.

## Fancy Features

### Hide Solutions

By adding `\def\hideSolution{}` at the beginning of the document (before `\input{style-v1.tex}`), you can hide all the solutions from the document!

This mode has very practical use: When reviewing for the exam, you can hide all the solutions and test yourself on the examples on the course.

### Dark Mode

By adding `\input{../theme/dark.tex}` before `\input{style-v1.tex}`, you can convert the latex output into the dark theme!

See `./test/example_dark.pdf` for the actual outcome.
