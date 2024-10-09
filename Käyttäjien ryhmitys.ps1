# LISÄÄ KÄYTTÄJÄT RYHMÄÄN CSV-TIEDOSTOON
# ======================================
$Tiedosto = "C:\Users\Administrator\Documents\Johtoryhmanjasenet.csv"

#Ryhmän nimi
$Ryhmä = "Johto"

# Lista ryhmän jäsenistä
$Lista = Import-Csv -Path $Tiedosto -Delimiter ";" -Encoding Default

# Laskuri joka näyttää lisättyjen jäsenten määrän
$Laskuri = 0

# Putkitetaan lista ryhmän jäseneksi käyttämällä foreach-silmukkaa
foreach($Rivi in $Lista)
{
    Add-ADGroupMember -Identity $Ryhmä -Members $Rivi.SamAccountName
    $Laskuri = $Laskuri + 1
}

$Ilmoitus = "Ryhmään " + $Ryhmä + " lisättiin " + $Laskuri + " uutta jäsentä"

Write-Warning $Ilmoitus