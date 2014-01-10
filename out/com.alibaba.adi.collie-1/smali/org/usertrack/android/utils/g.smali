.class public Lorg/usertrack/android/utils/g;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field public static rd:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/usertrack/android/utils/g;->rd:[C

    .line 10
    return-void

    .line 9
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public static aw(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "plainText"

    .prologue
    .line 45
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, b:[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    :goto_0
    invoke-static {v0}, Lorg/usertrack/android/utils/g;->v([B)Ljava/lang/String;

    move-result-object v2

    .line 54
    .end local v0           #b:[B
    :goto_1
    return-object v2

    .line 49
    .restart local v0       #b:[B
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v0           #b:[B
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v2, "0000000000000000"

    goto :goto_1
.end method

.method public static t([B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 15
    :cond_0
    sget-object v2, Lorg/usertrack/android/utils/g;->rd:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    sget-object v2, Lorg/usertrack/android/utils/g;->rd:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static u([B)[B
    .locals 4
    .parameter "source"

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 25
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 26
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 27
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 33
    .end local v1           #md:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 33
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static v([B)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 37
    invoke-static {p0}, Lorg/usertrack/android/utils/g;->u([B)[B

    move-result-object v0

    .line 38
    .local v0, result:[B
    if-eqz v0, :cond_0

    .line 39
    invoke-static {v0}, Lorg/usertrack/android/utils/g;->t([B)Ljava/lang/String;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0000000000000000"

    goto :goto_0
.end method
