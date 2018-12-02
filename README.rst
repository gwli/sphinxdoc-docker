#Docker sphinxdoc with


.. code-block:: bash
   
   sphinx-docker make pdf

#. How to add latex chinese support

   - findout chinese fonts

   .. code-block:: bash
      
      fc-list :lang=zh-cn 

   - add xx.tff name to *setmainfont* of conf.py

     .. code-block:: python
        :emphasize-lines: 10-16
     
        latex_elements = {
        # The paper size ('letterpaper' or 'a4paper').
        'papersize': 'a4paper',
        
        # The font size ('10pt', '11pt' or '12pt').
        #'pointsize': '10pt',
        
        # Additional stuff for the LaTeX preamble.
        'preamble': '''
        \usepackage{CJK}
        \usepackage{fontspec, xunicode, xltxtra}
        \usepackage{indentfirst}
        \setlength{\parindent}{2em}
        \setmainfont{gkai00mp.ttf}
        \XeTeXlinebreaklocale "zh"
        \XeTeXlinebreakskip = 0pt plus 1pt
        ''',
        
        # Latex figure (float) alignment
        #'figure_align': 'htbp',
        }


#. Latex

   .. list-table::

      texlive-publishers
      texlive-science
      texlive-pstricks
      texlive-pictures
