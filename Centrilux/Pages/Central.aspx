<%@ Page Title="Central de datos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Central.aspx.cs" Inherits="Centrilux.Pages.Central" %>

<%@ Register Src="~/User_Controls/Personas.ascx" TagPrefix="uc1" TagName="Personas" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">

    <!-- STYLES EXTENSION -->

    <!-- Theme style -->
    <link rel="stylesheet" href="/Content/dist/css/pages/InfoBoxes.min.css" />
    <link rel="stylesheet" href="/Content/dist/css/pages/Datos.css" />

    <!-- AdminLTE Skins. Choose a skin from the css/skins
     folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/Content/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="/Content/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="/Content/plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="/Content/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="/Content/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="/Content/plugins/daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="/Content/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="SubbodyContent" runat="server">

    <!-- PAGE SCRIPTS -->
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="Content/plugins/morris/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="Content/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="Content/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="Content/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="Content/plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>--%>
    <script src="Content/dist/js/moment.js"></script>
    <script src="Content/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="Content/plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="Content/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="Content/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="Content/plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="Content/dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="Content/dist/js/demo.js"></script>
    <script src="Content/dist/js/jquery.quicksearch.js"></script>

    <!-- PAGE JS -->
    <script type="text/javascript" src="Content/dist/js/AuxiliarFunctions.js"></script>
    <script type="text/javascript" src="Content/dist/js/pages/Datos.js"></script>
    <script type="text/javascript" src="Content/dist/js/jquery.tablesorter.js"></script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper1">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Base de Datos
        <a href="/Pages/Datos.aspx"><small style="color: black">Datos estáticos</small></a>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Inicio</a></li>
                <li class="active">Base de Datos</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box box-selected" id="divBoxClientes" style="border-color: darkgray; background: lightblue;">
                        <span class="info-box-icon bg-red"><i class="fa fa-users"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Clientes_Particulares</span>
                            <span class="info-box-number">0</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box box-selected" id="divBoxClientes_Barraca">
                        <span class="info-box-icon bg-purple"><i class="fa fa-users"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Clientes_Barracas</span>
                            <span class="info-box-number">0</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box" id="divBoxProveedores">
                        <span class="info-box-icon bg-light-blue"><i class="fa fa-black-tie"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Proveedores</span>
                            <span class="info-box-number">0</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box" id="divBoxCuadrillas">
                        <span class="info-box-icon bg-green"><i class="fa fa-thumbs-o-up"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Changadores</span>
                            <span class="info-box-number">0</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->

                 <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box" id="divBoxCamiones">
                        <span class="info-box-icon bg-purple"><i class="fa fa-truck"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Camiones</span>
                            <span class="info-box-number">0</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>           

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box" id="divBoxChoferes">
                        <span class="info-box-icon bg-yellow"><i class="fa fa-cog"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Choferes</span>
                            <span class="info-box-number">0</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>                     

                 <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box" id="divBoxFleteros">
                        <span class="info-box-icon bg-red"><i class="fa fa-anchor"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Fleteros</span>
                            <span class="info-box-number">0</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>

                <%--<div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box" id="divBoxCargadores">
                        <span class="info-box-icon bg-blue"><i class="fa fa-suitcase"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Cargadores</span>
                            <span class="info-box-number">0</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box --> 
                </div>            --%>   
                <!-- /.col -->
                
                <%--<div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box" id="divBoxProcesadores">
                        <span class="info-box-icon bg-teal"><i class="fa fa-scissors"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Procesadores</span>
                            <span class="info-box-number">0</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>--%>
                 

            </div>


            <!-- =========================================================== -->


            <div class="box box-default">
                <div class="box-header with-border" style="padding-bottom: 0;">

                    <div class="row">
                        <div class="col-md-9">
                            <h3 class="box-title">
                                <label id="lblTableActive" style="font-weight: normal;"></label>
                            </h3>
                        </div>

                        <div class="col-md-2 pull-right" style="margin-right: 10px;">
                            <form action="#" method="get" class="sidebar-form" style="display: block !important; width: 100%;">
                                <div class="input-group ">
                                    <input type="text" id="txbSearch" name="q" class="form-control" placeholder="Buscar...">
                                    <span class="input-group-btn">
                                        <button type="button" name="search" id="search-btn" class="btn btn-flat">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>


                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div id="divContent" style="overflow: auto;">

                                    <div class="divTables" id="divClientes" style="display: block;">
                                        <asp:UpdatePanel ID="upClientes" runat="server">
                                            <ContentTemplate>
                                                <uc1:Personas runat="server" ID="Personas" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                    <div class="divTables" id="divClientes_Barraca" style="display: none;">
                                        <asp:UpdatePanel ID="upClientes_Barraca" runat="server">
                                            <ContentTemplate>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>                                    
                                    <div class="divTables" id="divCuadrillas" style="display: none;">
                                        <asp:UpdatePanel ID="upCuadrillas" runat="server">
                                            <ContentTemplate>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                    <div class="divTables" id="divCamiones" style="display: none;">
                                        <asp:UpdatePanel ID="upCamiones" runat="server">
                                            <ContentTemplate>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                    <div class="divTables" id="divChoferes" style="display: none;">
                                        <asp:UpdatePanel ID="upChoferes" runat="server">
                                            <ContentTemplate>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                     <%--<div class="divTables" id="divCargadores" style="display: none;">
                                        <asp:UpdatePanel ID="upCargadores" runat="server">
                                            <ContentTemplate>
                                                <uc1:Cargadores runat="server" ID="Cargadores" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>--%>
                                    <div class="divTables" id="divFleteros" style="display: none;">
                                        <asp:UpdatePanel ID="upFleteros" runat="server">
                                            <ContentTemplate>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>               
                                    <div class="divTables" id="divProveedores" style="display: none;">
                                        <asp:UpdatePanel ID="upProveedores" runat="server">
                                            <ContentTemplate>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>                    
                                    <%--<div class="divTables" id="divProcesadores" style="display: none;">
                                        <asp:UpdatePanel ID="upProcesadores" runat="server">
                                            <ContentTemplate>
                                                <uc1:Procesadores runat="server" ID="Procesadores" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>--%>

                                </div>
                            </div>

                            <!-- /.form-group -->
                        </div>
                        <!-- /.col -->
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.box-body -->
            </div>



            <!-- =========================================================== -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->



</asp:Content>
