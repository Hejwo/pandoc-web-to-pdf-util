## What the problem ?
Do you ever had problem with converting webpages to pdf in fly ?  
There are number of tools to do so on-line, but :   
- None of them seem to work properly
- Your sending some information to a third party, which may be a problem for some of us. 

## What's the solution ? 
[Pandoc](https://pandoc.org/) is a great option for various conversions between documents.
It's only disadvantage is dependence on a lot of command line utils for LaTeX conversion.  
So, this procject is about installing all PanDoc stuff in docker image so you don't have to do it yourself.

## How to use it ?  
- Install Docker > 17 
- Download `pdfMe.sh` into your `/usr/local/bin`
- Use it! `./pdfMe.sh http://site.to.download fileName.pdf`
- File will be auto created in invocation dir (`$(pwd)`)
