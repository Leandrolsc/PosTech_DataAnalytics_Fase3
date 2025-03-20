# Fase 3 - Pos-Tech Data Analytics

Este projeto foi desenvolvido como parte da Fase 3 do curso de Pós-Graduação em Tecnologia da FIAP. Ele utiliza o framework **Streamlit** para criar uma aplicação interativa que apresenta os resultados do trabalho em grupo, incluindo consultas SQL, notebooks Python e uma apresentação visual.

## 📋 Funcionalidades

O projeto está dividido em três abas principais:

1. **Apresentação**:
   - Exibição de imagens da apresentação do trabalho, navegáveis por botões "Anterior" e "Próximo".
   - Download do arquivo PDF da apresentação.

2. **Consultas**:
   - Listagem de arquivos de consultas SQL ou texto disponíveis na pasta `anexos/consultas`.
   - Visualização do conteúdo das consultas selecionadas.

3. **Notebooks**:
   - Listagem de notebooks Jupyter disponíveis na pasta `anexos/notebooks`.
   - Renderização amigável das células de código e markdown dos notebooks selecionados.

## 🚀 Acesso ao Aplicativo

O aplicativo pode ser acessado através do seguinte link:  
[https://postechdafase3.streamlit.app/](https://postechdafase3.streamlit.app/)

## 📂 Estrutura do Projeto

Abaixo está a estrutura de diretórios do projeto:

```
PosTech_FIAP_F3/
├── anexos/
│   ├── apresentacao/
│   │   ├── jpg/          # Imagens da apresentação
│   │   └── TC3_V03.pdf   # PDF da apresentação
│   ├── consultas/        # Arquivos de consultas SQL ou texto
│   └── notebooks/        # Notebooks Jupyter
├── streamlit.py          # Código principal da aplicação Streamlit
└── readme.md             # Documentação do projeto
```

## 🛠️ Tecnologias Utilizadas

- **Python**: Linguagem principal do projeto.
- **Streamlit**: Framework para criação de aplicações web interativas.
- **Pillow**: Manipulação de imagens.
- **PyMuPDF**: Manipulação de arquivos PDF.
- **nbformat**: Manipulação de notebooks Jupyter.

## 👥 Integrantes do Grupo

- [Leandro Victor](https://www.linkedin.com/in/leandro-victor-silva-8a319b228/)  
- [Murilo Maioli](https://www.linkedin.com/in/murilo-maioli-21195aaa/)

## 📥 Como Executar o Projeto Localmente

1. Clone este repositório:
   ```bash
   git clone https://github.com/Leandrolsc/PosTech_DataAnalytics_Fase3.git
   ```
2. Navegue até o diretório do projeto:
   ```bash
   cd PosTech_DataAnalytics_Fase3
   ```
3. Crie e ative um ambiente virtual (opcional, mas recomendado):
   ```bash
   python -m venv venv
   source venv/bin/activate  # Para Linux/macOS
   venv\Scripts\activate     # Para Windows
   ```
4. Instale as dependências:
   ```bash
   pip install -r requirements.txt
   ```
5. Execute o aplicativo:
   ```bash
   streamlit run streamlit.py
   ```

## 📄 Licença

Este projeto é apenas para fins educacionais e não possui uma licença específica.

---

Desenvolvido como parte do curso de Pós-Graduação em Tecnologia da FIAP.

