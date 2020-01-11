Docker sphinxdoc 
################


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

readthedoc server config
=========================

  #. https://docs.readthedocs.io/en/latest/install.html

  
  .. note::
     
     readthedocs/setting/local_settings/prod.py  PRODUCTION_NAME to hostIP
     python manager.py runserver 0.0.0.0:8000
      
   
  #. thre are two docker image sources:

     .. code-block:: bash
        
        #https://github.com/sqawasmi/readthedocs-docker
        docker run -d --name ReadTheDocs -p 8000:8000 shaker/readthedocs

        #https://docs.readthedocs.io/en/latest/install.html
        https://github.com/rtfd/readthedocs-docker-images


  #. https://github.com/yoloseem/awesome-sphinxdoc
     
     - sphinx-autobuild
     - sphinx-Server
       
       .. code-block:: bash
          
          docker pull dldl/sphinx-server
          docker run -t -v "$(pwd)":/web dldl/sphinx-server make html
          #with autobuild enable
          docker run -itd -v "$(pwd)":/web -u $(id -u):$(id -g) -p 8000:8000 --name sphinx-server dldl/sphinx-server
     
