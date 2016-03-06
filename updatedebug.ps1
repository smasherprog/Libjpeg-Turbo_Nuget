param(
    [string]$path ='C:\Users\scott\Documents\GitHub\Libjpeg-Turbo_Nuget/libjpeg-turbo-src-32-VS2013/turbojpeg-static.vcxproj'
)

$xml = [xml](Get-Content $path)
foreach($node in  $xml.Project.ItemDefinitionGroup | where {$_.Condition -like '*debug*'})
{
    if ($node.ClCompile.ProgramDataBaseFileName -ne $null) {
        $node.ClCompile.ProgramDataBaseFileName = '$(OutDir)$(ProjectName).pdb'
    } else {
        $newnode = $node.ClCompile.AppendChild($xml.CreateElement('ProgramDataBaseFileName',$xml.DocumentElement.NamespaceURI))
        $newnode.AppendChild($xml.CreateTextNode('$(OutDir)$(ProjectName).pdb'))
    }
}
$xml.Save($path)