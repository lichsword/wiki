.class final Lcom/google/zxing/client/result/GeoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "GeoResultParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 32
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;
    .locals 15
    .parameter "result"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v13

    .line 36
    .local v13, rawText:Ljava/lang/String;
    if-eqz v13, :cond_0

    const-string v0, "geo:"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GEO:"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 40
    :cond_1
    const/16 v0, 0x3f

    const/4 v1, 0x4

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 41
    .local v12, queryStart:I
    if-gez v12, :cond_2

    const/4 v0, 0x4

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 42
    .local v8, geoURIWithoutQuery:Ljava/lang/String;
    :goto_1
    const/16 v0, 0x2c

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 43
    .local v9, latitudeEnd:I
    if-gez v9, :cond_3

    .line 44
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    .end local v8           #geoURIWithoutQuery:Ljava/lang/String;
    .end local v9           #latitudeEnd:I
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {v13, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 46
    .restart local v8       #geoURIWithoutQuery:Ljava/lang/String;
    .restart local v9       #latitudeEnd:I
    :cond_3
    const/16 v0, 0x2c

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 49
    .local v10, longitudeEnd:I
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 50
    .local v2, latitude:D
    if-gez v10, :cond_4

    .line 51
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 52
    .local v4, longitude:D
    const-wide/16 v6, 0x0

    .line 60
    .local v6, altitude:D
    :goto_2
    new-instance v0, Lcom/google/zxing/client/result/GeoParsedResult;

    const-string v1, "GEO:"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v14, "geo:"

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/client/result/GeoParsedResult;-><init>(Ljava/lang/String;DDD)V

    goto :goto_0

    .line 54
    .end local v4           #longitude:D
    .end local v6           #altitude:D
    :cond_4
    add-int/lit8 v0, v9, 0x1

    :try_start_1
    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 55
    .restart local v4       #longitude:D
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .restart local v6       #altitude:D
    goto :goto_2

    .line 57
    .end local v2           #latitude:D
    .end local v4           #longitude:D
    .end local v6           #altitude:D
    :catch_0
    move-exception v11

    .line 58
    .local v11, nfe:Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    goto :goto_0

    .end local v11           #nfe:Ljava/lang/NumberFormatException;
    .restart local v2       #latitude:D
    .restart local v4       #longitude:D
    .restart local v6       #altitude:D
    :cond_5
    move-object v1, v13

    .line 60
    goto :goto_3
.end method
