<div id="MyWidget_${instanceId}" class="super-widget wcm-widget-class fluig-style-guide"
	data-params="MyWidget.instance()">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="/webdesk/vcXMLRPC.js"></script>
	<style>
		body {
			min-height: 100vh;
			display: flex;
			align-items: center;
			justify-content: center;
			padding: 20px;
			background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(13, 9, 121, 1) 35%, rgba(0, 212, 255, 1) 100%);
			overflow-x: hidden;
		}
	</style>

	<body>
		<!--Estilo Fluig-->
		<div class="fluig-style-guide">
			<!--Formulário-->
			<form role="form" id="formulario">
				<!--Início do bloco container-->
				<section class="container cadastro">
					<img src="/resources/images/logo.png" class="logoConvidado" alt="Logo Totvs">
					<header class="tituloRelativo">Anfitrião</header>
					<div class="form">
						<div class="column">
							<!--Campo de consulta de Processos Automatizada-->
							<!--Box expecífico para inputs-->
							<div class="input-box">
								<label><i class="fluigicon fluigicon-user-config icon-sm" aria-hidden="true"></i>
									Processos</label>
								<div class="column">
									<div class="select-box">
										<select required="" name="processo" id="processo" class="form-control"
											style="height:100%;">
											<option hidden value="">Seleção automática do processo</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<!--Seleção de status da reunião-->
						<!--Coluna (Nova Linha)-->
						<div class="column">
							<!--Box expecífico para inputs-->
							<div class="input-box">
								<!--Título do campo-->
								<label><i class="fluigicon fluigicon-calendar icon-sm" aria-hidden="true"></i> Status do
									Evento</label>
								<div class="column">
									<div class="select-box">
										<select required="" id="statusEvento" name="statusEvento" class="form-control"
											style="height: 100%;" onchange="estatus()">
											<option hidden value="">Selecione o ocorrido</option>
											<option value="Realizado com sucesso" required="" id="realizado"
												name="realizado">Realizado com Sucesso</option>
											<option value="Falta do Convidado" required="" id="faltaC" name="faltaC">Falta do
												Convidado</option>
										</select>
									</div>
								</div>
							</div>
							<!--Input pedindo explicação da seleção "Falta do Convidado"-->
							<div class="input-box" style="display: none" id="FC">
								<label><i class="flaticon flaticon-assignment-ind icon-sm" aria-hidden="true"></i> Por
									qual motivo? </label>
								<div class="selecione-box"><input class="selecione-texto" id="motivo" name="motivo"
										type="text" required="" style="width: 100%; font-size: 14px; height: 100%;" /></div>
							</div>
						</div>
						<!--Seleção de Remarcação da Reunião-->
						<div class="column" style="display: none" id="FCR">
							<div class="input-box">
								<label style="font-weight: bold;"><i class="flaticon flaticon-group-config icon-sm"
										aria-hidden="true"></i>
									Deseja Remarcar?</label>
								<div class="column">
									<div class="select-box">
										<select required="" id="remarcar" name="remarcar" class="form-control"
											style="height: 100%;">
											<option hidden value="">Selecione seu Desejo</option>
											<option value="sim" required>Remarcar</option>
											<option value="nao" required>Não Remarcar</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<!--Primeira seleção de nota-->
						<div class="column" style="display: none" id="R1">
							<div class="input-box">
								<label><i class="fluigicon fluigicon-pen icon-sm" aria-hidden="true"></i>
									Nota para o interesse do Cliente/Prospect</label>
								<div class="column">
									<div class="select-box">
										<select required="" id="nota1solicit" name="nota1solicit" class="form-control"
											style="height: 100%;">
											<option hidden value="">Selecione a nota de 1 a 5 estrelas</option>
											<option value="1" required="" id="estrela" name="estrela">★✩✩✩✩</option>
											<option value="2" required="" id="estrela" name="estrela">★★✩✩✩</option>
											<option value="3" required="" id="estrela" name="estrela">★★★✩✩</option>
											<option value="4" required="" id="estrela" name="estrela">★★★★✩</option>
											<option value="5" required="" id="estrela" name="estrela">★★★★★</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<!--Segunda seleção de nota-->
						<div class="column" style="display: none" id="R2">
							<div class="input-box">
								<label><i class="fluigicon fluigicon-pen icon-sm" aria-hidden="true"></i>
									Nota do perfil do Cliente/Prospect
para aderir TOTVS
</label>
								<div class="column">
									<div class="select-box">
										<select required="" id="nota2solicit" name="nota2solicit" class="form-control"
											style="height: 100%;">
											<option hidden value="">Selecione a nota de 1 a 5 estrelas</option>
											<option value="1" required="" id="estrela" name="estrela">★✩✩✩✩</option>
											<option value="2" required="" id="estrela" name="estrela">★★✩✩✩</option>
											<option value="3" required="" id="estrela" name="estrela">★★★✩✩</option>
											<option value="4" required="" id="estrela" name="estrela">★★★★✩</option>
											<option value="5" required="" id="estrela" name="estrela">★★★★★</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<!--Textarea de Comentários sobre a Reunião-->
						<div class="column" style="display: none" id="comentarios">
							<div class="input-box">
								<label><i class="fluigicon fluigicon-thumbs-up icon-sm" aria-hidden="true"></i>
									Comentários</label>
								<textarea class="form-control no-resize" name="comentsolicit" id="comentsolicit" rows="8"
									maxlength="4000" required=""></textarea>
							</div>
						</div>
						<div class="column">
							<button type="button" class="enviar" onClick="editareg()" style="font-size: 1rem;
    font-family: sans serif;
    color: #fff;
    font-size: 15px;
    font-weight: 400;
    margin-top: 30px;">Enviar</button>
						</div>
					</div>
				</section>
			</form>
		</div>
	</body>
</div>
</div>