.class public Lcom/amap/api/location/core/CoordinateConvert;
.super Ljava/lang/Object;
.source "CoordinateConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromGpsToAMap(DD)Lcom/amap/api/location/core/GeoPoint;
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 8
    invoke-static {p2, p3, p0, p1}, Lcom/a/a/a;->a(DD)[D

    move-result-object v0

    .line 9
    new-instance v1, Lcom/amap/api/location/core/GeoPoint;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-direct {v1, v2, v0}, Lcom/amap/api/location/core/GeoPoint;-><init>(II)V

    return-object v1
.end method

.method public static fromSeveralGpsToAMap(Ljava/lang/String;)[D
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 13
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 14
    array-length v3, v2

    .line 15
    new-array v4, v3, [D

    move v0, v1

    .line 16
    :goto_0
    div-int/lit8 v5, v3, 0x2

    if-ge v0, v5, :cond_0

    .line 17
    mul-int/lit8 v5, v0, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/a/a/a;->a(DD)[D

    move-result-object v5

    .line 19
    mul-int/lit8 v6, v0, 0x2

    aget-wide v7, v5, v1

    aput-wide v7, v4, v6

    .line 20
    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    aget-wide v7, v5, v7

    aput-wide v7, v4, v6

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-object v4
.end method

.method public static fromSeveralGpsToAMap([D)[D
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 26
    array-length v2, p0

    .line 27
    new-array v3, v2, [D

    move v0, v1

    .line 28
    :goto_0
    div-int/lit8 v4, v2, 0x2

    if-ge v0, v4, :cond_0

    .line 29
    mul-int/lit8 v4, v0, 0x2

    aget-wide v4, p0, v4

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, p0, v6

    invoke-static {v4, v5, v6, v7}, Lcom/a/a/a;->a(DD)[D

    move-result-object v4

    .line 30
    mul-int/lit8 v5, v0, 0x2

    aget-wide v6, v4, v1

    aput-wide v6, v3, v5

    .line 31
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    aput-wide v6, v3, v5

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-object v3
.end method
