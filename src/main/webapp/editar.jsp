<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Agenda de contatos</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="style.css">
</head>
</body>
<h1>Editar contato</h1>
<form name="frmContato" action="update">
	<table>
		<tr>
			<td><input type="text" name="idcon" id="caixa3" readonly
				size="10" maxlength="10"
				value="<%out.print(request.getAttribute("idcon"));%>"></td>
		<tr>
			<td><input type="text" name="nome" class="Caixa1" size="50"
				maxlength="50" value="<%out.print(request.getAttribute("nome"));%>"></td>
		</tr>
		<tr>
			<td><input id="fone" type="text" name="fone" class="Caixa2"
				size="15" maxlength="15"
				value="<%out.print(request.getAttribute("fone"));%>"></td>
		</tr>
		<tr>
			<td><input type="text" name="email" class="Caixa1" size="50"
				maxlength="50" value="<%out.print(request.getAttribute("email"));%>"></td>
		</tr>
	</table>
	<input type="button" value="Salvar" class="Botao1" onclick="validar()">
</form>
<script src="scripts/validador.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"></script>
<script>
	var SPMaskBehavior = function(val) {
		return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000'
				: '(00) 0000-00009';
	}, spOptions = {
		onKeyPress : function(val, e, field, options) {
			field.mask(SPMaskBehavior.apply({}, arguments), options);
		}
	};

	$('#fone').mask(SPMaskBehavior, spOptions);
</script>
</body>
</html>