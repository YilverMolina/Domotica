<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CasaDomotica.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <title>Casa Domótica</title>
    <!-- Favicon-->
    <link rel="icon" href="public/favicon.ico" type="image/x-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css" />

    <!-- Bootstrap Core Css -->
    <link href="public/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" />

    <!-- Waves Effect Css -->
    <link href="public/plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="public/plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Preloader Css -->
    <link href="public/plugins/material-design-preloader/md-preloader.css" rel="stylesheet" />

    <!-- Morris Chart Css-->
    <link href="public/plugins/morrisjs/morris.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="public/css/style.css" rel="stylesheet" />

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="public/css/themes/all-themes.css" rel="stylesheet" />

    <script src="angular/lib/angular.min.js"></script>
    <script src="angular/lib/angular-resource.min.js"></script>
    <script src="angular/controllers/app.js" charset="utf-8"></script>
    <script src="angular/controllers/controller_menu.js" charset="utf-8"></script>

</head>
<body ng-app="UDLA">
    <form id="form" runat="server">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div class="col-md-6 text-center">
                    <div class="card">
                        <div class="logo">
                            <br />
                            <h1>Smart<b>House</b></h1>
                            <small>Aplicación para controlar tu vivienda</small><br />
                            <hr />
                            <img class="img-responsive" src="imgs/domotica.png" alt="" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="row">
                            <div class="col-lg-12">
                                <asp:Panel ID="Resultados" runat="server" Visible="false" CssClass="alert alert-danger">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <asp:Label ID="LResultado" runat="server" Text=""></asp:Label>
                                </asp:Panel>
                            </div>
                        </div>
                        <div class="body text-center">
                            <br />
                            <div class="msg text-center">
                                <h3>Autenticación de usuario</h3>
                            </div>
                            <hr />
                            <br />
                            <br />
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">person</i>
                                </span>
                                <div class="form-line text-center">
                                    <asp:TextBox ID="Username" runat="server" CssClass="form-control" placeholder="Nombre de usuario" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">lock</i>
                                </span>
                                <div class="form-line text-center">
                                    <asp:TextBox ID="Password" CssClass="form-control" TextMode="Password" placeholder="Contraseña" runat="server" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-8 p-t-5">
                                    <input type="checkbox" name="rememberme" id="rememberme" class="filled-in chk-col-pink" />
                                    <label for="rememberme">Recordarme</label>
                                </div>
                                <div class="col-xs-4">
                                    <asp:Button ID="Ingresar" CssClass="btn btn-block bg-pink waves-effect" runat="server" Text="INGRESAR" OnClick="Iniciar_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Jquery Core Js -->
    <script src="public/plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="public/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="public/plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="public/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="public/plugins/node-waves/waves.js"></script>

    <!-- Jquery CountTo Plugin Js -->
    <script src="public/plugins/jquery-countto/jquery.countTo.js"></script>

    <!-- Morris Plugin Js -->
    <script src="public/plugins/raphael/raphael.min.js"></script>
    <script src="public/plugins/morrisjs/morris.js"></script>

    <!-- ChartJs -->
    <script src="public/plugins/chartjs/Chart.bundle.js"></script>

    <!-- Flot Charts Plugin Js -->
    <script src="public/plugins/flot-charts/jquery.flot.js"></script>
    <script src="public/plugins/flot-charts/jquery.flot.resize.js"></script>
    <script src="public/plugins/flot-charts/jquery.flot.pie.js"></script>
    <script src="public/plugins/flot-charts/jquery.flot.categories.js"></script>
    <script src="public/plugins/flot-charts/jquery.flot.time.js"></script>

    <!-- Sparkline Chart Plugin Js -->
    <script src="public/plugins/jquery-sparkline/jquery.sparkline.js"></script>

    <!-- Custom Js -->
    <script src="public/js/admin.js"></script>
    <script src="public/js/pages/index.js"></script>

    <!-- Demo Js -->
    <script src="public/js/demo.js"></script>

    </form>
</body>
</html>
