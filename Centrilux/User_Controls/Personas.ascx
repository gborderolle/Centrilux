<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Personas.ascx.cs" Inherits="Centrilux.User_Controls.Personas" %>

<h2>Lista de Personas</h2>

<asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
<asp:GridView ID="gridPersonas" runat="server" ClientIDMode="Static" HorizontalAlign="Center" AutoGenerateColumns="False" ShowFooter="True"
    CssClass="table table-hover table-striped"
    DataKeyNames="Persona_ID"
    OnRowCommand="gridPersonas_RowCommand"
    OnRowDataBound="gridPersonas_RowDataBound">

    <EmptyDataRowStyle ForeColor="Red" CssClass="table table-bordered" />
    <EmptyDataTemplate>
        ¡No hay personas con los parámetros seleccionados!  
    </EmptyDataTemplate>

    <%--Paginador...--%>
    <PagerTemplate>
        <div class="row" style="margin-top: 20px;">
            <div class="col-lg-1" style="text-align: right;">
                <h5>
                    <asp:Label ID="MessageLabel" Text="Ir a la pág." runat="server" /></h5>
            </div>
            <div class="col-lg-1" style="text-align: left;">
                <asp:DropDownList ID="PageDropDownList" Width="50px" AutoPostBack="true" OnSelectedIndexChanged="PageDropDownList_SelectedIndexChanged" runat="server" CssClass="form-control" /></h3>
            </div>
            <div class="col-lg-10" style="text-align: right;">
                <h3>
                    <asp:Label ID="CurrentPageLabel" runat="server" CssClass="label label-warning" /></h3>
            </div>
        </div>
    </PagerTemplate>

    <Columns>
        <asp:BoundField DataField="Persona_ID" HeaderText="ID" HtmlEncode="false" ReadOnly="true" ItemStyle-CssClass="hiddencol hiddencol_real" HeaderStyle-CssClass="hiddencol hiddencol_real" />
        <asp:BoundField DataField="Nombre_completo" HeaderText="Nombre" HtmlEncode="false" ReadOnly="true" />
        <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" HtmlEncode="false" ReadOnly="true" />
        <asp:BoundField DataField="Departamento" HeaderText="Departamento" HtmlEncode="false" ReadOnly="true" />
        <asp:BoundField DataField="Email" HeaderText="Email" HtmlEncode="false" ReadOnly="true" />
        <asp:BoundField DataField="Contacto1" HeaderText="Contacto1" HtmlEncode="false" ReadOnly="true" />
        <asp:BoundField DataField="Contacto2" HeaderText="Contacto2" HtmlEncode="false" ReadOnly="true" />
    </Columns>

</asp:GridView>
<asp:HiddenField ClientIDMode="Static" ID="hdnPersonasCount" runat="server" />

