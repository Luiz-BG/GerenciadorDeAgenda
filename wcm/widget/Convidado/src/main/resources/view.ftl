<div id="MyWidget_${instanceId}" class="super-widget wcm-widget-class fluig-style-guide"
	data-params="MyWidget.instance()">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.tailwindcss.com"></script>
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

	<body class="body">
		<!--Estilo Fluig-->
		<div class="fluig-style-guide">
			<!--Formulário-->
			<form role="form" id="formulario">
				<!--Início do bloco container-->
				<section class="container cadastro" id="painel">
					<img src="/resources/images/logo.png" class="logoConvidado" alt="Logo Totvs">
					<header class="tituloRelativo"> Convidado</header>
					<div class="form">
						<!--Coluna (Nova Linha)-->
						<div class="column">
							<!--Campo de preenchimento de email-->
							<div class="input-box">
								<label><i class="flaticon flaticon-email icon-sm" aria-hidden="true"></i> E-mail</label>
								<input class="selecione-texto" id="email" name="Email" type="text" required=""
									onblur="filtroform()" style="width: 98%; font-size: 14px; height:48px;" />
							</div>
						</div>
						<!--Seleção de status da reunião-->
						<!--Coluna (Nova Linha)-->
						<div class="column">
							<!--Box expecífico para inputs-->
							<div class="input-box">
								<!--Título do campo-->
								<label><i class="fluigicon fluigicon-user-config icon-sm" aria-hidden="true"></i>
									Processos</label>
								<div class="column">
									<div class="select-box">
										<select required="" name="processo" id="processo" class="form-control"
											style="height: 100%;">
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
									Nota de avaliação do evento como um todo</label>
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
									Nota para medir o interesse no serviço TOTVS</label>
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
							<div class="input-box mb-7">
								<label><i class="fluigicon fluigicon-thumbs-up icon-sm" aria-hidden="true"></i>
									Comentários</label>
								<textarea class="form-control no-resize" name="coment" id="coment" rows="8"
									maxlength="4000" required=""></textarea>
							</div>
						</div>
						<div class="column">
							<button type="button" class="enviar btn btn-primary text-base font-sans h-13.75 w-282 font-normal mt-7.5 cursor-pointer" onClick="editareg()">Enviar</button>
						</div>
					</div>
				</section>
				<section id="sucesso" style="display: none">
					<div class="sucesso place-content-center flex">
						<div class="meio">
							<img src="/resources/images/logo.png" class="logoConvidado" alt="Logo Totvs"><br>
							<div class="row column">
								<div class="memeio">
									<header class="h2 relative">Seu Feedback foi enviado com sucesso</header><br>
									<h3>Muito obrigado por usar nossa plataforma!</h3><br>
								</div>
								<div class="fs-display-flex fs-justify-content-center">
									<button type="button" class="btn btn-default"><a href="http://192.168.2.11:8080" style="text-decoration: none;">Voltar para o menu</a></button>
								</div>
							</div>
						</div>
					</div>
				</section>
			</form>
		</div>
	</body>
</div>
</div>