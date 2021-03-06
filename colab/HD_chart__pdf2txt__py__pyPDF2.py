# -*- coding: utf-8 -*-
"""HD__py__pyPDF2.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1LuFGa0G7Ysd3PZPqv6GUjtOUkJMVPR-3

# Convert `.pdf` to `.txt` with `python` using `PyPDF2`
`v: 2021-08-15T2053 AU`

---

## Setup environment
"""

## run first time
!pip install PyPDF2

import PyPDF2

## Option A 
#import os
# os.chdir(os.path.dirname(__file__)) ## change dir to location of THIS file
#print(os.getcwd())

## option B
#import pathlib
#current_dir = pathlib.Path(__file__).parent
#current_file = pathlib.Path(__file__)

"""---

## Once system is setup, upload the `.pdf` file to `google colab` environment:

(see URL: <https://stackoverflow.com/questions/48841500/how-to-upload-my-dataset-into-google-colab>)
"""

from google.colab import files

## actual file upload
files.upload()

"""---


## Convert the uploaded file to `pdf` object using `PyPDF2` file reader
"""

input_pdf_file_name = 'hd__complete_rave_iching.pdf'
my_pdf_in = PyPDF2.PdfFileReader(input_pdf_file_name, 'rb')

## check files
!ls {input_pdf_file_name}

"""---

## Check contents of digested `pdf` file
"""

## check pdf encription
# my_pdf.isEncrypted

## extract text from a specified pdf page
my_pdf_page = my_pdf_in.getPage(8)
print(my_pdf_page.extractText()[1:80])

"""---

## Prepare to extract text from the specified file

* get number of pages
* name the output text file for contents
"""

my_pdf_pages = my_pdf_in.getNumPages() ## get <number of pages> in <pdf file>
out_file_name = 'hd_pdf_out.txt' ## name <output file>

"""---

## Iterate through pdf up to number of pages:
* extract `<text>`
* write `<text>` to `<output file>`
* prints `done!` when done
"""

my_pdf_out = open(out_file_name, 'w') # open <output file> for writing

for pageNum in range(my_pdf_pages): # iterate all pages
  #print(pageNum) # info
  my_page = my_pdf_in.getPage(pageNum) # get a single <page> from <pdf file>
  my_page_text = my_page.extractText() # extract <text> from <page>
  my_pdf_out.write(my_page_text) # write <text> to <output file>
print('done!')

"""---

## Check if file was created in the system, {dynamically}
"""

!ls {out_file_name}

"""---

## That was it, well done! To download the file, simply click the Folder icon `[]` on the left menu, and locate the output file.
"""