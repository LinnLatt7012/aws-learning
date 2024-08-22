Import-Module AWS.Tools.S3

$region = "us-east-1"

$bucketName= READ-HOST -Prompt 'Eneter bucket name'

Write-Host $region
Write-Host $bucketName

function BucketExists {
    $bucket = Get-S3Bucket -BucketName $bucketName -ErrorAction SilentlyContinue 
    return $null -ne $bucket
}

if (-not (BucketExists)){
    Write-Host "Bucket does not exist..."
    New-S3Bucket -BucketName $bucketName -Region $region
} else {
    Write-Host "Bucket already exists..."
}
  
# Create a new file

$filePath = '/tmp/myfile.txt'
$fileContent = 'Hello World!'
Set-Content -Path $filePath -Value $fileContent

Write-S3Object -BucketName $bucketName -File $filePath -Key (Get-ChildItem $filePath).Name