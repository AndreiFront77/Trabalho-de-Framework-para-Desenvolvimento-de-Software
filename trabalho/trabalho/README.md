# Trabalho — Projeto

Este repositório contém os arquivos do trabalho, incluindo o PDF entregue pelo solicitante, exemplos de scripts e instruções para executar e subir o projeto no GitHub.

## Sumário

- Descrição do que foi feito
- Estrutura do repositório
- Como executar localmente (extração de texto do PDF)
- Como subir o projeto para o GitHub
- Arquivos adicionais incluídos

## O que foi feito

1. O PDF fornecido foi salvo em: `c:\Users\Usuario.ESTFGBS016\Desktop\Projeto\1704302271904 (1).pdf`.
2. Foi fornecido um exemplo de script em Python (`extract_pdf_text.py`) que utiliza PyMuPDF para extrair o texto do PDF.
3. Foram documentados passos claros para inicializar um repositório Git local e publicar no GitHub, tanto via GitHub CLI (`gh`) quanto manualmente.
4. Foi proposta uma estrutura de diretórios e recomendações para arquivos de configuração (`.gitignore`, `requirements.txt` / `package.json`).

## Estrutura sugerida

trabalho/
- trabalho/ (código e documentação do trabalho)
  - README.md (este arquivo)
  - extract_pdf_text.py (script de exemplo)
  - .gitignore (padrões úteis)
  - docs/ (opcional)
  - src/ (opcional: código-fonte)

> Observação: a estrutura exata depende da linguagem e das ferramentas utilizadas no trabalho.

## Como executar localmente (Windows PowerShell)

1. Abra o PowerShell e navegue até a pasta do projeto:

```powershell
cd "C:\Users\Usuario.ESTFGBS016\Desktop\Projeto"
```

2. (Opcional) Crie e ative um ambiente virtual Python:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate
python -m pip install --upgrade pip
```

3. Instale a dependência usada no exemplo (PyMuPDF):

```powershell
python -m pip install PyMuPDF
```

4. Execute o script de extração do PDF (se o `extract_pdf_text.py` estiver presente):

```powershell
python extract_pdf_text.py "C:\Users\Usuario.ESTFGBS016\Desktop\Projeto\1704302271904 (1).pdf"
```

O script imprimirá o texto extraído no terminal ou poderá salvar em um arquivo, dependendo da versão do script.

## Como subir para o GitHub

1. Inicialize um repositório Git local (se ainda não existir):

```powershell
git init
git add .
git commit -m "Initial commit"
```

2A. (Recomendado) Criar e publicar o repositório usando GitHub CLI (`gh`):

```powershell
gh auth login
gh repo create NOME-DO-REPO --public --source=. --remote=origin --push
```

2B. (Alternativa manual) Criar o repositório no GitHub pelo site e depois conectar o remoto:

```powershell
git branch -M main
git remote add origin https://github.com/SEU-USUARIO/NOME-DO-REPO.git
git push -u origin main
```

Autenticação recomendada: usar `gh auth login` ou o Git Credential Manager do Windows para evitar inserir tokens manualmente.

## Arquivos incluídos / sugeridos

- `extract_pdf_text.py`: script de exemplo que extrai texto do PDF usando PyMuPDF.
- `.gitignore`: arquivo com padrões comuns (.venv, __pycache__, node_modules, etc.).
- `README.md`: este arquivo explicativo.

Se desejar, eu crio automaticamente o `extract_pdf_text.py` e o `.gitignore` na pasta `trabalho/trabalho`.

## Próximos passos que eu posso executar para você

- Gerar e salvar `extract_pdf_text.py` com um modo de salvar saída em `output.txt`.
- Criar um `.gitignore` adequado ao projeto.
- Inicializar o repositório Git local e fazer o primeiro commit (se autorizar).
- Criar o repositório remoto no GitHub usando `gh` e empurrar o código (se fornecer acesso via `gh auth login`).

Por favor, diga qual desses passos quer que eu execute agora.
