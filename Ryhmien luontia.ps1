# Luetaan AD:n käyttäjätilit ja tallennetaan CSV-tiedostoksi
# ===========================================================

# Määritellään tiedoston nimi ja polku
$Tiedosto = "C:\Users\Administrator\Documents\Kaikkikäyttäjät2.csv"

# Luetaan AD:n tiedot ja tallennetaan ne tiedostoon, välimerkiksi ; ja koodaus Unicode Exceliä varten
Get-ADUser -Filter * -Properties Description | Export-Csv -Path $Tiedosto -Delimiter ";" -Encoding Unicode