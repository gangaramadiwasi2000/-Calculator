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



    private static string operand1 = string.Empty;  // First number
    private static string operand2 = string.Empty;  // Second number
    private static string operation = string.Empty; // Operation


    // Handles the number button click event ( 1 to 9 or 0 or dote also )
    protected void btnNumber_Click(object sender, EventArgs e)
        {
            // Get the clicked number button text
            string number = ((System.Web.UI.WebControls.Button)sender).Text;

            // Append the clicked number to the display
            txtDisplay.Text += number;

            // If no operation yet, append to operand1, otherwise to operand2
            if (string.IsNullOrEmpty(operation))
            {
                operand1 += number;
            }
            else
            {
                operand2 += number;
            }
        }



    // Handles the operator button click event ( + - * / )
    protected void btnOperator_Click(object sender, EventArgs e)
        {
            // Get the clicked operator button text
            string operatorSymbol = ((System.Web.UI.WebControls.Button)sender).Text;

            // Store the operator and clear the display for the second number input
            operation = operatorSymbol;
            txtDisplay.Text = string.Empty;
        }



    // // Equal to buttton start here 
    protected void btnequaltwo_Click(object sender, EventArgs e)
    {
            double num1, num2, result = 0;

            // Try parsing operand1 and operand2 to numbers
            bool isValidNum1 = double.TryParse(operand1, out num1);
            bool isValidNum2 = double.TryParse(operand2, out num2);

            if (isValidNum1 && isValidNum2)
            {
                // Perform the operation based on the operator
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

                // Display the result and reset operands and operator
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
    



    // Clear buttton start here 
    protected void btnclear_Click(object sender, EventArgs e)
    {
        // Clear everything: operands, operator, and display
        operand1 = operand2 = operation = string.Empty;
        txtDisplay.Text = string.Empty;
    }



    // remove buttton start here 
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



    // Percantage buttton start here 
    protected void btnpercent_Click(object sender, EventArgs e)
    {
        
            double num1;
            bool valid_No = double.TryParse(operand1, out num1);


           if (string.IsNullOrEmpty(operation))
            {
                // No operator is selected, calculate the percentage of operand1
                if (valid_No)
                {
                    num1 = num1 / 100;
                    txtDisplay.Text = num1.ToString();
                    operand1 = num1.ToString();  // Update operand1 with the percentage value
                }
            }
    }
}
 


