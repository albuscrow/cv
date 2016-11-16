#/bin/zsh
if [ "$1" = "print" ]
then
        xelatex ./cv_print.tex backend=bibtex
        xelatex ./cv_cn_print.tex backend=bibtex
        gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=resume_cn_en_print.pdf cv_cn_print.pdf cv_print.pdf
        gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=resume_en_cn_print.pdf cv_print.pdf cv_cn_print.pdf
        cp resume_cn_en_print.pdf resume_en_cn_print.pdf cv_print.pdf cv_cn_print.pdf ~/cv/print/
else
    if [ "$1" = "dig" ]
    then
        xelatex ./cv.tex backend=bibtex
        xelatex ./cv_cn.tex backend=bibtex
        gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=resume_cn_en.pdf cv_cn.pdf cv.pdf
        gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=resume_en_cn.pdf cv.pdf cv_cn.pdf
        cp resume_cn_en.pdf resume_en_cn.pdf cv.pdf cv_cn.pdf ~/cv/dig/

    else
        xelatex ./cv.tex backend=bibtex
        xelatex ./cv_cn.tex backend=bibtex
        gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=resume_cn_en.pdf cv_cn.pdf cv.pdf
        gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=resume_en_cn.pdf cv.pdf cv_cn.pdf
        cp resume_cn_en.pdf resume_en_cn.pdf cv.pdf cv_cn.pdf ~/cv/dig/

        xelatex ./cv_print.tex backend=bibtex
        xelatex ./cv_cn_print.tex backend=bibtex
        gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=resume_cn_en_print.pdf cv_cn_print.pdf cv_print.pdf
        gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=resume_en_cn_print.pdf cv_print.pdf cv_cn_print.pdf
        cp resume_cn_en_print.pdf resume_en_cn_print.pdf cv_print.pdf cv_cn_print.pdf ~/cv/print/
    fi
fi


