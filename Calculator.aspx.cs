using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Calculator : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    private static string operand1 = string.Empty;  /
    private static string operand2 = string.Empty;  
    private static string operation = string.Empty; 


    protected void btnNumber_Click(object sender, EventArgs e)
        {
            string number = ((System.Web.UI.WebControls.Button)sender).Text;

            txtDisplay.Text += number;

            if (string.IsNullOrEmpty(operation))
            {
                operand1 += number;
            }
            else
            {
                operand2 += number;
            }
        }




    protected void btnOperator_Click(object sender, EventArgs e)
        {

            string operatorSymbol = ((System.Web.UI.WebControls.Button)sender).Text;

            operation = operatorSymbol;
            txtDisplay.Text = string.Empty;
        }




    protected void btnequaltwo_Click(object sender, EventArgs e)
    {
            double num1, num2, result = 0;

    
            bool isValidNum1 = double.TryParse(operand1, out num1);
            bool isValidNum2 = double.TryParse(operand2, out num2);

            if (isValidNum1 && isValidNum2)
            {

                switch (operation)
                {
                    case "+":
                        result = num1 + num2;
                        break;
                    case "-":
                        result = num1 - num2;
                        break;
                    case "*":
                        result = num1 * num2;
                        break;
                    case "/":
                        if (num2 != 0)
                        {
                            result = num1 / num2;
                        }
                        else
                        {
                            txtDisplay.Text = "Cannot divide by zero!";
                            return;
                        }
                        break;
                }

        
                txtDisplay.Text = result.ToString();
                operand1 = result.ToString();
                operand2 = string.Empty;
                operation = string.Empty;
            }
            else
            {
                txtDisplay.Text = "Invalid input!";
            }
        }
    




    protected void btnclear_Click(object sender, EventArgs e)
    {

        operand1 = operand2 = operation = string.Empty;
        txtDisplay.Text = string.Empty;
    }




    protected void btnremoveonebyone_Click(object sender, EventArgs e)
    {
        
        if (txtDisplay.Text != string.Empty)
        {
            int txtlength = txtDisplay.Text.Length;
            if (txtlength != 1)
            {
                txtDisplay.Text = txtDisplay.Text.Remove(txtlength - 1);
            }
            else
            {
                txtDisplay.Text = 0.ToString();
            }
        }
    }




    protected void btnpercent_Click(object sender, EventArgs e)
    {
        
            double num1;
            bool valid_No = double.TryParse(operand1, out num1);


           if (string.IsNullOrEmpty(operation))
            {
1
                if (valid_No)
                {
                    num1 = num1 / 100;
                    txtDisplay.Text = num1.ToString();
                    operand1 = num1.ToString(); 
                }
            }
    }
}
 


