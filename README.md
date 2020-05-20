# CheckResearch.org [Experiment](https://checkresearch.org/Experiment/View/69b1936d-c05a-4b10-b4f6-492593fd0c3e)

 Publication ["Polyglot and Ambiguous Files"](https://dblp.uni-trier.de/search?q=Polyglot+and+Ambiguous+Files) by "Paul Kalauner"

This work shows how vague aspects of file format specifications can lead to *polyglot* and *ambiguous* files.
*Polyglot* files combine multiple files of *different* formats into one file. Depending on the program that opens the file, the file will be processed accordingly to the specific file format.
*Ambiguous files* (also referred to as *schizophrenic files* in some works) do not contain multiple file formats, but combine multiple data of the *same* file format. Different programs therefore read different data as if different files (of the same format) were opened.

## Experiment Setup

### Experiment Content

The experiment contains the following polyglot and ambiguous files. If the structure of the file is adapted from another work the reference is stated next to the corresponding file.

- Polyglot files
    - Concatenation
        - PDF-ZIP/JAR
        - ZIP-PDF
        - GIF-PHP
    - Javascript-Java [1]
    - GIF-Javascript [1]
    - JPEG-Javascript [2]
    - JPEG-ZIP
    - JPEG-PDF [3]
    - PDF-HTML
    - PDF-ZIP (nested) [4]
    - SVG-Javascript
- Ambiguous files
    - GIF [5]
    - PDF [5, 1]
    - ZIP [5]

### Hardware/Software

The experiment was conducted on Mac OS 10.15.4 and on a Windows 10 VM running on this machine. On these platforms several programs have been used to evaluate the compability of the created files.
All scripts were executed with Python 3.7.3.

##### Hardware Mac OS
- 2,3 GHz 8-Core Intel Core i9
- 16 GB 2400 MHz DDR4 RAM

##### Hardware Windows 10 VM
- 1 processor core
- 4 GB RAM

##### Used software

The table below shows the programs which were used to open the created files.

<table>
<tr><th>Image viewers, PDF readers & browsers </th><th>ZIP tools</th></tr>
<tr><td>

| Program                  	| Version    	| Platform    	|
|-------------------------	|------------	|--------------	|
| Apple Preview           	| 11.0       	| Mac OS 10.15 	|
| Windows Photos          	| 2020.19081 	| Windows 10   	|
| Universal Viewer        	| 5.7.3      	| Windows 10   	|
| GIMP                    	| 2.10.18    	| Windows 10   	|
| Adobe Acrobat Reader DC 	| 2020.006   	| Mac OS 10.15 	|
| Sumatra PDF             	| 3.2        	| Windows 10   	|
| jPDFViewer              	| v2019R1    	| Windows 10   	|
| Safari                  	| 13.0.5     	| Mac OS 10.15 	|
| Google Chrome           	| 80.0.3987  	| Mac OS 10.15 	|
| Mozilla Firefox         	| 75.0       	| Windows 10   	|
| Microsoft Edge          	| 42.17134   	| Windows 10   	|

</td><td>

| ZIP tool              	| Version 	| Platform     	|
|-----------------------	|---------	|--------------	|
| Apple Archive Utility 	| 10.15   	| Mac OS 10.15 	|
| The Unarchiver        	| 4.2.0   	| Mac OS 10.15 	|
| Command Line `unzip`    	| 6.00    	| Mac OS 10.15 	|
| Python `zifile` module  	| 3.8.2   	| Mac OS 10.15 	|
| Java `ZipInputStream`   	| 13.0.2  	| Mac OS 10.15 	|
| PHP `ZipArchive`        	| 7.3.15  	| Mac OS 10.15 	|
| Windows Explorer      	| 1803    	| Windows 10   	|
| WinRAR                	| 5.90    	| Windows 10   	|
| 7zip                  	| 19.00   	| Windows 10   	|

</td></tr> </table>

Describe your Hardware & Software setup

## Experiment Assumptions

No significant assumptions

## Preconditions

##### Required python modules
- `createAmbiguousPDF.py`
    - `Pillow==7.0.0`
- `createAmbiguousGIF.py`
    - `imageio==2.8.0`

These modules can be installed by running the following command:

```
pip install Pillow==7.0.0 imageio==2.8.0
```

## Experiment Steps

The experiment contains multiple polyglot and ambiguous files. To create the files in the `result` directory, the following commands have to be executed.

Note that the working directory for all of the following commands should be `code/originalcode`.

### Polyglots

PDF-ZIP

```
python3 appendFile.py ../../data/originaldata/PDF/hello.pdf ../../data/originaldata/ZIP/txt_files.zip ../../result/pdf_zip.zip.pdf
python3 fixZIPOffsets.py ../../result/pdf_zip.zip.pdf
```

ZIP-PDF

```
python3 appendFile.py ../../data/originaldata/ZIP/txt_files.zip ../../data/originaldata/PDF/hello.pdf ../../result/zip_pdf.pdf.zip
```

PDF-JAR

```
python3 appendFile.py ../../data/originaldata/PDF/hello.pdf ../../data/originaldata/JAR/hello.jar ../../result/pdf_jar.jar.pdf
```

GIF-PHP

```
python3 appendFile.py ../../data/originaldata/GIF/hello.gif ../../data/originaldata/PHP/hello.php ../../result/gif_php.php.gif
```

GIF-JS

```
python3 appendFile.py files/gif_js_template.gif ../../data/originaldata/JS/hello.js ../../result/gif_js.js.gif
```

PDF-ZIP (nested)

```
python3 createPDF_ZIP.py ../../data/originaldata/PDF/hello.pdf ../../data/originaldata/ZIP/txt_files.zip ../../result/pdf_zip_nested.zip.pdf
```

JS-JAVA

```
python3 createJS_JAVA.py ../../data/originaldata/JS/hello.js ../../data/originaldata/JAVA/Hello.java ../../result/Hello.java.html
```

JPEG-JS

```
python3 createJPEG_JS.py ../../data/originaldata/JPEG/hello.jpg ../../data/originaldata/JS/hello.js ../../result/jpeg_js.js.jpg
```

JPEG-ZIP

```
python3 createJPEG_ZIP.py ../../data/originaldata/JPEG/hello.jpg ../../data/originaldata/ZIP/txt_files.zip ../../result/jpeg_zip.zip.jpg
```

JPEG-PDF

```
python3 createJPEG_PDF.py ../../data/originaldata/JPEG/hello.jpg ../../data/originaldata/PDF/hello.pdf ../../result/jpeg_pdf.pdf.jpg
```

SVG-JS

```
python3 createSVG_JS.py ../../data/originaldata/SVG/hello.svg ../../data/originaldata/JS/hello.js ../../result/svg_js.svg
```

PDF-HTML

```
python3 createPDF_HTML.py ../../data/originaldata/PDF/hello.pdf ../../data/originaldata/HTML/hello.html ../../result/pdf_html.html.pdf
```

### Ambiguous files

PDF (two images in one PDF)

```
python3 createAmbiguousPDF.py ../../data/originaldata/JPEG/red.jpg ../../data/originaldata/JPEG/green.jpg ../../result/two_images.pdf
```

PDF (three images in one PDF)

```
python3 createAmbiguousPDF.py ../../data/originaldata/JPEG/red.jpg ../../data/originaldata/JPEG/green.jpg ../../data/originaldata/JPEG/blue.jpg ../../result/three_images.pdf
```

GIF

```
python3 createAmbiguousGIF.py ../../data/originaldata/JPEG/red.jpg ../../data/originaldata/JPEG/green.jpg ../../result/two_images.gif
```

ZIP

```
python3 createAmbiguousZIP.py ../../data/originaldata/TXT/file1.txt ../../data/originaldata/TXT/file2.txt ../../data/originaldata/TXT/file3.txt ../../data/originaldata/TXT/file4.txt ../../result/four_zips.zip
```

## Results

After the files were created they can be opened with the programs mentioned in the [experiment setup](#Experiment-setup). The tables below show the compatibility with the tools and what contents are displayed.

| Image viewer     	|      ambiguous GIF      	| GIF-PHP 	| JPEG-JS 	| JPEG-PDF 	| JPEG-ZIP 	|
|------------------	|:-----------------------:	|:-------:	|:-------:	|:--------:	|:--------:	|
| Apple Preview    	|        Red image        	|    ✓    	|    ✓    	|     ✓    	|     ✓    	|
| Windows Photos   	|        Red image        	|    ✓    	|    ✓    	|     ✓    	|     ✓    	|
| Universal Viewer 	|        Red image        	|    ✓    	|    ✓    	|     ✓    	|     ✓    	|
| GIMP             	| Both images (as layers) 	|    ✓    	|    ✓    	|     ✓    	|     ✓    	|
| Safari           	|        Red image        	|    ✓    	|    ✓    	|     ✓    	|     ✓    	|
| Google Chrome    	|        Red image        	|    ✓    	|    ✓    	|     ✓    	|     ✓    	|
| Mozilla Firefox  	|        Red image        	|    ✓    	|    ✓    	|     ✓    	|     ✓    	|
| Microsoft Edge   	|        Red image        	|    ✓    	|    ✓    	|     ✓    	|     ✓    	|

| PDF reader              	| Ambig. PDF (3 images) 	| Ambig. PDF (2 images) 	| PDF-ZIP/JAR 	| PDF-ZIP (nested) 	| ZIP-PDF 	| JPEG-PDF 	| PDF-HTML 	|
|-------------------------	|:---------------------:	|:---------------------:	|:-----------:	|:----------------:	|:-------:	|:--------:	|:--------:	|
| Adobe Acrobat Reader DC 	|       Red image       	|       Red image       	|      ✓      	|         ✓        	|    ✗    	|     ✗    	|     ✗    	|
| Apple Preview           	|      Green image      	|      Green image      	|      ✓      	|         ✓        	|    ✓    	|     ✓    	|     ✓    	|
| Sumatra PDF             	|       Blue image      	|       Red image       	|      ✓      	|         ✓        	|    ✓    	|     ✓    	|     ✓    	|
| Universal Viewer        	|       Red image       	|       Red image       	|      ✓      	|         ✓        	|    ✓    	|     ✓    	|     ✓    	|
| jPDF                    	|       Red image       	|      Green image      	|      ✓      	|         ✓        	|    ✓    	|     ✓    	|     ✓    	|
| Safari                  	|      Green image      	|      Green image      	|      ✓      	|         ✓        	|    ✓    	|     ✓    	|     ✓    	|
| Google Chrome           	|       Red image       	|      Green image      	|      ✓      	|         ✓        	|    ✓    	|     ✓    	|     ✓    	|
| Mozilla Firefox         	|       Red image       	|       Red image       	|      ✓      	|         ✓        	|    ✓    	|     ✓    	|     ✓    	|
| Microsoft Edge          	|           ✗           	|           ✗           	|      ✓      	|         ✓        	|    ✓    	|     ✓    	|     ✓    	|

| ZIP tool              	| Ambig. ZIP 	| PDF-ZIP 	| PDF-ZIP (nested) 	| ZIP-PDF 	| JPEG-ZIP 	|
|-----------------------	|:-------------:	|:-------:	|:----------------:	|:-------:	|:--------:	|
| Apple Archive Utility 	|     File 4    	|    ✗    	|         ✗        	|    ✓    	|     ✗    	|
| The Unarchiver        	|     File 4    	|    ✗    	|         ✗        	|    ✓    	|     ✓    	|
| Command Line unzip    	|     File 4    	|    ✓    	|         ✓        	|    ✓    	|     ✓    	|
| Python zifile module  	|     File 4    	|    ✓    	|         ✓        	|    ✓    	|     ✓    	|
| Java ZipInputStream   	|     File 1    	|    ✗    	|         ✗        	|    ✓    	|     ✗    	|
| PHP ZipArchive        	|     File 3    	|    ✓    	|         ✓        	|    ✓    	|     ✓    	|
| Windows Explorer      	|     File 4    	|    ✓    	|         ✓        	|    ✓    	|     ✓    	|
| WinRAR                	|     File 4    	|    ✓    	|         ✓        	|    ✓    	|     ✓    	|
| 7zip                  	|     File 1    	|    ✓    	|         ✓        	|    ✓    	|     ✓    	|

| Browser         	| PDF-HTML 	| GIF-JS 	| JPEG-JS 	| JS-Java 	| SVG-JS 	|
|-----------------	|:--------:	|:------:	|:-------:	|:-------:	|:------:	|
| Safari          	|     ✓    	|    ✓   	|    ✓    	|    ✓    	|    ✓   	|
| Google Chrome   	|     ✓    	|    ✓   	|    ✓    	|    ✓    	|    ✓   	|
| Mozilla Firefox 	|     ✓    	|    ✓   	|    ✓    	|    ✓    	|    ✓   	|
| Microsoft Edge  	|     ✓    	|    ✓   	|    ✓    	|    ✓    	|    ✓   	|

## References

[1] A. Albertini, “Funky Files, the Novella!,” PoC || GTFO 0x07, 2015.

[2] G. Heyes, “Bypassing CSP using polyglot JPEGs | PortSwigger Research,” 2016. [Online]. Available: https://portswigger.net/research/bypassing-csp-using-polyglot-jpegs. [Accessed: 19-May-2020].

[3] A. Albertini, “This PDF is a JPEG; or, This Proof of Concept is a Picture of Cats,” PoC || GTFO 0x03, 2014.

[4] J. Wolf, “This ZIP is also a PDF,” PoC || GTFO 0x01, 2013.

[5] A. Albertini and G. Coldwind, “Schizophrenic Files Presentation Slides Area41,” 2014. [Online]. Available: https://gynvael.coldwind.pl/?id=539. [Accessed: 19-May-2020].
