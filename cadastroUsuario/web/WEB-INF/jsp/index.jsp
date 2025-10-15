<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>formulário de cadastro</title>

    <!-- bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  </head>

  <body class="p-4">
    <div class="container">
  <h3 class="mb-4 text-center">formulário de cadastro</h3>

      <!-- novalidate: evita alertas nativos e deixa o jquery cuidar -->
      <form class="row g-3" novalidate>
        <div class="col-md-6">
          <label class="form-label" for="nome">nome</label>
          <input type="text" class="form-control" id="nome">
          <div class="invalid-feedback"></div>
        </div>

        <div class="col-md-6">
          <label class="form-label" for="sobrenome">sobrenome</label>
          <input type="text" class="form-control" id="sobrenome">
          <div class="invalid-feedback"></div>
        </div>

        <div class="col-md-6">
          <label class="form-label" for="email">email</label>
          <input type="email" class="form-control" id="email">
          <div class="invalid-feedback"></div>
        </div>

        <div class="col-md-6">
          <label class="form-label" for="senha">senha</label>
          <input type="password" class="form-control" id="senha">
          <div class="invalid-feedback"></div>
        </div>

  <h5 class="mt-4">endereço</h5>

        <div class="col-md-3">
          <label class="form-label" for="cep">cep</label>
          <input type="text" class="form-control" id="cep" maxlength="9" placeholder="00000-000">
          <div class="invalid-feedback"></div>
        </div>

        <div class="col-md-9">
          <label class="form-label" for="rua">rua</label>
          <input type="text" class="form-control" id="rua">
          <div class="invalid-feedback"></div>
        </div>

        <div class="col-md-6">
          <label class="form-label" for="bairro">bairro</label>
          <input type="text" class="form-control" id="bairro">
          <div class="invalid-feedback"></div>
        </div>

        <div class="col-md-4">
          <label class="form-label" for="cidade">cidade</label>
          <input type="text" class="form-control" id="cidade">
          <div class="invalid-feedback"></div>
        </div>

        <div class="col-md-2">
          <label class="form-label" for="estado">estado</label>
          <input type="text" class="form-control" id="estado" maxlength="2" placeholder="uf">
          <div class="invalid-feedback"></div>
        </div>

        <div class="col-md-3">
          <label class="form-label" for="numero">número</label>
          <input type="text" class="form-control" id="numero">
        </div>

        <div class="col-md-9">
          <label class="form-label" for="complemento">complemento</label>
          <input type="text" class="form-control" id="complemento">
        </div>

        <div class="col-12 mt-2">
          <button type="button" class="btn btn-primary">verificar</button>
          <button type="reset" class="btn btn-outline-secondary ms-2">limpar</button>
        </div>
      </form>
    </div>

  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/webPages/js/main.js"></script>
  <script src="${pageContext.request.contextPath}/webPages/js/validation.js"></script>


  </body>
</html>
