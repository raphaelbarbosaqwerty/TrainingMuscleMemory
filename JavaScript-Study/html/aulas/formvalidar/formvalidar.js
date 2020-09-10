//Validação de formulário
function valida(){
    var nome = document.getElementById('nome');

    if(nome.value == ""){
        alert("Nome não pode estar em branco");
    }else{
        alert("Nome enviado com sucesso!");
    }
}