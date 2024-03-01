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
					<img src="/resources/images/logo.png" alt="Logo Totvs"
						style="height: 32px; width: 150px; position:absolute;left:20px">
					<header style="position:relative;">Solicitante</header>
					<div class="form">
						<!--Coluna (Nova Linha)-->
						<div class="column">
							<!--Box expecífico para inputs-->
							<div class="input-box">
								<label><i class="fluigicon fluigicon-user-config icon-sm" aria-hidden="true"></i>
									Processos</label>
								<div class="column">
									<div class="select-box">
										<select required="" name="processo" id="processo" class="form-control"
											style="height:48px;">
											<option hidden value="">Seleção automática do processo</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<!--Primeira seleção de nota-->
						<div class="column">
							<div class="input-box">
								<label><i class="fluigicon fluigicon-pen icon-sm" aria-hidden="true"></i>
									Nota para o interesse do Cliente/Prospect</label>
								<div class="column">
									<div class="select-box">
										<select required="" id="nota1" name="nota1" class="form-control"
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
						<div class="column">
							<div class="input-box">
								<label><i class="fluigicon fluigicon-pen icon-sm" aria-hidden="true"></i>

									Nota do perfil do Cliente/Prospect para aderir TOTVS</label>
								<div class="column">
									<div class="select-box">
										<select required="" id="nota2" name="nota2" class="form-control"
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
						<div class="column">
							<div class="input-box">
								<label><i class="fluigicon fluigicon-thumbs-up icon-sm" aria-hidden="true"></i>
									Comentários</label>
								<textarea class="form-control no-resize" name="coment" id="coment" rows="8"
									maxlength="4000" required=""></textarea>
							</div>
						</div>
						<div class="column">
							<button type="button" class="enviar" onClick="editareg()"
								style="font-size: 1rem; font-family: sans serif; color: #fff; font-size: 15px; font-weight: 400; margin-top: 30px;">Enviar</button>
						</div>
					</div>
		</div>
		</section>
		</form>
</div>
</body>
</div>
</div>