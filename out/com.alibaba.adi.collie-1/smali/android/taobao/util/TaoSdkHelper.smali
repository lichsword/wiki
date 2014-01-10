.class public Landroid/taobao/util/TaoSdkHelper;
.super Ljava/lang/Object;
.source "TaoSdkHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, hs:Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 65
    .local v2, stmp:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 66
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 68
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getStringOnNum(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter "str"
    .parameter "b"
    .parameter "n"

    .prologue
    .line 14
    new-array v3, p2, [I

    .line 15
    .local v3, len:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 17
    .local v2, l:I
    if-lez v2, :cond_0

    .line 18
    aput v2, v3, v0

    .line 19
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    const/4 v4, -0x1

    .line 31
    .end local v2           #l:I
    :goto_1
    return v4

    .line 24
    :cond_1
    const/4 v4, 0x0

    .line 25
    .local v4, sunl:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, p2, :cond_2

    .line 26
    aget v5, v3, v1

    add-int/2addr v4, v5

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, p2, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 31
    goto :goto_1
.end method

.method public static sign(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter "secret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, params:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 43
    .local v5, result:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v6, v5

    .line 58
    .end local v5           #result:Ljava/lang/String;
    .local v6, result:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 45
    .end local v6           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 46
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 47
    .local v4, orgin:Ljava/lang/StringBuffer;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 51
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 54
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-static {v7}, Landroid/taobao/util/TaoSdkHelper;->byte2hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v6, v5

    .line 58
    .end local v5           #result:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    goto :goto_0

    .line 55
    .end local v2           #md:Ljava/security/MessageDigest;
    .end local v6           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 56
    .local v0, ex:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "sign error !"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
