/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */


$(function () {
  function limpa() { $("#rua,#bairro,#cidade,#estado").val(""); }

  // Máscara do CEP em tempo real (00000-000)
  $("#cep").on("input", function () {
    let v = this.value.replace(/\D/g, "").slice(0,8);
    if (v.length > 5) v = v.slice(0,5) + "-" + v.slice(5);
    this.value = v;
  });

  // Ao perder foco, consulta o ViaCEP caso tenha 8 dígitos
  $("#cep").on("blur", function () {
    const cep = $(this).val().replace(/\D/g, "");
    if (cep.length !== 8) { alert("cep inválido (8 dígitos)"); limpa(); return; }

    $("#rua,#bairro,#cidade,#estado").val("...");
    $.getJSON(`https://viacep.com.br/ws/${cep}/json/`, function (d) {
      if (!d || d.erro) { alert("cep não encontrado"); limpa(); return; }
      $("#rua").val(d.logradouro || "");
      $("#bairro").val(d.bairro || "");
      $("#cidade").val(d.localidade || "");
      $("#estado").val(d.uf || "");
    }).fail(function(){ alert("falha ao consultar o via cep"); limpa(); });
  });

  // Uppercase para o estado e limite a 2 caracteres
  $("#estado").on("input", function(){ this.value = this.value.toUpperCase().slice(0,2); });

  // Limpa estados de validação ao usar o botão reset
  $("button[type=reset]").on("click", function(){
    $(".form-control").removeClass("is-invalid");
    $(".invalid-feedback").text("");
  });
});

