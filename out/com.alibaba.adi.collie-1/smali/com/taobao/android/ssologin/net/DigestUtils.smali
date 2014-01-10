.class public Lcom/taobao/android/ssologin/net/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final MD5:Ljava/lang/String; = "MD5"

.field private static final SHA1:Ljava/lang/String; = "SHA-1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "input"
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 87
    .local v3, messageDigest:Ljava/security/MessageDigest;
    const/16 v0, 0x400

    .line 88
    .local v0, STREAM_BUFFER_LENGTH:I
    new-array v1, v0, [B

    .line 89
    .local v1, buffer:[B
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 91
    .local v4, read:I
    :goto_0
    const/4 v5, -0x1

    if-gt v4, v5, :cond_0

    .line 96
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/android/ssologin/net/HexUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 92
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 93
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 98
    .end local v0           #STREAM_BUFFER_LENGTH:I
    .end local v1           #buffer:[B
    .end local v3           #messageDigest:Ljava/security/MessageDigest;
    .end local v4           #read:I
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Security exception"

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static md5ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/taobao/android/ssologin/net/DigestUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/taobao/android/ssologin/net/DigestUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
