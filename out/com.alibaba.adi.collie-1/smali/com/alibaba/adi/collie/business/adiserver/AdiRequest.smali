.class public Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;
.super Ljava/lang/Object;
.source "AdiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/business/adiserver/AdiRequest$SignException;
    }
.end annotation


# instance fields
.field protected mParams:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPasswd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "passwd"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mParams:Ljava/util/TreeMap;

    .line 20
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mPasswd:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 24
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "http parameter key is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    if-nez p2, :cond_2

    .line 28
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mParams:Ljava/util/TreeMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public generateRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "baseUrl"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 36
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "baseUrl is NULL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 39
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    .local v0, base:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 41
    .local v3, urlBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 43
    :cond_2
    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    :cond_3
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mParams:Ljava/util/TreeMap;

    const-string v6, "sign"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->generateSign()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 49
    .local v4, urlParams:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-lt v1, v5, :cond_4

    .line 53
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 50
    :cond_4
    aget-object v5, v4, v1

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 51
    aget-object v6, v4, v1

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 50
    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected generateSign()Ljava/lang/String;
    .locals 10

    .prologue
    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v6, sb:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 62
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mPasswd:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mPasswd:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 63
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mPasswd:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_0
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 68
    .local v5, md:Ljava/security/MessageDigest;
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 70
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 72
    .local v1, hash:[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v2, hexString:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v1

    if-lt v3, v8, :cond_2

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    return-object v8

    .line 58
    .end local v1           #hash:[B
    .end local v2           #hexString:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 59
    .local v4, key:Ljava/lang/String;
    iget-object v9, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->mParams:Ljava/util/TreeMap;

    invoke-virtual {v9, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 60
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    .restart local v1       #hash:[B
    .restart local v2       #hexString:Ljava/lang/StringBuffer;
    .restart local v3       #i:I
    .restart local v5       #md:Ljava/security/MessageDigest;
    :cond_2
    :try_start_1
    aget-byte v8, v1, v3

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x10

    if-ge v8, v9, :cond_3

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v9, v1, v3

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    :cond_3
    aget-byte v8, v1, v3

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 82
    .end local v1           #hash:[B
    .end local v2           #hexString:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 84
    new-instance v8, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest$SignException;

    const-string v9, "NoSuchAlgorithmException"

    invoke-direct {v8, p0, v9, v0}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest$SignException;-><init>(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 85
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 87
    new-instance v8, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest$SignException;

    const-string v9, "UnsupportedEncodingException"

    invoke-direct {v8, p0, v9, v0}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest$SignException;-><init>(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 88
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    new-instance v8, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest$SignException;

    const-string v9, ""

    invoke-direct {v8, p0, v9, v0}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest$SignException;-><init>(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method
