import streamlit as st
from PIL import Image
import os
import nbformat  # Biblioteca para manipular notebooks Jupyter


st.set_page_config(
    page_title="Fase 3 - Pos-Tech Data Analytics",  # Título da aba do navegador
    page_icon="📊",  # Ícone da aba do navegador
    layout="wide",  # Layout da página: "centered" (padrão) ou "wide"
    initial_sidebar_state="collapsed"  # Estado inicial da barra lateral: "expanded", "collapsed", ou "auto"
)

# Upload do arquivo PDF
st.title("Fase 3 Pos-Tech Data Analytics")

st.markdown("""
## Trabalho em Grupo - Fase 3 Pos-Tech Data Analytics

**Integrantes:**

- Leandro Victor - [Linkedin](https://www.linkedin.com/in/leandro-victor-silva-8a319b228/)  
- Murilo Maioli - [Linkedin](https://www.linkedin.com/in/murilo-maioli-21195aaa/)

            
### Separado em 3 abas:
- **Apresentacao:** Apresentação do trabalho
- **Consultas:** Consultas SQL
- **Python Notebooks:** Notebooks Python
            

GitHub: [Repositório](https://github.com/Leandrolsc/PosTech_DataAnalytics_Fase3)
""")


tab1, tab2, tab3 = st.tabs(["Apresentacao", "Consultas", "Python Notebooks"])

with tab1:

    st.header("Apresentação do Trabalho")
    st.markdown("""
        Nesta aba, você pode visualizar a apresentação do trabalho em grupo.  
        Use os botões **'Anterior'** e **'Próximo'** para navegar entre as páginas da apresentação.  
        Clique no botão **'📥 Baixar PDF da Apresentação'** para fazer o download do arquivo PDF.
        """)


    
    with st.container(border=True):   
        # Caminho para a pasta de imagens
        image_dir = 'anexos/apresentacao/jpg'

        # Listar e ordenar os arquivos de imagem na pasta
        if os.path.exists(image_dir):
            image_files = sorted([f for f in os.listdir(image_dir) if f.lower().endswith(('.png', '.jpg', '.jpeg'))])

            if image_files:
                # Carregar as imagens em uma lista
                images = [Image.open(os.path.join(image_dir, img_file)) for img_file in image_files]

                # Inicializar o estado da página
                if "current_page" not in st.session_state:
                    st.session_state.current_page = 0

                def anterior():
                    if st.session_state.current_page > 0:
                        st.session_state.current_page -= 1
                        st.rerun() 

                def proximo():
                    if st.session_state.current_page < len(images) - 1:
                        st.session_state.current_page += 1
                        st.rerun() 

                col_1, col_2, col_3 = st.columns([1, 4, 1.3])
                with col_2:
                    # Exibir a imagem atual
                    st.image(images[st.session_state.current_page], 
                            #use_container_width=True, 
                            width=1200,
                            output_format='JPEG')

                st.write("")

                # Botões de navegação
                col1, col2, col3 = st.columns([0.6, 2, 1])
                with col2:
                    if st.button("Anterior"):
                        anterior()
                with col3:
                    if st.button("Próximo"):
                        proximo()

                
                # Exibir o número da página atual

                col1, col2, col3 = st.columns([0.6, 2, 1])
                with col2:
                    st.write(f"Página {st.session_state.current_page + 1} de {len(images)}")

                

            else:
                st.write("Nenhuma imagem encontrada na pasta.")
        else:
            st.write("A pasta de imagens não existe.")
        
    pdf_file_path = 'anexos/apresentacao/TC3_V03.pdf'
    if os.path.exists(pdf_file_path):
        with open(pdf_file_path, "rb") as pdf_file:
            pdf_data = pdf_file.read()
        st.download_button(
            label="📥 Baixar PDF da Apresentação",
            data=pdf_data,
            file_name="TC3_V03.pdf",
            mime="application/pdf"
        )
    else:
        st.write("O arquivo PDF não foi encontrado.")

with tab2:
    st.header("Consultas Disponíveis")

    # Caminho para a pasta de consultas
    consultas_dir = r'anexos/consultas'

    # Listar todos os arquivos na pasta de consultas
    if os.path.exists(consultas_dir):
        consulta_files = [f for f in os.listdir(consultas_dir) if f.endswith('.sql') or f.endswith('.txt')]

        if consulta_files:
            # Adicionar uma lista suspensa para selecionar a consulta
            selected_file = st.selectbox("Selecione uma consulta para visualizar:", consulta_files)

            # Exibir o conteúdo do arquivo selecionado
            if selected_file:
                file_path = os.path.join(consultas_dir, selected_file)
                with open(file_path, 'r', encoding='utf-8') as file:
                    consulta_content = file.read()

                # Mostrar o nome do arquivo e o conteúdo
                st.subheader(f"Consulta: {selected_file}")
                st.code(consulta_content, language='sql')
        else:
            st.write("Nenhuma consulta encontrada na pasta.")
    else:
        st.write("A pasta de consultas não existe.")


with tab3:
    st.header("Notebooks")

    st.markdown("Para acessar os notebooks na integra acesse o [Repositório](https://github.com/Leandrolsc/PosTech_DataAnalytics_Fase3)")

    # Caminho para a pasta de notebooks
    notebooks_dir = r'anexos/notebooks'

    # Listar todos os arquivos na pasta de notebooks
    if os.path.exists(notebooks_dir):
        notebook_files = [f for f in os.listdir(notebooks_dir) if f.endswith('.ipynb')]

        if notebook_files:
            # Adicionar uma lista suspensa para selecionar o notebook
            selected_notebook = st.selectbox("Selecione um notebook para visualizar:", notebook_files)

            # Exibir o conteúdo do arquivo selecionado
            if selected_notebook:
                file_path = os.path.join(notebooks_dir, selected_notebook)
                with open(file_path, 'r', encoding='utf-8') as file:
                    notebook_content = nbformat.read(file, as_version=4)

                # Mostrar o nome do notebook
                st.subheader(f"Notebook: {selected_notebook}")

                # Renderizar as células do notebook
                for cell in notebook_content['cells']:
                    if cell['cell_type'] == 'markdown':
                        # Renderizar células de markdown
                        st.markdown(''.join(cell['source']))
                    elif cell['cell_type'] == 'code':
                        # Renderizar células de código
                        st.code(''.join(cell['source']), language='python')
        else:
            st.write("Nenhum notebook encontrado na pasta.")
    else:
        st.write("A pasta de notebooks não existe.")