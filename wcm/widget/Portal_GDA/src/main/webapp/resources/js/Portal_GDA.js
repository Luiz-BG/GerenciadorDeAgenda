var MyWidget = SuperWidget.extend({
	tableData: null,
	//método iniciado quando a widget é carregada
	init: function () {
		var dateTime = FLUIGC.calendar('#diaehora', {
			pickDate: true,
			pickTime: true,
			minDate: new Date(),
			sideBySide: true
		}).formatDate(new Date(), "L", "en");

	},

	//BIND de eventos
	bindings: {
		local: {
			'show-message': ['click_showMessage']
		},
		global: {}
	},
	showMessage: function () {
		SS

	}




});

function criaRegistro() {
	var _xml;
	var nome = $("#nome").val();
	var email = $("#email").val();
	var unidade = $("#unidade").val();
	var modalidade = $("#mod").val();
	var segmento = $("#segmento").val();
	var emailcliente = $("#emailClient").val();
	var cnpj = $("#cnpj").val();
	var cargo = $("#cargo").val();
	var wpp = $("#wpp").val();
	var razao = $("#razao").val();
	var contato = $("#contato").val();
	var briefing = $("#briefing").val();
	var solicit = WCMAPI.userEmail;
	var diaehora = $("#diaehora").val();
	var emailconvid1 = $("#emailconvid1").val();
	var emailconvid2 = $("#emailconvid2").val();
	var emailconvid3 = $("#emailconvid3").val();
	var emailconvid4 = $("#emailconvid4").val();
	var emailconvid5 = $("#emailconvid5").val();
	var matricula = $("#matricula").val();
	var c0 = DatasetFactory.createConstraint("mail", solicit, solicit, ConstraintType.MUST);
	var ctt = new Array (c0);
	var ds1 = DatasetFactory.getDataset("colleague", null, ctt , null);
	var matriculasolicit = ds1.values[0]['login'];
	document.getElementById("matriculasolicit").value = matriculasolicit; 
	



	$.ajax({
		url: '/Portal_GDA/resources/js/xml/ECMWorkflowEngineService_simpleStartProcess1.xml',
		async: false,
		type: "GET",
		dataType: "xml",
		success: function (xml) {
			_xml = $(xml)
		}
	});
	if (diaehora === "") {
		alert("O campo 'Data da reunião' é obrigatório. Preencha antes de enviar.");
	}
	else if (nome === "") {
		alert("O campo 'Nome' é obrigatório. Preencha antes de enviar.");
	} else if (email === "") {
		alert("O campo 'E-mail' é obrigatório. Preencha antes de enviar.");
	} else if (unidade === "") {
		alert("O campo 'Unidade' é obrigatório. Preencha antes de enviar.");
	} else if (modalidade === "") {
		alert("O campo 'Modalidade' é obrigatório. Preencha antes de enviar.");
	} else if (segmento === "") {
		alert("O campo 'Segmento' é obrigatório. Preencha antes de enviar.");
	} else if (emailcliente === "") {
		alert("O campo 'E-mail Cliente' é obrigatório. Preencha antes de enviar.");
	} else if (cnpj === "") {
		alert("O campo 'CNPJ' é obrigatório. Preencha antes de enviar.");
	} else if (cargo === "") {
		alert("O campo 'Cargo' é obrigatório. Preencha antes de enviar.");
	} else if (wpp === "") {
		alert("O campo 'Número de WhatsApp' é obrigatório. Preencha antes de enviar.");
	} else if (razao === "") {
		alert("O campo 'Razão Social' é obrigatório. Preencha antes de enviar.");
	} else if (contato === "") {
		alert("O campo 'Pessoa de Contato' é obrigatório. Preencha antes de enviar.");
	} else if (briefing === "") {
		alert("O campo 'Briefing' é obrigatório. Preencha antes de enviar.");
	} else {
		_xml.find("username").text("matheus.alves");
		_xml.find("password").text("abc123");
		_xml.find("processId").text("ProcessGDA");
		_xml.find("[name=nome]").text(nome);
		_xml.find("[name=email]").text(email);
		_xml.find("[name=unidade]").text(unidade);
		_xml.find("[name=modalidade]").text(modalidade);
		_xml.find("[name=segmento]").text(segmento);
		_xml.find("[name=emailcliente]").text(emailcliente);
		_xml.find("[name=cnpj]").text(cnpj);
		_xml.find("[name=cargo]").text(cargo);
		_xml.find("[name=wpp]").text(wpp);
		_xml.find("[name=razao]").text(razao);
		_xml.find("[name=contato]").text(contato);
		_xml.find("[name=briefing]").text(briefing);
		_xml.find("[name=solicit]").text(solicit);
		_xml.find("[name=diaehora]").text(diaehora);
		_xml.find("[name=emailconvid1]").text(emailconvid1);
		_xml.find("[name=emailconvid2]").text(emailconvid2);
		_xml.find("[name=emailconvid3]").text(emailconvid3);
		_xml.find("[name=emailconvid4]").text(emailconvid4);
		_xml.find("[name=emailconvid5]").text(emailconvid5);
		_xml.find("[name=matricula]").text(matricula);
		_xml.find("[name=matriculasolicit]").text(matriculasolicit);

		console.log(_xml)
		WCMAPI.Create({
			url: "/webdesk/ECMWorkflowEngineService?wsdl",
			contentType: "text/xml",
			dataType: "xml",
			data: _xml[0],
			success: function (data) {
				$("#sucesso").show();
				$("#formulario").hide();
				var c1 = DatasetFactory.createConstraint("nome", nome, nome, ConstraintType.MUST);
				var c2 = DatasetFactory.createConstraint("segmentos", unidade, unidade, ConstraintType.MUST);
				var c3 = DatasetFactory.createConstraint("modalidade", modalidade, modalidade, ConstraintType.MUST);
				var c4 = DatasetFactory.createConstraint("briefing", briefing, briefing, ConstraintType.MUST);
				var c5 = DatasetFactory.createConstraint("razao", razao, razao, ConstraintType.MUST);
				var c6 = DatasetFactory.createConstraint("contato", contato, contato, ConstraintType.MUST);
				sucesso();

				var ctt = new Array(c1, c2, c3, c4, c5, c6)
				DatasetFactory.getDataset("dsEnvioEmailESN", null, ctt, null);
				FLUIGC.toast({
					title: 'Processo Iniciado!',
					message: 'Continue o processo',
					type: 'success'
				});
			},
			error: function () {
				FLUIGC.toast({
					title: 'Aconteceu Algo de errado!',
					message: 'Tente novamente, ou comunique o suporte!',
					type: 'danger'
				});
			}
		});
	}
}

function BuscaInfo() {
	var unidade = $("#unidade").val();
	var segmento = $("#segmento").val();


	var c1 = DatasetFactory.createConstraint("SEG", segmento, segmento, ConstraintType.MUST);
	var c2 = DatasetFactory.createConstraint("UNIDADE", unidade, unidade, ConstraintType.MUST);
	var constraints = new Array(c1, c2);
	DatasetFactory.getDataset("dsFILTROESN", null, constraints, null, {
		success: function (dsReturned) {
			var rcControleMits = dsReturned.values;
			if (rcControleMits.length > 1) {
				$("#tablesconder").show();
				for (var i = 0; i < rcControleMits.length; i++) {
					var html;
					html += '<tr>' +
						'<td>' +
						'<div class="btn-group">' +
						'<button type="button" value="' + i + '" id="btadd___' + i + '" class="btn btn-link" onClick="Selecao(this.value)">' + '<i class="fluigicon fluigicon-plus icon-md" aria-hidden="true"></i>' +
						'</button>' + '</div>' + '</td>' +
						'<td>' + rcControleMits[i]['NOME'] + '</td>' +
						'<td>' + rcControleMits[i]['EMAIL'] + '</td>' +
						'</tr>';
				}
				document.getElementById("tbDadosMIT").innerHTML = html;
			} else {
				Selecao(0);
			}

		}
		,
		error: function (jqXHR, textStatus, errorThrown) {
		}


	})
}

function Selecao(campo) {
	var unidade = $("#unidade").val();
	var segmento = $("#segmento").val();
	var c1 = DatasetFactory.createConstraint("SEG", segmento, segmento, ConstraintType.MUST);
	var c2 = DatasetFactory.createConstraint("UNIDADE", unidade, unidade, ConstraintType.MUST);
	var constraints = new Array(c1, c2);
	var ds = DatasetFactory.getDataset("dsFILTROESN", null, constraints, null);


	if (ds.values < 1) {
		FLUIGC.toast({
			title: 'Esse usuario nao esta cadastrado!',
			message: 'Tente novamente, ou comunique o suporte!',
			type: 'danger'
		});
	} else {
		 
		var nome = ds.values[campo].NOME;
		var email = ds.values[campo].EMAIL;
		var c3 = DatasetFactory.createConstraint("mail", email, email, ConstraintType.MUST);
		var ctt = new Array (c3);
		var ds1 = DatasetFactory.getDataset("colleague", null, ctt , null);
		var matricula = ds1.values[campo]['login'];
		document.getElementById("nome").value = nome;
		document.getElementById("email").value = email;
		document.getElementById("matricula").value = matricula;

		$("#tablesconder").hide();
	}
}

function sucesso() {
	var html;
	var nome = $("#nome").val();
	var email = $("#email").val();
	var unidade = $("#unidade").val();
	var modalidade = $("#mod").val();
	var segmento = $("#segmento").val();
	var emailcliente = $("#emailClient").val();
	var cnpj = $("#cnpj").val();
	var cargo = $("#cargo").val();
	var wpp = $("#wpp").val();
	var razao = $("#razao").val();
	var contato = $("#contato").val();
	var briefing = $("#briefing").val();

	html = '<h3>Informações</h3>' +
		'<li>Executivo selecionado: ' + nome + '</li>' +
		'<li>Unidade selecionada: ' + unidade + '</li>' +
		'<li>Segmento selecionada: ' + segmento + '</li>' +
		'</ul>' +
		'<h3>Client/Prospect</h3>' +
		'<ul>' +
		'<li>Razão Social: ' + razao + '</li>' +
		'<li>Pessoa Contato: ' + contato + '</li>' +
		'<li>Briefing: ' + briefing + '</li>'

	document.getElementById("solicit").innerHTML = html;

}




function formESN() {
	$("#tablesconder").hide();
	$("#sucesso").hide();
	$("clienteProspect").hide();
	var conteudo = document.getElementById("conteudoHome");
	var formESN = document.getElementById("ESN");

	if (formESN.style.display === "none") {
		formESN.style.display = "block";
		conteudo.style.display = "none";
		document.getElementById("corpo").style = "background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(13,9,121,1) 35%, rgba(0,212,255,1) 100%)";
	} else {
		formESN.style.display = "none";
		conteudo.style.display = "block";
	}
}


function formatar(mascara, documento) {
	var i = documento.value.length;
	var saida = mascara.substring(0, 1);
	var texto = mascara.substring(i);
	if (texto.substring(0, 1) != saida) {
		documento.value += texto.substring(0, 1);
	}
}

function mostraProspect() {
	var tab = document.getElementById("clienteProspect");
	var botaoClient = document.getElementById("botaoClient");
	var inputUnidade = document.getElementById("unidade");
	var inputSegmento = document.getElementById("segmento");
	if (tab.style.display === "none") {
		tab.style.display = "block";
		botaoClient.style.display = "none";
	} else {
		tab.style.display = "none";
		botaoClient.style.display = "block";
	}
}

function formatar(mascara, documento) {
	var i = documento.value.length;
	var saida = mascara.substring(0, 1);
	var texto = mascara.substring(i);
	if (texto.substring(0, 1) != saida) {
		documento.value += texto.substring(0, 1);
	}
}

function convidados(valor) {
	for (var i = 0; i <= valor; i++) {
		const checkbox = document.getElementById('checkbox' + i);
		const input = document.getElementById("emailconvid" + i);
		if (checkbox != null) {
			if (input != null) {
				input.disabled = !checkbox.checked;
			}
		} else {
			if (input != null) {
				input.disabled = true;
			}
		}
	}
}

function aparecerconvid() {
	var lista = document.getElementById('convidados')
	if (lista.style.display == "none"){
		lista.style.display = "block";
	}else {
		lista.style.display = "none";
	}
	var datatual = new Date().getTime();
	var ds1 = DatasetFactory.getDataset("dsFORMPRIN", null, null, null);


	for (var i = 0; i < ds1.values.length; i++) {
		var datacerta = new Date(ds1.values[i].diaehora).getTime();
		var valorfaltante = datacerta - datatual;
		var valordia = 86400000;
		if (valorfaltante < valordia) {
			// Faça algo se a diferença for igual a um dia e 15 minutos
			console.log(valorfaltante);
			console.log(datacerta)
		}
	}
}
function colorChange() {
	document.body.style.backgroundColor = "linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(13, 9, 121, 1) 35%, rgba(0, 212, 255, 1) 100%)";
}