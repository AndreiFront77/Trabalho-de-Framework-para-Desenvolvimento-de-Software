"""extract_pdf_text.py

Exemplo simples para extrair texto de um PDF usando PyMuPDF (fitz).

Uso:
    python extract_pdf_text.py "c:\caminho\para\arquivo.pdf" [saida.txt]

Se o parâmetro de saída for fornecido, o texto extraído será salvo nesse arquivo; caso contrário, será impresso no stdout.
"""
import sys
import fitz  # pip install PyMuPDF


def extract_text(pdf_path: str) -> str:
    doc = fitz.open(pdf_path)
    pages = []
    for page in doc:
        pages.append(page.get_text())
    return "\n\n".join(pages)


def main(argv):
    if len(argv) < 2:
        print("Uso: python extract_pdf_text.py C:\\caminho\\para\\arquivo.pdf [saida.txt]")
        return 1

    pdf_path = argv[1]
    out_path = argv[2] if len(argv) > 2 else None

    text = extract_text(pdf_path)

    if out_path:
        with open(out_path, "w", encoding="utf-8") as f:
            f.write(text)
        print(f"Texto salvo em: {out_path}")
    else:
        print(text)

    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
