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
                            <p class="fs-text-center fs-width-300 fs-margin-auto">Compartilhe informações sobre o nome e o telefone de contato com whatsapp</p>
                        </div>
                        <div class="col-md-6 fs-no-padding-top">
                            <h2 class="fs-text-center"><i class="flaticon flaticon-assignment icon-lg" aria-hidden="true"></i> BRIEFING</h2>
                            <p class="fs-text-center fs-width-300 fs-margin-auto">Digite informações e instruções precisas e essenciais da reunião</p>
                        </div>
                    </div>
                    <div class="row column">
                        <div class="col-lg-12 fs-huge-margin-top justify-center" style="text-align: center; align-itens: center;">
                            <a href="#" class="btn btn-primary btn-lg" onclick="formARQ()" onclick="colorChange()" id="preencha" style="width: 150px">Preencha</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="formularios">
            <!---->
            <div id="ARQ" style="display: none">
                <form role="form" id="formulario">
                    <section class="container cadastro items-center justify-center">
                        <!--Cabeçalho do container-->
                        <img src="/resources/images/logo.png" class="m-auto h-8 w-37.5 absolute mx-5" alt="Logo Totvs">
                        <header class="h2 relative">ESN</header>
                        <!--Final do container-->
                        <div class="form">
                            <!--Coluna reunião-->
                            <div class="column">
                                <div class="input-box" style="width: 100%">
                                    <label for="date-time">Data para a reunião</label>
                                        <input type="text" class="form-control" name="diaehora" id="diaehora" placeholder="Data e hora" style="height: 48px;">
                                    </div>
                            </div>
                            <!--Coluna Categoria-->
                            <div class="column">
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-order icon-sm" aria-hidden="true"></i>Categoria</label>
                                    <div class="column">
                                        <div class="select-box">
                                            <select required="" id="ctgs" name="ctgs" class="form-control"
                                                style="height: 100%" onchange="filtrosubcat()">
                                                <option hidden value="">Selecione sua Categoria</option>
                                                <option value="APPS" required> APPS</option>
                                                <option value="AUTOMAÇÃO COMERCIAL" required> AUTOMAÇÃO COMERCIAL</option>
                                                <option value="COMÉRCIO EXTERIOR" required> COMÉRCIO EXTERIOR</option>
                                                <option value="CONCESSIONÁRIAS" required> CONCESSIONÁRIAS</option>
                                                <option value="CONTROLADORIA" required> CONTROLADORIA</option>
                                                <option value="CRM" required> CRM</option>
                                                <option value="DIST. E LOGISTICA" required> DIST. E LOGISTICA</option>
                                                <option value="EDUCACIONAL" required> EDUCACIONAL</option>
                                                <option value="FLUIG" required> FLUIG</option>
                                                <option value="MANUFATURA" required> MANUFATURA</option>
                                                <option value="MATERIAIS E PRODUÇÃO" required> MATERIAIS E PRODUÇÃO</option>
                                                <option value="PAINÉIS" required> PAINÉIS</option>
                                                <option value="RECURSOS HUMANOS" required> RECURSOS HUMANOS</option>
                                                <option value="RENTAL" required> RENTAL</option>
                                                <option value="SAÚDE" required> SAÚDE </option>
                                                <option value="SERVIÇOS" required> SERVIÇOS</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <!--Coluna Subcategoria-->
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-toc icon-sm" aria-hidden="true"></i>SubCategoria</label>
                                    <div class="column">
                                        <div class="select-box">
                                            <select required="" id="sctgs" name="sctgs" class="form-control" style="height: 100%">
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <!--Botão Pesquisa-->
                                <div class="agoravaimano" id="lupa">
                                    <button class="btn btn-primary lupa" type="button" onClick="BuscaInfo()" onClick="table()"><i class="flaticon flaticon-search icon-sm" aria-hidden="true"></i></button>
                                </div>
                            </div>
                            <!--Tabela de resultado de busca-->
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
                                <!--Coluna de ARQ-->
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-card-user icon-sm" aria-hidden="true"></i> ARQ</label>
                                    <input type="text" placeholder="Preenchimento Automático" required id="arq" name="arq" disabled />
                                </div>
                                <!--Coluna de email-->
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-email icon-sm" aria-hidden="true"></i>
                                        E-mail</label>
                                    <input type="text" placeholder="Preenchimento Automático" required id="email" name="email" disabled />
                                </div>
                                <!--Coluna modalidade-->
                                <div class="mod-box">
                                    <label class="font-bold"><i class="flaticon flaticon-group-config icon-sm" aria-hidden="true"></i>
                                        Modalidade</label>
                                    <div class="mod-option">
                                        <div class="mod">
                                            <input type="radio" id="mod" name="mod" required value="Presencial" />
                                            <label for="presencial" class="pointer-events-none">Presencial</label>
                                        </div>
                                        <div class="mod">
                                            <input type="radio" id="mod" name="mod" required value="Online" />
                                            <label for="online" class="pointer-events-none">Online</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Botão de Client-->
                            <div class="column" id="botaoClient">
                                <div class="input-box flex justify-center items-center">
                                    <div class="agoravaimano">
                                        <button class="btn btn-primary" type="button" onclick="mostraProspect()" onclick="datatable()">Client</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="container clienteProspect" style="display: none" id="clienteProspect">
                        <!--Cabeçalho do Cliente Prospect-->
                        <header class="h2">Cliente/Prospect</header>
                        <div class="form">
                            <div class="column">
                                <!--Coluna email-->
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-email icon-sm" aria-hidden="true"></i> Email: </label>
                                    <input type="text" placeholder="Seu e-mail aqui" id="emailClient" name="emailClient" placeholder="email@email.com"
                                        type="text" pattern="[a-z0-9._%+-]
+@[a-z0-9.-]
+\.[a-z]
{2,4}$" required="" />
                                </div>
                                <!--Coluna CNPJ-->
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
                                <!--Coluna cargo-->
                                <div class="input-box">
                                    <label><i class="fluigicon fluigicon-group-school-note icon-sm" aria-hidden="true"></i> Cargo: </label>
                                    <input id="cargo" name="cargo" placeholder="Ex: Executivo" type="text"
                                        required />
                                </div>
                                <!--Campo whatsapp-->
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-supervisor-account icon-sm" aria-hidden="true"></i> Pessoa de Contato:</label>
                                    <input id="contato" name="contato" type="text" required="" placeholder="Ex: Dennis" />
                                </div>
                            </div>
                            <div class="column">
                                <!--Campo razao-->
                                <div class="input-box">
                                    <label><i class="flaticon flaticon-assignment-ind icon-sm" aria-hidden="true"></i> Razão Social: </label>
                                    <input id="razao" name="razao" type="text" required="" placeholder="Ex: Totvs" />
                                </div>
                                <!--Campo contato-->
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
                                <!--Campo briefing-->
                                <div class="input-box briefing">
                                    <label><i class="flaticon flaticon-assignment icon-sm" aria-hidden="true"></i> Briefing</label>
                                    <textarea class="form-control no-resize" name="briefing" id="briefing" rows="8" maxlength="4000"
                                        required=""></textarea>
                                </div>
                            </div>
                            <div class="column">
                                <div id="target"></div>
                            </div>
                            <!--Botão Enviar-->
                            <button type="button" id="btn-enviar" class="enviar btn btn-primary btn-enviar" onClick="criaRegistro()" onClick="mensagemRegistro()">Enviar</button>
                        </div>
                    </section>
                </form>
                <div class="sucesso place-content-center flex" id="sucesso">
                    <div class="meio">
                        <!--Cabeçalho processo iniciado-->
                        <div class="memeio">
                            <h1>Sua solicitação foi iniciada com sucesso!</h1><br>
                            <h2>Aqui esta um resumo da sua solicitação</h2><br>
                        </div>
                        <div><br>
                            <!--Info da solicitação criada-->
                            <ul class="solicit" id="solicit">
                            </ul>
                            <!--Botão volta home do site 192-->
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