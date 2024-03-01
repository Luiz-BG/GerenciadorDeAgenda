<div id="MyWidget_${instanceId}" class="super-widget wcm-widget-class fluig-style-guide" data-params="MyWidget.instance()">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <script type="text/javascript" src="/webdesk/vcXMLRPC.js"></script>
    <style>
    .corpo {
        background: url(https://www.totvs.com/wp-content/uploads/2020/08/banner-fluig-home.jpg);
        background-repeat: no-repeat;
        background-size: cover;
    }
    </style>
    <div class="corpo" id="corpo">
        <div class="conteudoHome" id="conteudoHome">
            <div class="container-home h-screen">
                <header class="header" id="header">
                    <a href="https://www.totvs.com/fluig/"><img src="https://www.totvs.com/wp-content/themes/totvs-theme/dist/images/fluig/logo-fluig_954b415a.png" alt="Logo Totvs" class="m-auto h-8 w-37.5 absolute mx-5"></a>
                </header>
                <!--Texto do Fluig da Home-->
                <div class="row column TextoHome">
                    <div class="col-lg-8 fs-xx-huge-padding">
                        <!--Paragrafo Texto do Fluig da Home-->
                        <div class="text-neutral-50  font-sans px-5 " style="font-size:2vw;">Com TOTVS Fluig, sua empresa<br class="pt-20">
                            <span class="text-yellow">unifica processos, pessoas e sistemas </span><br class="pt-20">
                            com uma interface <span class="text-yellow">fácil de usar e intuitiva</span>
                        </div>
                        <!--Paragrafo 2 Texto do Fluig da Home-->
                        <div class="text-neutral-50  font-sans pt-5 px-5" style="font-size:2vw;">Mais de quatro mil clientes já usam as soluções do <span class="text-yellow">Fluig </span>para impulsionar os seus negócios
                        </div>
                    </div>
                </div>
            </div>
            <div class="row column fs-bg-white fs-no-margin-bottom w-screen h-2/5 campoBranco">
                <h1 class="fs-text-center">O QUE VOCÊ PRECISA PREENCHER</h1>
                <div class="fs-display-block fs-justify-content-space-between fs-xxl-padding-top fs-xxl-padding-horizontal fs-lg-padding-bottom fs-no-padding-right">
                    <div class="column fs-huge-margin-bottom">
                        <div class="col-md-6 fs-no-padding-top">
                            <h2 class="fs-text-center"> <i class="flaticon flaticon-form-list icon-lg" aria-hidden="true"></i> DADOS</h2>
                            <p class="fs-text-center fs-width-300 fs-margin-auto">Informe dados como nome do arquiteto, email, a categoria e subcategoria que ele(a) se encaixa</p>
                        </div>
                        <div class="col-md-6 fs-no-padding-top">
                            <h2 class="fs-text-center"> <i class="flaticon flaticon-group-person icon-lg" aria-hidden="true"></i> MODALIDADE</h2>
                            <p class="fs-text-center fs-width-300 fs-margin-auto">Deixe claro o tipo de evento que o(a) executivo(a) ira participar para a automatização do convite</p>
                        </div>
                    </div>
                    <div class="column fs-xx-huge-margin-bottom">
                        <div class="col-md-6 fs-no-padding-top">
                            <h2 class="fs-text-center"><i class="flaticon flaticon-contact-phone icon-lg" aria-hidden="true"></i> CONTATO</h2>
                            <p class="fs-text-center fs-width-300 fs-margin-auto">Compartilhe informações referente ao nome e o telefone de contato com whatsapp</p>
                        </div>
                        <div class="col-md-6 fs-no-padding-top">
                            <h2 class="fs-text-center"><i class="flaticon flaticon-assignment icon-lg" aria-hidden="true"></i> BRIEFING</h2>
                            <p class="fs-text-center fs-width-300 fs-margin-auto">Digite informações e instruções precisas e essenciais da reunião</p>
                        </div>
                    </div>
                    <div class="row column">
                        <div class="col-lg-12 fs-huge-margin-top justify-center" style="text-align: center; align-itens: center;">
                            <a href="#" class="btn btn-primary btn-lg" onclick="formESN()" onclick="colorChange()" id="preencha" style="width: 150px">Preencha</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="formularios">
            <div id="ESN" style="display: none">
                <form role="form" id="formulario">
                    <section class="container cadastro">
                        <img src="/resources/images/logo.png" class="m-auto h-8 w-37.5 absolute mx-5" alt="Logo Totvs">
                        <header class="h2 relative">APN</header>
                        <div class="form">
                            <div class="column">
                                <div class="input-box w-full">
                                    <div class="form-group">
                                        <label for="date-time">Data para a reunião</label>
                                        <input type="text" class="form-control" name="diaehora" id="diaehora" placeholder="Data e hora" style="height: 48px;">
                                    </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box" style="display: none">
                                    <input type="text" id="matricula" name="matricula">
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box" style="display: none">
                                    <input type="text" id="matriculasolicit" name="matriculasolicit">
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="fluigicon fluigicon-company icon-sm" aria-hidden="true"></i></i>
                                        Unidade</label>
                                    <div class="column">
                                        <div class="select-box">
                                            <select required="" id="unidade" name="unidade" class="form-control" style="height: 100%">
                                                <option hidden value="">Unidade</option>
                                                <option value="TSM" required="" id="tsm" name="tsm">TSM</option>
                                                <option value="TVALE" required="" id="tvale" name="tvale">TVALE</option>
                                                <option value="TSUL" required="" id="tsul" name="tsul">TSUL</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-align-left icon-sm" aria-hidden="true"></i>
                                        Segmento</label>
                                    <div class="column">
                                        <div class="select-box">
                                            <select required="" id="segmento" name="segmento" class="form-control" style="height: 100%">
                                                <option hidden value="">Selecione seu Segmento</option>
                                                <option value="Agro" required>Agro</option>
                                                <option value="Construção" required>Construção</option>
                                                <option value="Distribuição" required>Distribuição</option>
                                                <option value="Educacional" required>Educacional</option>
                                                <option value="Logística" required>Logística</option>
                                                <option value="Manufatura" required>Manufatura</option>
                                                <option value="Serviços" required>Serviços</option>
                                                <option value="Varejo" required>Varejo</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="agoravaimano" id="lupa">
                                    <button class="btn btn-primary lupa" type="button" onClick="BuscaInfo()" onClick="table()"><i class="flaticon flaticon-search icon-sm" aria-hidden="true"></i></button>
                                </div>
                            </div>
                            <div class="column" id="tabela">
                                <div class="input-box">
                                    <table class="table table-hover" id="tablesconder" name="tablesconder">
                                        <thead>
                                            <tr>
                                                <td><b><i class="flaticon flaticon-add-branch icon-xl" aria-hidden="true"></i>
                                                    </b></td>
                                                <td><b>Nome</b></td>
                                                <td><b>Email</b></td>
                                            </tr>
                                        </thead>
                                        <tbody id="tbDadosMIT"></tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-card-user icon-sm" aria-hidden="true"></i> Nome</label>
                                    <input type="text" placeholder="Preenchimento Automático" required id="nome" name="nome" disabled />
                                </div>
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-email icon-sm" aria-hidden="true"></i>
                                        E-mail</label>
                                    <input type="text" placeholder="Preenchimento Automático" required id="email" name="email" disabled />
                                </div>
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-assignment-turned-in icon-sm" aria-hidden="true"></i> Modalidade</label>
                                    <div class="column">
                                        <div class="select-box">
                                            <select required="" id="mod" name="mod" class="form-control" style="height: 100%">
                                                <option hidden value="">Selecione sua Modalidade</option>
                                                <option value="Presencial" required>Presencial</option>
                                                <option value="Online" required>Online</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="column" id="botaoClient">
                                <div class="input-box flex justify-center items-center">
                                    <div class="agoravaimano">
                                        <button class="btn btn-primary" type="button" onclick="mostraProspect()">Client</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="container clienteProspect" style="display: none" id="clienteProspect">
                        <header class="h2">Cliente/Prospect</header>
                        <div class="form">
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-email icon-sm" aria-hidden="true"></i> Email: </label>
                                    <input type="text" placeholder="Seu e-mail aqui" id="emailClient" name="emailClient" placeholder="email@email.com"
                                        type="text" pattern="[a-z0-9._%+-]
+@[a-z0-9.-]
+\.[a-z]
{2,4}$" required="" />
                                </div>
                                <div class="input-box">
                                    <label><i class="fluigicon fluigicon-search-test icon-sm" aria-hidden="true"></i> CNPJ: </label>
                                    <input id="cnpj" name="cnpj" placeholder="00.000.000/0000-00" required=""
                                        type="text" maxlength="18" pattern="\[0-9]
{2}\ [0-9]
{4,6}-[0-9]
{3,4}$"
                                        OnKeyPress="formatar('##.###.###/####-##', this)" />
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="fluigicon fluigicon-group-school-note icon-sm" aria-hidden="true"></i> Cargo: </label>
                                    <input id="cargo" name="cargo" placeholder="Ex: Executivo" type="text"
                                        required />
                                </div>
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-contact-phone icon-sm" aria-hidden="true"></i> WhatsApp: </label>
                                    <input id="wpp" name="wpp" placeholder="XX XXXXX-XXXX" required=""
                                        type="text" maxlength="13" pattern="\[0-9]
{2}\ [0-9]
{4,6}-[0-9]
{3,4}$"
                                        OnKeyPress="formatar('## #####-####', this)" />
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-assignment-ind icon-sm" aria-hidden="true"></i> Razão Social: </label>
                                    <input id="razao" name="razao" type="text" required="" placeholder="Ex: Totvs" />
                                </div>
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-supervisor-account icon-sm" aria-hidden="true"></i> Pessoa de Contato:</label>
                                    <input id="contato" name="contato" type="text" required="" placeholder="Ex: Dennis" />
                                </div>
                            </div>
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-assignment icon-sm briefing" aria-hidden="true"></i> Briefing</label>
                                    <textarea class="form-control no-resize" name="briefing" id="briefing" rows="8" maxlength="4000"
                                        required=""></textarea>
                                </div>
                            </div>
                            <div class="column flex justify-center items-center p-[30px]">
                                <button type="button" class="btn btn-primary" onclick="aparecerconvid()" onclick="listaconvidados()">Convidados</button>
                            </div>
                            <div class="panel-body painelconvidado" id="convidados" style="display: none;">
                                <div class="checkbox-input-pair">
                                    <label>
                                        <input type="checkbox" onclick="convidados('1')" id="checkbox1" class="checkbox" />
                                        Email Convidado 1
                                    </label>
                                    <input type="text" class="input" id="emailconvid1" disabled />
                                </div>
                                <div class="checkbox-input-pair">
                                    <label>
                                        <input type="checkbox" onclick="convidados('2')" id="checkbox2" class="checkbox" />
                                        Email Convidado 2
                                    </label>
                                    <input type="text" class="input" id="emailconvid2" disabled />
                                </div>
                                <div class="checkbox-input-pair">
                                    <label>
                                        <input type="checkbox" id="checkbox3" onclick="convidados('3')" class="checkbox" />
                                        Email Convidado 3
                                    </label>
                                    <input type="text" class="input" id="emailconvid3" disabled />
                                </div>
                                <div class="checkbox-input-pair">
                                    <label>
                                        <input type="checkbox" onclick="convidados('4')" id="checkbox4" class="checkbox" />
                                        Email Convidado 4
                                    </label>
                                    <input type="text" class="input" id="emailconvid4" disabled />
                                </div>
                                <div class="checkbox-input-pair">
                                    <label>
                                        <input type="checkbox" id="checkbox5" onclick="convidados('5')" class="checkbox" />
                                        Email Convidado 5
                                    </label>
                                    <input type="text" class="input" id="emailconvid5" disabled />
                                </div>
                            </div>
                            <button type="button" class="enviar btn btn-primary text-base font-sans h-13.75 w-282 font-normal mt-7.5 cursor-pointer" onClick="criaRegistro()" onClick="mensagemRegistro()">Enviar</button>
                        </div>
                    </section>
                </form>
                <div class="sucesso place-content-center flex" id="sucesso">
                    <div class="meio">
                    	<img src="/resources/images/logo.png" class="logoConvidado" alt="Logo Totvs"><br>
                        <div class="memeio">
                            <h1>Sua solicitação foi iniciada com sucesso!</h1><br>
                            <h2>Aqui esta o resumo da sua solicitação</h2><br>
                        </div>
                        <ul class="solicit" id="solicit">
                        </ul>
                        <div class="flex place-content-center">
                        	<button type="button" class="btn btn-default"><a href="http://192.168.2.11:8080" style="text-decoration: none;">Voltar para o menu</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>