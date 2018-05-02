# template-tcc-latex-univasf

Template em Latex para TCC do curso de Engenharia de Computação da Univasf.  

Dicas sobre como estruturar o documento e utilizar as características
do template estão comentadas ao longo do código, bem como podem ser observadas
no produto final, o [documento](https://github.com/Gabrielr2508/template-tcc-latex-univasf/blob/feature/documentation/main.pdf).

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

Para que a extensão minted (utilizada nos códigos fontes) possa ser utilizada
é necessário utilizar o [pygments](http://pygments.org), uma biblioteca do Python,
que pode ser instalada através do `pip` (um gerenciador de pacotes do Python), como 
mostrado abaixo

```shell-session
$ pip install pygments
```

Na maior parte das principais distribuições GNU/Linux, isso também
pode ser feito utilizando-se o gerenciador de pacotes da sua distribuição,
como mostrado abaixo, para o caso do archlinux

```shell-session
$ sudo pacman -S python-pygments
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

