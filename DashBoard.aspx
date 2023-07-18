<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="container-fluid py-4">

    <div class="row">
         <!--Product card -->
      <div class="col col-sm-5">
        <div class="card  mb-2">
          <div class="card-header p-3 pt-2">
            <div class="icon icon-lg icon-shape bg-gradient-dark shadow-dark shadow text-center border-radius-xl mt-n4 position-absolute">
                 <i class="material-icons opacity-10">weekend</i>
            </div>
            <div class="text-end pt-1">
                <p class="text-sm mb-0 text-capitalize">Product</p>
                <asp:Label class="mb-0" ID="labProduct" runat="server" Text="Label"></asp:Label>
            </div>
          </div>

            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
               <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+55% </span>than last week</p>
            </div>
           </div>
          </div>
        <!-- Customer card-->
      <div class="col col-sm-5">
        <div class="card  mb-2">
  <div class="card-header p-3 pt-2">
    <div class="icon icon-lg icon-shape bg-gradient-primary shadow-primary shadow text-center border-radius-xl mt-n4 position-absolute">
      <i class="material-icons opacity-10">leaderboard</i>
    </div>
    <div class="text-end pt-1">
      <p class="text-sm mb-0 text-capitalize">Customer</p>
        <asp:Label ID="labCustomer" class="mb-0" runat="server"></asp:Label>
      
    </div>
  </div>

  <hr class="dark horizontal my-0">
  <div class="card-footer p-3">
    <p class="mb-0"><span class="text-success text-sm font-weight-bolder">+3% </span>than last month</p>
  </div>
</div>
       </div>
        <!-- categories card-->
      <div class="col col-sm-5">
     
        <div class="card mb-2">
  <div class="card-header p-3 pt-2 bg-transparent">
    <div class="icon icon-lg icon-shape bg-gradient-success shadow-success text-center border-radius-xl mt-n4 position-absolute">
      <i class="material-icons opacity-10">store</i>
    </div>
    <div class="text-end pt-1">
      <p class="text-sm mb-0 text-capitalize ">Categories</p>
            <asp:Label  class="mb-0 " ID="labcategoris" runat="server" Text="Label"></asp:Label>
      
    </div>
  </div>

  <hr class="horizontal my-0 dark">
  <div class="card-footer p-3">
    <p class="mb-0 "><span class="text-success text-sm font-weight-bolder">+1% </span>than yesterday</p>
  </div>
</div>
            </div>
        <!-- orders card -->
      <div class="col-lg-5 col-sm-5">
        <div class="card ">
  <div class="card-header p-3 pt-2 bg-transparent">
    <div class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n4 position-absolute">
      <i class="material-icons opacity-10">person_add</i>
    </div>
    <div class="text-end pt-1">
      <p class="text-sm mb-0 text-capitalize ">Orders</p>
<asp:Label class="mb-0 " ID="labOrder" runat="server" Text="Label"></asp:Label>
      
    </div>
  </div>

  <hr class="horizontal my-0 dark">
  <div class="card-footer p-3">
    <p class="mb-0 ">Just updated</p>
  </div>
</div>

      </div>
    </div>
</div>
        <!-- end of counter panels-->

    <!--Chart row-->
          <div class="row mt-4">
  <div class="col-lg-7 mb-lg-0 mb-4">
    <div class="card z-index-2 mt-4">
  <div class="card-body mt-n5 px-3">
    <div class="bg-gradient-dark shadow-dark border-radius-lg py-3 pe-1 mb-3">
      <div class="chart">
         
          <asp:Chart ID="Chart1" CssClass="chart-canvas" runat="server" height="340" Width="340" BackColor="Transparent" >
                    <Series>
                        <asp:Series Name="Categories" ChartType="Pie" ChartArea="Categories" IsValueShownAsLabel="True"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="Categories"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
      
                
      </div>
    </div>
    <h6 class="ms-2 mt-4 mb-0"> number of categories </h6>
    ----
    
  </div>
</div>

  </div>
  <div class="col-lg-5">
    <div class="card z-index-2">
  <div class="card-header pb-0">

    <h6>Sales overview</h6>
   
  </div>
        <div class="chart">
        <asp:Chart ID="chaOrders" runat="server" CssClass="chart-canvas" height="340">
            <Series>
                <asp:Series Name="Year"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    </div>


  </div>
</div>


<!--End chart-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
