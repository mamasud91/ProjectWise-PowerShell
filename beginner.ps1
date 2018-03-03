# Install the latest and greatest
Uninstall-Module -Name pwps_dab
Install-Module -Name pwps_dab

# Restart PS and log onto your datasource
Open-PWConnection -GUI -Admin

<#
    Update the attribute length. 
    Note that:
    Switch parameter EnvironmentName can have space, so quotes are used, double quotes are preferable as they can be used with variables as well as a value.
    A Column name cannot have space, so use of quote is not necessary.
    -NewWidth is an integer, so do not use quote. 
    -verbose switch just gives you more information about the command processing; it is optional but good to understand how each cmdlet is working.
#>


Update-PWEnvironmentColumnWidth -EnvironmentName "Environment Name" -ColumnName Column_Name -NewWidth 26 -Verbose

