TARGETS += en/rulebook.pdf
CLEAN += $(addprefix en/*.,pdf aux dvi log out fff ttt)

en/rulebook.pdf: $(addprefix en/,${FILES}) $(images_targets)
	TEXINPUTS=".:en/:" pdflatex -output-directory en en/rulebook.tex
	TEXINPUTS=".:en/:" pdflatex -output-directory en en/rulebook.tex
