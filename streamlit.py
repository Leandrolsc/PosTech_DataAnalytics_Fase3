import streamlit as st
import fitz  # PyMuPDF
from PIL import Image
import io
import os

# Upload do arquivo PDF
st.title("Fase 3 Pos-Tech Data Analytics")

st.write("Este aplicativo foi desenvolvido para a disciplina de Pós-Tech Data Analytics. "
         "Aqui você pode visualizar a apresentação da Fase 3 e consultar os scripts SQL disponíveis."
         )

tab1, tab2, tab3 = st.tabs(["Apresentacao", "Consultas", "Relatorio"])

with tab1:
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

            st.image(images[st.session_state.current_page], use_container_width=True, output_format='JPEG')


            # Botões de navegação
            col1, col2, col3 = st.columns([1, 2, 1])
            with col1:
                if st.button("Anterior"):
                    anterior()
            with col3:
                if st.button("Próximo"):
                    proximo()

            # Exibir a página atual
            
            # Exibir o número da página atual
            st.write(f"Página {st.session_state.current_page + 1} de {len(images)}")
        else:
            st.write("Nenhuma imagem encontrada na pasta.")
    else:
        st.write("A pasta de imagens não existe.")

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
    st.header("Relatório Final")
    