import streamlit as st
import fitz  # PyMuPDF
from PIL import Image
import io
import os

# Upload do arquivo PDF
st.title("Fase 3 Pos-Tech Data Analytics")



tab1, tab2 = st.tabs(["Apresentacao", "Consultas"])

with tab1:
    file_path = r'anexos\apresentacao\TC3_V02.pdf'

    # Abrir o PDF usando PyMuPDF
    pdf_document = fitz.open(file_path)

    # Converter cada página do PDF em uma imagem com maior qualidade
    images = []
    zoom_x = 2.0  # Fator de zoom horizontal (aumenta a resolução)
    zoom_y = 2.0  # Fator de zoom vertical (aumenta a resolução)
    matrix = fitz.Matrix(zoom_x, zoom_y)  # Matriz de transformação para aumentar a qualidade

    for page_num in range(len(pdf_document)):
        page = pdf_document[page_num]
        pix = page.get_pixmap(matrix=matrix)  # Renderizar a página com a matriz de zoom
        img = Image.open(io.BytesIO(pix.tobytes("png")))  # Converter para formato PIL
        images.append(img)

    # Inicializar o estado da página
    if "current_page" not in st.session_state:
        st.session_state.current_page = 0


    # Exibir a página atual
    st.image(images[st.session_state.current_page], use_container_width=True)


    # Botões de navegação
    col1, col2, col3 = st.columns([1, 2, 1])
    with col1:
        if st.button("Anterior"):
            if st.session_state.current_page > 0:
                st.session_state.current_page -= 1
    with col3:
        if st.button("Próximo"):
            if st.session_state.current_page < len(images) - 1:
                st.session_state.current_page += 1

    # Exibir o número da página atual
    st.write(f"Página {st.session_state.current_page + 1} de {len(images)}")
with tab2:
    st.header("Consultas Disponíveis")

    # Caminho para a pasta de consultas
    consultas_dir = r'anexos\consultas'

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