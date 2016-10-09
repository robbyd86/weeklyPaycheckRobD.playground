//: Playground - noun: a place where people can play




//closure
var calcWeeklyPay: (Double) -> (Double) =
{
    hours -> Double in // takes amount of hours as a double
    return hours * 19.682 //calculate the total before taxes and return
}

//calcWeeklyPay(37.5) test


//function to calculate pay after taxes
func calcTaxes(pay: Double) -> (Double) //takes one parameter (in this case will be our closure)
{
    //calcs to determine take home finalPay
    var taxes:Double = 0.15
    taxes = taxes * pay
    let finalPay = pay - taxes
    return finalPay
    
}

//pass the closure as the parameter
print("Your Paycheck is $\(calcTaxes(calcWeeklyPay(38.5)))")

