$PrjToArchive = 'XXXXXXXXX'
$Path = 'c:\TEMP\Export\PSTraining'
$pwDocs = Get-PWDocumentsBySearch -FolderPath $ProjectToArchive -GetAttributes
$pwDocs.Count
$Export = @{
    OutputFolder = $Path;
    ProjectWiseFolder = $PrjToArchive;
    OutputFileName = "$PrjToArchive.sqlite";
}
Export-PWDocumentsToArchive @Export -Verbose
explorer $Path
