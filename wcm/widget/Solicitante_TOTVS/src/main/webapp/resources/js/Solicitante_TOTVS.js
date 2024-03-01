var MyWidget = SuperWidget.extend({
	// variáveis da widget
	variavelNumerica : null,
	variavelCaracter : null,

	// método iniciado quando a widget é carregada
	init : function() {
		var ema = WCMAPI.userEmail;
		var html = "";
		var c1 = DatasetFactory.createConstraint("email", ema, ema,
				ConstraintType.MUST);
		var ctt = new Array(c1);
		var d1 = DatasetFactory.getDataset("dsFORMPRIN", null, ctt, null);
		var d2 = DatasetFactory.getDataset("DSFormPrincipalARQ", null, ctt,
				null);
		if (d1.values.length == 0) {
			DatasetFactory.getDataset("DSFormPrincipalARQ", null, ctt, null, {
				success : function(dsReturned) {
					var rcControleMits = dsReturned.values;
					for (var i = 0; i < rcControleMits.length; i++) {
						if (rcControleMits[i]["nota1solicit"] === null) {
							html += '<option value="'
									+ rcControleMits[i]['documentid']
									+ '"required>' + rcControleMits[i]['razao']
									+ ' Processo aberto referente a '
									+ rcControleMits[i]['categoria'] + " "
									+ rcControleMits[i]['subcategoria']
									+ '</option>'
						}
					}
					document.getElementById("processo").innerHTML = html;
				},
				error : function(e) {
					console.log(e)
				}
			})
		}
		DatasetFactory.getDataset("dsFORMPRIN", null, ctt, null, {
			success : function(dsReturned) {
				var rcControleMits = dsReturned.values;
				for (var i = 0; i < rcControleMits.length; i++) {
					if (rcControleMits[i]["nota1solicit"] === null) {
						html += '<option value="'
								+ rcControleMits[i]['documentid']
								+ '"required>' + rcControleMits[i]['razao']
								+ ' Processo aberto referente a '
								+ rcControleMits[i]['segmentos'] + " "
								+ rcControleMits[i]['segmentosL2']
								+ '</option>'
					}
				}
				document.getElementById("processo").innerHTML = html;
			},
			error : function(e) {
				console.log(e)
			}
		})
	},

	// BIND de eventos
	bindings : {
		local : {
			'execute' : [ 'click_executeAction' ]
		},
		global : {}
	},

	executeAction : function(htmlElement, event) {
	}

});

function editareg() {

	var statusevento = $('#statusEvento').val();
	var notatd1 = $('#nota1solicit').val();
	var notatot1 = $('#nota2solicit').val();
	var coment1 = $('#comentsolicit').val();
	var docid = $('#processo').val();
	var motivo = $('#motivo').val();
	var remarcar = $('#remarcar').val();

	if (!statusevento) {
		FLUIGC.toast({
			title : 'Campo Status do Evento nao preenchido!',
			message : 'Tente novamente, ou comunique o suporte!',
			type : 'danger'
		});
	} else if (!notatd1) {
		FLUIGC.toast({
			title : 'Campo evento como um todo nao preenchido!',
			message : 'Tente novamente, ou comunique o suporte!',
			type : 'danger'
		});
	} else if (!notatot1) {
		FLUIGC.toast({
			title : 'Campo nota servico TOTOVS nao preenchido!',
			message : 'Tente novamente, ou comunique o suporte!',
			type : 'danger'
		});
	} else if (!docid) {
		FLUIGC.toast({
			title : 'Campo escolha do processo nao preenchido!',
			message : 'Tente novamente, ou comunique o suporte!',
			type : 'danger'
		});
	} else if (statusevento != "Realizado com sucesso" && !motivo) {
		FLUIGC.toast({
			title : 'Campo Por qual motivo nao preenchido!',
			message : 'Tente novamente, ou comunique o suporte!',
			type : 'danger'
		});
	} else if (statusevento != "Realizado com sucesso" && !remarcar) {
		FLUIGC.toast({
			title : 'Campo Remarcar nao preenchido!',
			message : 'Tente novamente, ou comunique o suporte!',
			type : 'danger'
		});
	}

	let
	_xml = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ws="http://ws.dm.ecm.technology.totvs.com/">'
			+ '<soapenv:Header/>'
			+ '<soapenv:Body>'
			+ '<ws:updateCardData>'
			+ '<companyId>1</companyId>'
			+ '<username>matheus.alves</username>'
			+ '<password>abc123</password>' + '<cardId>'
			+ docid
			+ '</cardId>'
			+ '<cardData>'
			+ '<item>'
			+ '<field>statusEventoAnfitriao</field>'
			+ '<value>'
			+ statusevento
			+ '</value>'
			+ '</item>'
			+ '<item>'
			+ '<field>porQualMotivoAnfitriao</field>'
			+ '<value>'
			+ motivo
			+ '</value>'
			+ '</item>'
			+ '<item>'
			+ '<field>desejaRemarcarAnfitriao</field>'
			+ '<value>'
			+ remarcar
			+ '</value>'
			+ '</item>'
			+ '<item>'
			+ '<field>interesseClient</field>'
			+ '<value>'
			+ notatd1
			+ '</value>'
			+ '</item>'
			+ '<item>'
			+ '<field>notaPerfilClient</field>'
			+ '<value>'
			+ notatot1
			+ '</value>'
			+ '</item>'
			+ '<item>'
			+ '<field>comentario</field>'
			+ '<value>'
			+ coment1
			+ '</value>'
			+ '</item>'
			+ '</cardData>'
			+ '</ws:updateCardData>'
			+ '</soapenv:Body>'
			+ '</soapenv:Envelope>';

		 let urlWsEditar = WCMAPI.getServerURL() +
		 '/webdesk/ECMCardService?wsdl'
		
		 $.ajax({
		 type: "POST",
		 dataType: "xml",
		 url: urlWsEditar,
		 data: _xml,
		 crossDomain: true,
		success : function(data) {
			FLUIGC.toast({
				title : 'Feedback concluido!',
				message : 'Muito obrigado pela a sua compreensao',
				type : 'success'
			});
		}
	});

}

function filtroform() {
	var ema = WCMAPI.userEmail;
	var html = "";
	var c1 = DatasetFactory.createConstraint("solicit", ema, ema,
			ConstraintType.MUST);
	var ctt = new Array(c1);
	DatasetFactory.getDataset("dsFORMPRIN", null, ctt, null, {
		success : function(dsReturned) {
			var rcControleMits = dsReturned.values;
			for (var i = 0; i < rcControleMits.length; i++) {
				if (rcControleMits[i]["notalsolicit"] === null) {
					html += '<option value="' + rcControleMits[i]['documentid']
							+ '"required>' + rcControleMits[i]['documentid']
							+ ' Processo aberto referente a '
							+ rcControleMits[i]['segmentos'] + " "
							+ rcControleMits[i]['segmentosL2'] + '</option>'
				}
			}
			document.getElementById("processo").innerHTML = html;
		},
		error : function(e) {
			console.log(e)
		}
	})
}
function estatus() {
	var evento = document.getElementById('statusEvento').value;
	var status = document.getElementById('statusEvento');
	var faltaConvidado = document.getElementById('FC');
	var faltaConvidadoRemarcar = document.getElementById('FCR');
	var realizado1 = document.getElementById('R1');
	var realizado2 = document.getElementById('R2');
	var comentarios = document.getElementById('comentarios');
	if (evento == "Falta do Convidado") {
		faltaConvidado.style.display = "block";
		faltaConvidadoRemarcar.style.display = "block";
		realizado1.style.display = "none"
		realizado2.style.display = "none"
		comentarios.style.display = "none"
	}else if (evento == "Realizado com sucesso") {
		faltaConvidado.style.display = "none";
		faltaConvidadoRemarcar.style.display = "none";
		realizado1.style.display = "block"
		realizado2.style.display = "block"
		comentarios.style.display = "block"
	}
}