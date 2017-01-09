<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/MasterPage.Master" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="CasaDomotica.Views.Sensores.Datos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>DATOS DE LOS SENSORES</h2>
            </div>
            <!-- Basic Table -->

            <!-- #END# Basic Table -->
            <!-- Striped Rows -->
            <div class="row clearfix">
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>INFORMACIÓN GENERAL
                            </h2>
                            <p>Seleccione la parte de la vivienda para ver los sensores</p>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body table-responsive" ng-init="getPartesVivienda()">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>NOMBRE</th>
                                        <th>ESTADO</th>
                                        <th>SENSORES</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="l in listaPartesVivienda">
                                        <th scope="row">{{l.idParteVivienda}}</th>
                                        <td>{{l.DescripcionPV}}</td>
                                        <td>
                                            <span ng-if="l.Estado == 'Activo'" class="badge bg-green">{{l.Estado}}</span>
                                            <span ng-if="l.Estado == 'Inactivo'" class="badge bg-red">{{l.Estado}}</span>
                                        </td>
                                        <td>
                                            <a href="#" ng-click="getSensoresParte(l.idParteVivienda)" class="btn btn-xs btn-primary">Ver sensores</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>{{result}}
                            </h2>

                        </div>
                        <div class="body table-responsive" ng-if="listaSensoresParte.length>0">

                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>NOMBRE</th>
                                        <th>REFERENCIA</th>
                                        <th>ESTADO</th>
                                        <th>VER</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="l in listaSensoresParte">
                                        <th scope="row">{{l.idSensorP}}</th>
                                        <td>{{l.NombreSensor}}</td>
                                        <td>{{l.Referencia}}</td>
                                        <td>
                                            <span ng-if="l.EstadoSP == 'Activo'" class="badge bg-green">{{l.EstadoSP}}</span>
                                            <span ng-if="l.EstadoSP == 'Inactivo'" class="badge bg-red">{{l.EstadoSP}}</span>
                                        </td>
                                        <td>
                                            <a href="#" ng-click="getDatosSensor(l.idSensorP)" class="btn btn-xs btn-primary">Ver datos</a>
                                        </td>
                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-6">
                    <div class="card">
                        <div class="header">
                            <h2>{{resultData}}
                            </h2>

                        </div>
                        <div class="body table-responsive" ng-if="listaDatosSensor.length>0">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>VALOR</th>
                                        <th>TIPO</th>
                                        <th>FECHA Y HORA</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="l in listaDatosSensor">
                                        <th scope="row">{{l.idDato}}</th>
                                        <td>{{l.ValorDato}}</td>
                                        <td>{{l.Unidad}}</td>
                                        <td>{{l.Fecha}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="header">
                            <h2>GRÁFICA DE DATOS</h2>
                            <div class="pull-right">
                                <div class="switch panel-switch-btn">
                                    <span class="m-r-10 font-12">TIEMPO REAL</span>
                                    <label>OFF<input type="checkbox" id="realtime" checked><span class="lever switch-col-cyan"></span>ON</label>
                                </div>
                            </div>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div id="real_time_chart" class="dashboard-flot-chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                {{resultData}}
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>VALOR</th>
                                        <th>TIPO</th>
                                        <th>FECHA Y HORA</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>#</th>
                                        <th>VALOR</th>
                                        <th>TIPO</th>
                                        <th>FECHA Y HORA</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr ng-repeat="l in listaDatosSensor">
                                        <th scope="row">{{l.idDato}}</th>
                                        <td>{{l.ValorDato}}</td>
                                        <td>{{l.Unidad}}</td>
                                        <td>{{l.Fecha}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>--%>
            <!-- #END# Exportable Table -->
        </div>
    </section>
</asp:Content>
