#! /bin/bash

cd code/originalcode

python3 appendFile.py ../../data/originaldata/PDF/hello.pdf ../../data/originaldata/ZIP/txt_files.zip ../../result/pdf_zip.zip.pdf
python3 fixZIPOffsets.py ../../result/pdf_zip.zip.pdf
python3 appendFile.py ../../data/originaldata/ZIP/txt_files.zip ../../data/originaldata/PDF/hello.pdf ../../result/zip_pdf.pdf.zip
python3 appendFile.py ../../data/originaldata/PDF/hello.pdf ../../data/originaldata/JAR/hello.jar ../../result/pdf_jar.jar.pdf
python3 appendFile.py ../../data/originaldata/GIF/hello.gif ../../data/originaldata/PHP/hello.php ../../result/gif_php.php.gif
python3 appendFile.py files/gif_js_template.gif ../../data/originaldata/JS/hello.js ../../result/gif_js.js.gif
python3 createPDF_ZIP.py ../../data/originaldata/PDF/hello.pdf ../../data/originaldata/ZIP/txt_files.zip ../../result/pdf_zip_nested.zip.pdf
python3 createJS_JAVA.py ../../data/originaldata/JS/hello.js ../../data/originaldata/JAVA/Hello.java ../../result/Hello.java.html
python3 createJPEG_JS.py ../../data/originaldata/JPEG/hello.jpg ../../data/originaldata/JS/hello.js ../../result/jpeg_js.js.jpg
python3 createJPEG_ZIP.py ../../data/originaldata/JPEG/hello.jpg ../../data/originaldata/ZIP/txt_files.zip ../../result/jpeg_zip.zip.jpg
python3 createJPEG_PDF.py ../../data/originaldata/JPEG/hello.jpg ../../data/originaldata/PDF/hello.pdf ../../result/jpeg_pdf.pdf.jpg
python3 createSVG_JS.py ../../data/originaldata/SVG/hello.svg ../../data/originaldata/JS/hello.js ../../result/svg_js.svg
python3 createPDF_HTML.py ../../data/originaldata/PDF/hello.pdf ../../data/originaldata/HTML/hello.html ../../result/pdf_html.html.pdf
python3 createAmbiguousPDF.py ../../data/originaldata/JPEG/red.jpg ../../data/originaldata/JPEG/green.jpg ../../result/two_images.pdf
python3 createAmbiguousPDF.py ../../data/originaldata/JPEG/red.jpg ../../data/originaldata/JPEG/green.jpg ../../data/originaldata/JPEG/blue.jpg ../../result/three_images.pdf
python3 createAmbiguousGIF.py ../../data/originaldata/JPEG/red.jpg ../../data/originaldata/JPEG/green.jpg ../../result/two_images.gif
python3 createAmbiguousZIP.py ../../data/originaldata/TXT/file1.txt ../../data/originaldata/TXT/file2.txt ../../data/originaldata/TXT/file3.txt ../../data/originaldata/TXT/file4.txt ../../result/four_zips.zip
