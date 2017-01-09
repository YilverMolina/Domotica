<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/MasterPage.Master" AutoEventWireup="true" CodeBehind="Sensores.aspx.cs" Inherits="CasaDomotica.Views.Sensores.Sensores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>SENSORES INSTALADOS EN LA VIVIENDA
                </h2>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>INFORMACIÓN GENERAL
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
                        <div class="body table-responsive" ng-init="getSensoresVivienda()">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>NOMBRE</th>
                                        <th>DESCRIPCIÓN</th>
                                        <th>REFERENCIA</th>
                                        <th>ESTADO</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="l in listaSensoresVivienda">
                                        <th scope="row">{{l.idSensor}}</th>
                                        <td>{{l.NombreSensor}}</td>
                                        <td>{{l.DescripcionSensor}}</td>
                                        <td>{{l.Referencia}}</td>
                                        <td>
                                            <span ng-if="l.EstadoSP == 'Activo'" class="badge bg-green">{{l.EstadoSP}}</span>
                                            <span ng-if="l.EstadoSP == 'Inactivo'" class="badge bg-red">{{l.EstadoSP}}</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </section>
</asp:Content>