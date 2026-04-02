import easyocr
from pdf2image import convert_from_path
import numpy as np

pdfs = [
    "img20260221_13004004.pdf",
    "img20260221_13031656.pdf",
    "img20260221_13035502.pdf",
    "img20260221_13065793.pdf",
    "img20260221_13074586.pdf",
    "img20260221_13085092.pdf",
    "img20260221_13100722.pdf",
    "img20260221_13105705.pdf",
    "img20260221_13113554.pdf",
    "img20260221_13122176.pdf",
    "img20260221_13130084.pdf",
    "img20260221_13134092.pdf",
    "img20260221_13141881.pdf",
    "img20260221_13150057.pdf",
    "img20260221_13155936.pdf",
    "img20260221_13163577.pdf",
    "img20260221_13171825.pdf",
    "img20260221_13181901.pdf",
    "img20260221_13185497.pdf",
    "img20260221_13194310.pdf",
    "img20260221_13202460.pdf",
    "img20260221_13211579.pdf",
    "img20260221_13215611.pdf",
    "img20260221_13223556.pdf",
    "img20260221_13231488.pdf",
    "img20260221_13235832.pdf",
    "img20260221_13243525.pdf",
    "img20260221_13251372.pdf",
    "img20260221_13255128.pdf",
    "img20260221_13271216.pdf",
    "img20260221_13275098.pdf",
    "img20260221_13283329.pdf",
    "img20260221_13291496.pdf",
    "img20260221_13295093.pdf",
    "img20260221_13302995.pdf",
    "img20260221_13310566.pdf",
]


def pdf_ocr(reader, file_path, output_file):
    try:
        pages = convert_from_path(file_path)

        message: str = f"--- pdf {file_path} ---"
        print(message)
        output_file.write(message)
        for i, page in enumerate(pages):
            img_np = np.array(page)

            message = f"--- Verarbeite Seite {i+1} ---"
            print(message)
            output_file.write(message)
            result = reader.readtext(img_np)

            for res in result:
                text = res[1]
                output_f.write(text + " ")
                print(text)

            output_f.write("\n")
            output_f.flush()
    except Exception as e:
        print(f"Fehler bei {file_path}: {e}")


def main():
    reader = easyocr.Reader(["de"])

    with open("output.txt", "a", encoding="utf-8") as f:
        for pdf in pdfs:
            pdf_ocr(reader, pdf, f)


if __name__ == "__main__":
    main()
