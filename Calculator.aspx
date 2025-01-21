<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Mini Calculator Project</title>
    
     <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <!-- Favicon link  -->
    <link rel="icon" type="image/x-icon" href="img/calculator_image.png" />
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
    
    <!-- bootstrap icon link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- link for connect style.css-->
    <link href="style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
    
      <div class="container-fluid">
         <div class="row calcurow">
            <div class="col-lg-3 col-md-3 col-sm-12">
              <div class="row mt-3 mb-4">
                  <div class="col-sm-12">
                        <marquee class="marque">This is Mini Calculator project Design by Gangaram Adiwasi !</marquee>
                  </div>
              </div>
                <div class="card">
                <!-- calculator header start code -->
                     <div class="card-header">
                        <h4 class="heading">Mini calculator</h4>
                     </div>
                <!-- calculator header start end -->
                
                
                <!-- calculator body start code -->
                     <div class="card-body">
                      <div class="calcu">
                          <table>
                                <tr>
                                  <td style="width: 100px" colspan="4">
                                      <asp:TextBox ID="txtDisplay" runat="server" class="placeholder"  placeholder="0" ></asp:TextBox>
                                  </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnclear" runat="server" Text="C" style="width:100%;height:43px;" OnClick="btnclear_Click"  /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnpercent" runat="server" Text="%" style="width:100%;height:43px;" OnClick="btnpercent_Click"  /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnremoveonebyone" runat="server" Text="<" style="width:100%;height:43px;" OnClick="btnremoveonebyone_Click"  /></td>
                                    <td style="width: 100px">
                                      <asp:Button ID="btndivide" runat="server" Text="/" style="width:100%;height:43px;" OnClick="btnOperator_Click"  /></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnseven" runat="server" Text="7" style="width:100%;height:43px;" OnClick="btnNumber_Click" /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btneight" runat="server" Text="8" style="width:100%;height:43px;" OnClick="btnNumber_Click"   /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnnine" runat="server" Text="9" style="width:100%;height:43px;" OnClick="btnNumber_Click"  /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnmultiplication" runat="server" Text="*" style="width:100%;height:43px;" OnClick="btnOperator_Click"  /></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnfour" runat="server" Text="4" style="width:100%;height:43px;" OnClick="btnNumber_Click"   /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnfive" runat="server" Text="5" style="width:100%;height:43px;" OnClick="btnNumber_Click"  /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnsix" runat="server" Text="6" style="width:100%;height:43px;" OnClick="btnNumber_Click" /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnsubtraction" runat="server" Text="-" style="width:100%;height:43px;" OnClick="btnOperator_Click"  /></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnone" runat="server" Text="1" style="width:100%;height:43px;" OnClick="btnNumber_Click"  /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btntwo" runat="server" Text="2" style="width:100%;height:43px;" OnClick="btnNumber_Click"  /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnthree" runat="server" Text="3" style="width:100%;height:43px;" OnClick="btnNumber_Click"  /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnaddition" runat="server" Text="+" style="width:100%;height:43px;" OnClick="btnOperator_Click"  /></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnzero" runat="server" Text="0" style="width:100%;height:43px;"  OnClick="btnNumber_Click" /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btndoublezero" runat="server" Text="00" style="width:100%;height:43px;"  OnClick="btnNumber_Click" /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btndote" runat="server" Text="." style="width:100%;height:43px;" OnClick="btnNumber_Click" /></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnequaltwo" runat="server" Text="=" style="width:100%;height:43px;" OnClick="btnequaltwo_Click"  /></td>
                                </tr>
                   
                            </table>
               
                          </div>
               </div>
                  <!-- calculator body start end -->
                  
                      <!-- calculator footer start code -->
                     <div class="card-footer">
                          <p class="paragraph">Design by : - Gangaram Adiwasi</p>
                          <ul class="Icons">
                            <li class="Icons-item"><a href="https://wa.me/+91%20708958542" target="_blank" class="Icons-link"><i class="bi bi-whatsapp"></i></a></li>
                            <li class="Icons-item"><a href="https://www.linkedin.com/in/gangaram-adiwasi-2b8141223/" target="_blank" class="Icons-link"><i class="bi bi-linkedin"></i></a></li>
                            <li class="Icons-item"><a href="#"  class="Icons-link"><i class="bi bi-instagram"></i></a></li>
                            <li class="Icons-item"><a href="mailto:gangaramadiwasi689@gmail.com" target="_blank" class="Icons-link"><i class="bi bi-envelope"></i></a></li>
                          </ul>
                      </div>
                      <!-- calculator footer start end -->
               </div>
            </div>
         </div>
           
      </div>
    </form>
</body>
</html>
