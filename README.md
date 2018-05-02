# template-tcc-latex-univasf

Template em Latex para TCC do curso de Engenharia de Computação da Univasf.
Consulte a [documentação](https://github.com/Gabrielr2508/template-tcc-latex-univasf/blob/master/main.pdf).

# Instruções de como executar e construir o seu documento

# GNU/Linux (linha de comando)

## Instalação do LaTeX

a execução dos comandos de *build* do projeto dependem da prévia instalação
do LaTeX no sistema. No caso de distribuições GNU/Linux, isso geralmente se traduz
na instalação do pacode texlive, utilizando o gerenciador de pacotes da distribuição:

- Archlinux  
	consulte a [documentação](https://wiki.archlinux.org/index.php/TeX_Live)
- distribuições baseadas no Debian  
	consulte a [documentação](https://wiki.debian.org/Latex)
- distribuições baseadas no Red Hat  
	consulte a [documentação](https://fedoraproject.org/wiki/Features/TeXLive)

Geralmente, isso se traduz em executar um comando como o mostrado abaixo, para
o caso do Archlinux:

```shell-session
$ sudo pacman -S texlive-core	
```

ou

```
$ sudo apt install texlive
``` 

## Compilando o documento

Para compilar o projeto, basta executar as linhas a seguir

```shell-session
$ pdflatex -shell-escape main.tex
$ bibtex main.aux
$ pdflatex -shell-escape main.tex
$ pdflatex -shell-escape main.tex
```

O argumento `-shell-escape` é necessário para que o *plugin* utilizado (https://github.com/gpoore/minted)
na geração dos *snippets* de código possa ser executado.

# Considerações

O presente projeto é uma colaboração entre alunos da instituição de ensino Univasf. 
Ele tem como base o pacote [abntex2](https://github.com/abntex/abntex2).
Sinta-se livre para copiar, colar, modificar, etc (a licença será adicionada em breve). 

