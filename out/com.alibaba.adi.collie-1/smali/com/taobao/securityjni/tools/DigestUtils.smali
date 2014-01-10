.class public Lcom/taobao/securityjni/tools/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final MD5:Ljava/lang/String; = "MD5"

.field private static final SHA1:Ljava/lang/String; = "SHA-1"

.field private static final SHA256:Ljava/lang/String; = "SHA-256"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
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
    .line 44
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 45
    .local v3, messageDigest:Ljava/security/MessageDigest;
    const/16 v0, 0x400

    .line 46
    .local v0, STREAM_BUFFER_LENGTH:I
    new-array v1, v0, [B

    .line 47
    .local v1, buffer:[B
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 49
    .local v4, read:I
    :goto_0
    const/4 v5, -0x1

    if-gt v4, v5, :cond_0

    .line 54
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/securityjni/tools/HexUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 50
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 51
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 56
    .end local v0           #STREAM_BUFFER_LENGTH:I
    .end local v1           #buffer:[B
    .end local v3           #messageDigest:Ljava/security/MessageDigest;
    .end local v4           #read:I
    :catch_0
    move-exception v2

    .line 57
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
    .line 22
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/taobao/securityjni/tools/DigestUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

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
    .line 29
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/taobao/securityjni/tools/DigestUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/taobao/securityjni/tools/DigestUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
