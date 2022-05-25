<?php
session_start();
include_once('conexao.php');

//Verificar se o usuário clicou no botão, clicou no botão acessa o IF e tenta cadastrar, caso contrario acessa o ELSE
$SendCadImg = filter_input(INPUT_POST, 'SendCadImg', FILTER_SANITIZE_STRING);
if ($SendCadImg) {
    //Receber os dados do formulário
    $nome = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
    $telefone = filter_input(INPUT_POST, 'telefone', FILTER_SANITIZE_STRING);
    $endereco = filter_input(INPUT_POST, 'endereco', FILTER_SANITIZE_STRING);
    $qualproduto = filter_input(INPUT_POST, 'qualproduto', FILTER_SANITIZE_STRING);
    $marcaemodelo = filter_input(INPUT_POST, 'marcaemodelo', FILTER_SANITIZE_STRING);

    
    //Inserir no BD
    $result_img = "INSERT INTO formulario_doacoes (nome,email,telefone,endereco,qualproduto,marcaemodelo) VALUES (:nome, :email, :telefone, :endereco , :qualproduto , :marcaemodelo )";
    $insert_msg = $conn->prepare($result_img);
    $insert_msg->bindParam(':nome', $nome);
    $insert_msg->bindParam(':email', $email);
    $insert_msg->bindParam(':telefone', $telefone);
    $insert_msg->bindParam(':endereco', $endereco);
    $insert_msg->bindParam(':qualproduto', $qualproduto);
    $insert_msg->bindParam(':marcaemodelo', $marcaemodelo);
    
    //Verificar se os dados foram inseridos com sucesso
    if ($insert_msg->execute()) {
        $_SESSION['msg'] = "<p style='color:white;'> Obrigado por ajudar nosso museu! Seus Dados foram salvos com sucesso, em breve entraremos em contato!</p> <br>";
        header("Location: index.php");
    }else{
        $_SESSION['msg'] = "<p><span style='color:red;'> Erro ao enviar seus dados! </span></p>";
        header("Location: index.php");
    }        
    
} 