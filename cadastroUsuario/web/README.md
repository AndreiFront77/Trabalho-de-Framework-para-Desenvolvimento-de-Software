# Cadastro Usuario - Como abrir no Apache NetBeans

Passos rápidos para abrir e executar este webapp no Apache NetBeans (Windows):

1. Pré-requisitos
   - Apache NetBeans (recomendo 12.x ou superior)
   - Java JDK 8 ou 11
   - Apache Tomcat (9.x ou 10.x) instalado e configurado no NetBeans

2. Abrir o projeto
   - No NetBeans: File > Open Project...
   - Navegue até a pasta `caminho/para/Projeto/cadastroUsuario/web` e selecione o projeto. O NetBeans deverá reconhecer como "Web Application" graças aos arquivos `build.xml` e `nbproject/` adicionados.

3. Configurar o servidor
   - Vá em Services > Servers e adicione o Tomcat (se ainda não estiver configurado).
   - Clique com o botão direito no projeto > Properties > Run, escolha o Server (Tomcat) e Context Path (deixe `/` ou `/cadastroUsuario` conforme preferir).

4. Executar
   - Clique com o botão direito no projeto > Run
   - O NetBeans fará build e deploy para o Tomcat. A página inicial do projeto é servida pelo `redirect.jsp` que redireciona para `index.htm`.
   - A URL típica será: http://localhost:8080/cadastroUsuario/index.htm

5. Observações e ajustes
   - Os arquivos JSP estão em `WEB-INF/jsp/` e o `viewResolver` está configurado para prefix `/WEB-INF/jsp/` e sufix `.jsp`.
   - Os scripts JS ficam em `webPages/js/`. O `index.jsp` já foi atualizado para carregar `webPages/js/main.js` e `webPages/js/validation.js`.
   - Se a aplicação precisa de banco de dados, configure `WEB-INF/applicationContext.xml` e adicione as dependências necessárias no classpath (por exemplo, lib/ do Tomcat ou `WEB-INF/lib`).

   Codificação de caracteres (UTF-8)
   - Eu adicionei um filtro `CharacterEncodingFilter` no `WEB-INF/web.xml` para forçar UTF-8 em requisições e respostas. Para que este filtro funcione é necessário que a biblioteca `spring-web` esteja disponível no classpath (ex.: em `WEB-INF/lib` ou no classpath do servidor).
   - Garanta que todos os seus arquivos fonte (JSP, HTML, JS, etc.) estejam salvos em UTF-8. No NetBeans: clique com o botão direito no arquivo > Properties > Encoding > selecione UTF-8.
   - Se após isso ainda aparecerem caracteres estranhos, reabra o arquivo no editor e salve explicitamente em UTF-8 (File > Save As > escolha UTF-8) ou eu posso sobrescrever os arquivos aqui com a versão em UTF-8.

6. Testes rápidos
   - Ao abrir a página, tente preencher o formulário e usar um CEP válido (ex.: `01001000`) para ver a consulta ao ViaCEP funcionando.

Se quiser, eu posso:
- Ajustar o `context-path` para `/` ou outro valor.
- Adicionar `build-impl.xml` customizado (normalmente o NetBeans auto-gerencia).
- Incluir libs comuns em `WEB-INF/lib` (ex.: versões do Spring MVC, Jackson) se o projeto necessitar delas.

