.class public Lorg/android/agoo/util/EncryptUtil;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# static fields
.field private static final ALGORITHM_AES:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final DEFAULT_KEY_SIZE:I = 0x80

.field public static final MD5_VERSION:I = 0x2

.field public static final NOT_MD5_VERSION:I = 0x1

.field public static final UTDID_VERSION:I

.field private static final algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private static cipherThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private static iv:[B

.field private static final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/android/agoo/util/EncryptUtil;->iv:[B

    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/android/agoo/util/EncryptUtil;->cipherThreadLocal:Ljava/lang/ThreadLocal;

    .line 40
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lorg/android/agoo/util/EncryptUtil;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lorg/android/agoo/util/EncryptUtil;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 41
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/android/agoo/util/EncryptUtil;->secureRandom:Ljava/security/SecureRandom;

    return-void

    .line 36
    nop

    :array_0
    .array-data 0x1
        0x52t
        0x16t
        0x32t
        0x2ct
        0xf0t
        0x7ct
        0xd8t
        0x8et
        0xa9t
        0xd8t
        0x25t
        0x17t
        0xc8t
        0x17t
        0xdft
        0x4bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aesDecrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "seed"
    .parameter "encrypted"
    .parameter "version"

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, p2}, Lorg/android/agoo/util/EncryptUtil;->getAesKey([BI)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    .line 66
    .local v3, rawKey:Ljavax/crypto/spec/SecretKeySpec;
    const/16 v5, 0x8

    invoke-static {p1, v5}, Lorg/android/agoo/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 67
    .local v2, enc:[B
    invoke-static {v2, v3}, Lorg/android/agoo/util/EncryptUtil;->aesDecrypt([BLjavax/crypto/spec/SecretKeySpec;)[B

    move-result-object v4

    .line 68
    .local v4, result:[B
    new-instance v0, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v2           #enc:[B
    .end local v3           #rawKey:Ljavax/crypto/spec/SecretKeySpec;
    .end local v4           #result:[B
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, e:Ljava/lang/Throwable;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static aesDecrypt([BLjavax/crypto/spec/SecretKeySpec;)[B
    .locals 4
    .parameter "plaintext"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Lorg/android/agoo/util/EncryptUtil;->initCipher(Ljavax/crypto/spec/SecretKeySpec;I)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AES decrypt error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    .end local v0           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v0

    .line 81
    .local v0, e:Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AES decrypt error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static aesEncrypt([BLjavax/crypto/spec/SecretKeySpec;)[B
    .locals 4
    .parameter "plaintext"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Lorg/android/agoo/util/EncryptUtil;->initCipher(Ljavax/crypto/spec/SecretKeySpec;I)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AES encrypt error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 49
    .end local v0           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, e:Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AES encrypt error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static aesEncrypt([B[BI)[B
    .locals 4
    .parameter "plaintext"
    .parameter "key"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    invoke-static {p1, p2}, Lorg/android/agoo/util/EncryptUtil;->getAesKey([BI)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/android/agoo/util/EncryptUtil;->aesEncrypt([BLjavax/crypto/spec/SecretKeySpec;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AES encrypt error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static buildNewBytes([B)[B
    .locals 3
    .parameter "key"

    .prologue
    .line 154
    if-nez p0, :cond_1

    .line 155
    const/4 v1, 0x0

    .line 162
    :cond_0
    return-object v1

    .line 157
    :cond_1
    array-length v2, p0

    new-array v1, v2, [B

    .line 158
    .local v1, newKey:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 159
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getAesKey([BI)Ljavax/crypto/spec/SecretKeySpec;
    .locals 7
    .parameter "key"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 119
    if-nez p0, :cond_0

    .line 120
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "secret key can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_0
    new-array v2, v6, [B

    .line 123
    .local v2, newKey:[B
    packed-switch p1, :pswitch_data_0

    .line 140
    :cond_1
    :goto_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v4

    .line 125
    :pswitch_0
    const/16 v1, 0x80

    .line 126
    .local v1, keySize:I
    array-length v4, p0

    mul-int/lit8 v0, v4, 0x8

    .line 127
    .local v0, actualKeySize:I
    if-eq v1, v0, :cond_1

    .line 128
    invoke-static {p0, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 132
    .end local v0           #actualKeySize:I
    .end local v1           #keySize:I
    :pswitch_1
    invoke-static {p0}, Lorg/android/agoo/util/EncryptUtil;->buildNewBytes([B)[B

    move-result-object v3

    .line 133
    .local v3, newKey1:[B
    invoke-static {v3, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 136
    .end local v3           #newKey1:[B
    :pswitch_2
    invoke-static {p0}, Lorg/android/agoo/util/EncryptUtil;->md5([B)[B

    move-result-object v2

    .line 137
    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getCipher()Ljavax/crypto/Cipher;
    .locals 5

    .prologue
    .line 100
    sget-object v2, Lorg/android/agoo/util/EncryptUtil;->cipherThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 101
    .local v0, cipher:Ljavax/crypto/Cipher;
    if-nez v0, :cond_0

    .line 103
    :try_start_0
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 109
    sget-object v2, Lorg/android/agoo/util/EncryptUtil;->cipherThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-object v0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Chipher error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 106
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 107
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Chipher error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static initCipher(Ljavax/crypto/spec/SecretKeySpec;I)Ljavax/crypto/Cipher;
    .locals 5
    .parameter "key"
    .parameter "opmode"

    .prologue
    .line 86
    invoke-static {}, Lorg/android/agoo/util/EncryptUtil;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 88
    .local v0, cipher:Ljavax/crypto/Cipher;
    :try_start_0
    sget-object v2, Lorg/android/agoo/util/EncryptUtil;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    sget-object v3, Lorg/android/agoo/util/EncryptUtil;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    return-object v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init Chipher error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 91
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v1

    .line 92
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init Chipher error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 93
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_2
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init Chipher error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static md5([B)[B
    .locals 4
    .parameter "key"

    .prologue
    .line 145
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 146
    .local v1, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 147
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 148
    .end local v1           #messageDigest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "md5 value Throwable"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
