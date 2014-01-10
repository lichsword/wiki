.class public Lorg/android/agoo/util/DigestUtil;
.super Ljava/lang/Object;
.source "DigestUtil.java"


# static fields
.field private static final MD5:Ljava/lang/String; = "MD5"

.field private static final SHA1:Ljava/lang/String; = "SHA-1"

.field private static final SHA256:Ljava/lang/String; = "SHA-256"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 90
    .local v2, messageDigest:Ljava/security/MessageDigest;
    const/16 v0, 0x400

    .line 91
    .local v0, STREAM_BUFFER_LENGTH:I
    new-array v1, v0, [B

    .line 92
    .local v1, buffer:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 93
    .local v3, read:I
    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 95
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lorg/android/agoo/util/HexUtil;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 100
    .end local v0           #STREAM_BUFFER_LENGTH:I
    .end local v1           #buffer:[B
    .end local v2           #messageDigest:Ljava/security/MessageDigest;
    .end local v3           #read:I
    :goto_1
    return-object v4

    .line 98
    :catch_0
    move-exception v4

    .line 100
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static digest([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"
    .parameter "algorithm"

    .prologue
    .line 117
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 118
    .local v0, messageDigest:Ljava/security/MessageDigest;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 119
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lorg/android/agoo/util/HexUtil;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    .end local v0           #messageDigest:Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v1

    .line 122
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 67
    :try_start_0
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lorg/android/agoo/util/DigestUtil;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static md5ToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 32
    .local v0, data:[B
    const-string v2, "MD5"

    invoke-static {v0, v2}, Lorg/android/agoo/util/DigestUtil;->digest([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 33
    .end local v0           #data:[B
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static sha1ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 78
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lorg/android/agoo/util/DigestUtil;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sha1ToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    :goto_0
    return-object v1

    .line 43
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 44
    .local v0, data:[B
    const-string v2, "SHA-1"

    invoke-static {v0, v2}, Lorg/android/agoo/util/DigestUtil;->digest([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 45
    .end local v0           #data:[B
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static sha256ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 105
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lorg/android/agoo/util/DigestUtil;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sha256ToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    :goto_0
    return-object v1

    .line 55
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 56
    .local v0, data:[B
    const-string v2, "SHA-256"

    invoke-static {v0, v2}, Lorg/android/agoo/util/DigestUtil;->digest([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 57
    .end local v0           #data:[B
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static sha256ToHex([B)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 112
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lorg/android/agoo/util/DigestUtil;->digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
