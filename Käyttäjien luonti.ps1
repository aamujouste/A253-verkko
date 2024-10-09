#LISÄTÄÄN UUSIA AD-KÄYTTÄJIÄ CSV-TIEDOSTOSTA

# Tiedoston polku, josta käyttäjätiedot löytyvät
$Tiedosto = "C:\Users\Administrator\Documents\nimiä.csv"

# Muodostetaan lista lisättävistä käyttäjistä lukemalla tiedosto
$Käyttäjälista = Import-Csv -Delimiter ";" -Path $Tiedosto -Encoding Default

# Kryptataan ensimmäinen salasana
$Salasana = ConvertTo-SecureString -String "Q2werty7" -AsPlainText -Force

# Putkitetaan lista käyttäjienluontikomennolle
$Käyttäjälista | New-ADUser -AccountPassword $Salasana -ChangePasswordAtLogon 1 -Enabled 1