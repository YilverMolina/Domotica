<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Home/MasterPage.Master" AutoEventWireup="true" CodeBehind="Partes.aspx.cs" Inherits="CasaDomotica.Views.Vivienda.Partes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>PARTES DE LA VIVIENDA</h2>
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
                            
                        </div>
                        <div class="body table-responsive" ng-init="getPartesVivienda()">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>NOMBRE</th>
                                        <th>ESTADO</th>
                                        <th></th>
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
                                            <a href="#" class="btn btn-xs btn-primary">Modificar</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        
                        <div class="body text-center">
                            <center>
                                <img src="../../public/images/casa/plano.jpg" alt="" class="img-responsive" />
                            </center>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
</asp:Content>
