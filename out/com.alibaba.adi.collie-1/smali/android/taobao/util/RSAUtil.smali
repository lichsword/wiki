.class public Landroid/taobao/util/RSAUtil;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field public static final KEY_SIZE:I = 0x200

.field public static pubKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/security/PrivateKey;[B)[B
    .locals 7
    .parameter "pk"
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    const-string v5, "RSA"

    const-string v6, "BC"

    invoke-static {v5, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 128
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v2, v5, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 129
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 130
    .local v0, blockSize:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x40

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 131
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 133
    .local v4, j:I
    :goto_0
    array-length v5, p1

    mul-int v6, v4, v0

    sub-int/2addr v5, v6

    if-lez v5, :cond_0

    .line 134
    mul-int v5, v4, v0

    invoke-virtual {v2, p1, v5, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 138
    .end local v0           #blockSize:I
    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v4           #j:I
    :catch_0
    move-exception v3

    .line 139
    .local v3, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inputStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v2, Landroid/taobao/util/RSAUtil;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/util/RSAUtil;->encrypt(Ljava/security/PublicKey;[B)[B

    move-result-object v0

    .line 73
    .local v0, out:[B
    invoke-static {v0}, Landroid/taobao/util/HexUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, resultStr:Ljava/lang/String;
    return-object v1
.end method

.method public static encrypt(Ljava/security/PublicKey;[B)[B
    .locals 19
    .parameter "pk"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    new-instance v18, Landroid/taobao/util/FixedSecureRandom;

    invoke-direct/range {v18 .. v18}, Landroid/taobao/util/FixedSecureRandom;-><init>()V

    .line 90
    .local v18, rand:Ljava/security/SecureRandom;
    const-string v3, "RSA"

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 91
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 92
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    .line 93
    .local v5, blockSize:I
    move-object/from16 v0, p1

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v17

    .line 94
    .local v17, outputSize:I
    move-object/from16 v0, p1

    array-length v3, v0

    rem-int v16, v3, v5

    .line 95
    .local v16, leavedSize:I
    if-eqz v16, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    div-int/2addr v3, v5

    add-int/lit8 v13, v3, 0x1

    .line 97
    .local v13, blocksSize:I
    :goto_0
    mul-int v3, v17, v13

    new-array v6, v3, [B

    .line 98
    .local v6, raw:[B
    const/4 v15, 0x0

    .line 99
    .local v15, i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    mul-int v4, v15, v5

    sub-int/2addr v3, v4

    if-lez v3, :cond_2

    .line 100
    move-object/from16 v0, p1

    array-length v3, v0

    mul-int v4, v15, v5

    sub-int/2addr v3, v4

    if-le v3, v5, :cond_1

    .line 101
    mul-int v4, v15, v5

    mul-int v7, v15, v17

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 106
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 95
    .end local v6           #raw:[B
    .end local v13           #blocksSize:I
    .end local v15           #i:I
    :cond_0
    move-object/from16 v0, p1

    array-length v3, v0

    div-int v13, v3, v5

    goto :goto_0

    .line 104
    .restart local v6       #raw:[B
    .restart local v13       #blocksSize:I
    .restart local v15       #i:I
    :cond_1
    mul-int v9, v15, v5

    move-object/from16 v0, p1

    array-length v3, v0

    mul-int v4, v15, v5

    sub-int v10, v3, v4

    mul-int v12, v15, v17

    move-object v7, v2

    move-object/from16 v8, p1

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 109
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #blockSize:I
    .end local v6           #raw:[B
    .end local v13           #blocksSize:I
    .end local v15           #i:I
    .end local v16           #leavedSize:I
    .end local v17           #outputSize:I
    .end local v18           #rand:Ljava/security/SecureRandom;
    :catch_0
    move-exception v14

    .line 110
    .local v14, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v2       #cipher:Ljavax/crypto/Cipher;
    .restart local v5       #blockSize:I
    .restart local v6       #raw:[B
    .restart local v13       #blocksSize:I
    .restart local v15       #i:I
    .restart local v16       #leavedSize:I
    .restart local v17       #outputSize:I
    .restart local v18       #rand:Ljava/security/SecureRandom;
    :cond_2
    return-object v6
.end method

.method public static generateRSAPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 8
    .parameter "spubKey"

    .prologue
    .line 47
    if-eqz p0, :cond_0

    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 48
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 49
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 50
    .local v4, mypubkey_modulus:Ljava/math/BigInteger;
    const/4 v2, 0x0

    .line 51
    .local v2, mypubkey_exponent:Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 54
    .local v6, readstr:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 55
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v4           #mypubkey_modulus:Ljava/math/BigInteger;
    .local v5, mypubkey_modulus:Ljava/math/BigInteger;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 58
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .end local v2           #mypubkey_exponent:Ljava/math/BigInteger;
    .local v3, mypubkey_exponent:Ljava/math/BigInteger;
    :try_start_2
    invoke-static {v5, v3}, Landroid/taobao/util/RSAUtil;->generateRSAPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v7

    sput-object v7, Landroid/taobao/util/RSAUtil;->pubKey:Ljava/security/interfaces/RSAPublicKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #mypubkey_exponent:Ljava/math/BigInteger;
    .end local v5           #mypubkey_modulus:Ljava/math/BigInteger;
    .end local v6           #readstr:Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v7, Landroid/taobao/util/RSAUtil;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    return-object v7

    .line 62
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #mypubkey_exponent:Ljava/math/BigInteger;
    .restart local v4       #mypubkey_modulus:Ljava/math/BigInteger;
    .restart local v6       #readstr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #mypubkey_modulus:Ljava/math/BigInteger;
    .restart local v5       #mypubkey_modulus:Ljava/math/BigInteger;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #mypubkey_modulus:Ljava/math/BigInteger;
    .restart local v4       #mypubkey_modulus:Ljava/math/BigInteger;
    goto :goto_1

    .end local v2           #mypubkey_exponent:Ljava/math/BigInteger;
    .end local v4           #mypubkey_modulus:Ljava/math/BigInteger;
    .restart local v3       #mypubkey_exponent:Ljava/math/BigInteger;
    .restart local v5       #mypubkey_modulus:Ljava/math/BigInteger;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #mypubkey_exponent:Ljava/math/BigInteger;
    .restart local v2       #mypubkey_exponent:Ljava/math/BigInteger;
    move-object v4, v5

    .end local v5           #mypubkey_modulus:Ljava/math/BigInteger;
    .restart local v4       #mypubkey_modulus:Ljava/math/BigInteger;
    goto :goto_1
.end method

.method public static generateRSAPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;
    .locals 6
    .parameter "modulus"
    .parameter "publicExponent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    const-string v4, "RSA"

    const-string v5, "BC"

    invoke-static {v4, v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 36
    .local v1, fact:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, p0, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 37
    .local v3, pubKeySpec:Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v2, pubKey:Ljava/security/interfaces/RSAPublicKey;
    return-object v2

    .line 38
    .end local v1           #fact:Ljava/security/KeyFactory;
    .end local v2           #pubKey:Ljava/security/interfaces/RSAPublicKey;
    .end local v3           #pubKeySpec:Ljava/security/spec/RSAPublicKeySpec;
    :catch_0
    move-exception v0

    .line 39
    .local v0, ex:Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method
