function enableFields(form){
	var atividadeAtual = getValue("WKNumState");
	//se estiver nessa atividade, voce disabilita um campo especifico
	form.setVisibleById("dadosAnf", false);
	form.setVisibleById("dadosCli", false);
	form.setVisibleById("feedSatAnf", false);
	form.setVisibleById("feedSatCli", false);
	form.setVisibleById("dadoConvidado", false);
	form.setVisibleById("feedSolicit", false);
	if (atividadeAtual == "44") {
		form.setVisibleById("feedSatAnf", true);
		if (form.getValue("statusEventoAnfitriao") == "Realizado com sucesso"){
			form.setVisibleById("camposRemarcar", false);
			form.setVisibleById("camposRealSucess", true);
			form.getValue("desejaRemarcarAnfitriao") == "";
			form.getValue("porQualMotivoAnfitriao") == "";
			
		} else if (form.getValue("statusEventoAnfitriao") == "Falta de convidado"){
			form.setVisibleById("camposRemarcar", true);
			form.setVisibleById("camposRealSucess", false);
			form.getValue("interesseClient") == "";
			form.getValue("notaPerfilClient") == "";
		} else if (form.getValue("statusEventoAnfitriao") == ""){
			form.setVisibleById("camposRemarcar", false);
			form.setVisibleById("camposRealSucess", false);
		}
	}else if (atividadeAtual == "37"){
		form.setVisibleById("dadosAnf", true);
		form.setVisibleById("diaehora", true);
		form.setVisibleById("dadosCli", true);
		
		
		/*form.setVisibleById("solicit", false);
		form.setVisibleById("nome", false);
		form.setVisibleById("email", false);
		form.setVisibleById("segmentos", false);
		form.setVisibleById("modalidade", false);
		form.setVisibleById("segmentosL2", false);*/
		//Disabled no Painel Dados Anfitriao (menos o dia e hora)
		form.setEnabled("solicit", false, true);
		form.setEnabled("nome", false ,true);
		form.setEnabled("email", false ,true);
		form.setEnabled("segmentos", false ,true);
		form.setEnabled("modalidade", false ,true);
		form.setEnabled("segmentosL2", false ,true);
		//Disabled no Painel Dados Cliente (Convidado)
		form.setEnabled("emailClient", false, true);
		form.setEnabled("cnpj", false ,true);
		form.setEnabled("cargo", false ,true);
		form.setEnabled("wpp", false ,true);
		form.setEnabled("razao", false ,true);
		form.setEnabled("temprest", false ,true);
		form.setEnabled("contato", false ,true);
		form.setEnabled("briefing", false ,true);
		
		form.setShowDisabledFields(true);
	}else if (atividadeAtual == "20"){
		form.setVisibleById("feedSolicit", true);
		form.setVisibleById("camposRemarcar", false);
	}else if (atividadeAtual == "18"){
		form.setVisibleById("feedSatCli", true);
		form.setVisibleById("camposRemarcar", false);
		form.setShowDisabledFields(true);
	}else if (atividadeAtual == "23"){
		form.setShowDisabledFields(true);
		if (form.getValue("statusEventoAnfitriao") == "Realizado com sucesso"){
			form.setVisibleById("camposRemarcar", false);
			
		}
	}else if (atividadeAtual == "33"){
		form.setVisibleById("dadosAnf", false);
		form.setVisibleById("dadosCli", false);
		form.setVisibleById("feedSatAnf", false);
	}
}