.class public Lorg/usertrack/android/utils/a;
.super Ljava/lang/Object;
.source "AESUtils.java"


# direct methods
.method private static a(Ljava/lang/StringBuffer;B)V
    .locals 4
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 102
    const-string v0, "0123456789ABCDEF"

    .line 103
    .local v0, HEX:Ljava/lang/String;
    const-string v1, "0123456789ABCDEF"

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0123456789ABCDEF"

    and-int/lit8 v3, p1, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    return-void
.end method

.method public static av(Ljava/lang/String;)[B
    .locals 5
    .parameter "hexString"

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 85
    .local v1, len:I
    new-array v2, v1, [B

    .line 86
    .local v2, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 88
    return-object v2

    .line 87
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b([B[B)[B
    .locals 6
    .parameter "raw"
    .parameter "clear"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 58
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 59
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 60
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 59
    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 61
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 62
    .local v1, encrypted:[B
    return-object v1
.end method

.method private static c([B[B)[B
    .locals 6
    .parameter "raw"
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 68
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 69
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 70
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 69
    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 71
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 72
    .local v1, decrypted:[B
    return-object v1
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "seed"
    .parameter "clearText"

    .prologue
    .line 16
    const/4 v3, 0x0

    .line 18
    .local v3, result:[B
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/a;->p([B)[B

    move-result-object v2

    .line 19
    .local v2, rawkey:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v4}, Lorg/usertrack/android/utils/a;->b([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 23
    .end local v2           #rawkey:[B
    :goto_0
    if-eqz v3, :cond_0

    .line 24
    invoke-static {v3}, Lorg/usertrack/android/utils/a;->q([B)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_1
    return-object v0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 27
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "seed"
    .parameter "encrypted"

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/android/utils/a;->p([B)[B

    move-result-object v3

    .line 34
    .local v3, rawKey:[B
    invoke-static {p1}, Lorg/usertrack/android/utils/a;->av(Ljava/lang/String;)[B

    move-result-object v2

    .line 35
    .local v2, enc:[B
    invoke-static {v3, v2}, Lorg/usertrack/android/utils/a;->c([B[B)[B

    move-result-object v4

    .line 36
    .local v4, result:[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v2           #enc:[B
    .end local v3           #rawKey:[B
    .end local v4           #result:[B
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static p([B)[B
    .locals 6
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 47
    .local v0, kgen:Ljavax/crypto/KeyGenerator;
    const-string v4, "SHA1PRNG"

    const-string v5, "Crypto"

    invoke-static {v4, v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 48
    .local v3, sr:Ljava/security/SecureRandom;
    invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 49
    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 50
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 51
    .local v2, sKey:Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 53
    .local v1, raw:[B
    return-object v1
.end method

.method public static q([B)Ljava/lang/String;
    .locals 3
    .parameter "buf"

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    const-string v2, ""

    .line 98
    :goto_0
    return-object v2

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 95
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 96
    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lorg/usertrack/android/utils/a;->a(Ljava/lang/StringBuffer;B)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
