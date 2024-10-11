# Path to the folder containing text files
$folderPath = "C:\Users\sai\Desktop\Hacker\Folder"

# Get all .txt files in the folder and its subfolders
$textFiles = Get-ChildItem -Path $folderPath -Filter *.txt -Recurse

foreach ($file in $textFiles) {
    # Read the contents of the file
    $plainText = Get-Content -Path $file.FullName -Raw

    # Encrypt the content
    $secureString = ConvertTo-SecureString $plainText -AsPlainText -Force
    $encryptedData = ConvertFrom-SecureString $secureString

    # Save the encrypted content back to the file
    Set-Content -Path $file.FullName -Value $encryptedData

    Write-Host "Encrypted: $($file.FullName)"
}

Write-Host "Encryption complete for all text files."

# Pause the screen
Read-Host -Prompt "Press Enter to continue..."
