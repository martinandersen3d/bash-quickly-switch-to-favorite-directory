# C:\Users\<username>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

function go {
    $dirs = @(
        "C:/Dropbox",
        "C:/Windows",
        "D:/Dev/Expressjs",
        "D:/Dev/Node_and_Javascript",
        "D:/Dev/laragon",
        "D:/Dev/Vue",
        "D:/Drive",
        "D:/Download",
        "D:/Screenshots"
    )

    # $args is an automatic variable that contains any method arguments
    if ($args) {
        # Method parameter is set

        # $args[0] is the first argument (i.e. the index of the directory to navigate to)
        $param = $args[0]

        # Get array item by index
        $arrayItem = $dirs[$param]

        # Use the Set-Location cmdlet (or its alias cd) to navigate to the directory
        Set-Location $arrayItem
    }
    else {
        # No method parameters send, will print a list of directories
        for ($i = 0; $i -lt $dirs.Length; $i++) {
            Write-Host "$($i + 1) $($dirs[$i])"
        }
    }
}
