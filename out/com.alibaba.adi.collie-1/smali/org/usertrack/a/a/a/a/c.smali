.class public Lorg/usertrack/a/a/a/a/c;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private static a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
    .locals 3
    .parameter "charsetName"
    .parameter "e"

    .prologue
    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .parameter "charsetName"

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 191
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {p1, v0}, Lorg/usertrack/a/a/a/a/c;->a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method public static at(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"

    .prologue
    .line 130
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/usertrack/a/a/a/a/c;->m(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter "string"
    .parameter "charsetName"

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {p1, v0}, Lorg/usertrack/a/a/a/a/c;->a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method public static o([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 284
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/usertrack/a/a/a/a/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
