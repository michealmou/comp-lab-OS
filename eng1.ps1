function add {
    param([int]$param1, [int]$param2)
    return $param1 + $param2
}
function sub {
    param([int]$param1, [int]$param2)
    return $param1 - $param2
}
function mult {
    param([int]$param1, [int]$param2)
    return $param1 * $param2
}
function div {
    param([int]$param1, [int]$param2)
    if ($param2 -eq 0) {
        Write-Host "Error: Division by zero is not allowed."
        return
    }
    return $param1 / $param2
}

Write-Host "WELCOME TO POWERSHELL CALCULATOR"
$op = Read-Host "ENTER AN OPERATION THAT YOU WANT TO USE (+, -, *, /)"
$num1 = Read-Host "ENTER YOUR FIRST NUMBER"
$num2 = Read-Host "ENTER YOUR SECOND NUMBER"

# Convert inputs to int
[int]$num1Int = $num1
[int]$num2Int = $num2

# Initialize result variable
$result = $null

if ($op -eq "+") {
    $result = add $num1Int $num2Int
} elseif ($op -eq "-") {
    $result = sub $num1Int $num2Int
} elseif ($op -eq "*") {
    $result = mult $num1Int $num2Int
} elseif ($op -eq "/") {
    $result = div $num1Int $num2Int
} else {
    Write-Host "Invalid operation entered."
}

if ($result -ne $null) {
    Write-Host "Result: $result"
}
