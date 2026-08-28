# Automação de Testes - Tricentis Vehicle Insurance

Suíte de testes automatizados E2E desenvolvida com **Robot Framework** e **Playwright** (`Browser Library`).

---

## Pré-requisitos

- **Python 3.10+** instalado
- **Node.js 18+** instalado (necessário para o Playwright)

---

## 1. Configuração do Ambiente e Instalação

No terminal, acesse a pasta raiz do projeto e siga os passos:

### 1.1. Criar e ativar o ambiente virtual

```bash
# macOS / Linux
python3 -m venv .venv
source .venv/bin/activate

# Windows
python -m venv .venv
.venv\Scripts\activate

# Instalar as dependências
pip install -r requirements.txt

# Inicializar o Playwright
rfbrowser init

# Execução padrão (Interface gráfica)
robot -d ./results tests/cotacao_seguro.robot

# Execução em modo Headless (Sem abrir navegador)
robot -d ./results -v HEADLESS:True tests/cotacao_seguro.robot