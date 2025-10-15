/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */


$(function () {
  const emailRe = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/i;

  function invalida($el, msg){ $el.addClass("is-invalid"); $el.next(".invalid-feedback").text(msg); }
  function limpaEstados(){ $(".form-control").removeClass("is-invalid"); }

  $("button.btn.btn-primary").on("click", function () {
    limpaEstados();
    let ok = true;

    const obrig = ["#nome","#sobrenome","#email","#senha","#cep","#rua","#bairro","#cidade","#estado"];
    obrig.forEach(sel => { if (!$(sel).val().trim()) { invalida($(sel), "campo obrigatório"); ok = false; } });

    const $email = $("#email");
    if ($email.val() && !emailRe.test($email.val())) { invalida($email, "e-mail inválido"); ok = false; }

    const $cep = $("#cep"); const num = $cep.val().replace(/\D/g, "");
    if ($cep.val() && num.length !== 8) { invalida($cep, "cep deve ter 8 dígitos"); ok = false; }

    if (ok) alert("dados validados!");
  });
GFDSZ0


  $(".form-control").on("input", function(){ $(this).removeClass("is-invalid"); });
});
