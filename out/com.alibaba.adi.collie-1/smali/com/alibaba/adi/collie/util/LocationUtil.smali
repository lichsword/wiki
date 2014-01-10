.class public Lcom/alibaba/adi/collie/util/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/util/LocationUtil$AdiLocationListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LocationUtil"

.field public static final sAdiLocationListener:Lcom/alibaba/adi/collie/util/LocationUtil$AdiLocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/alibaba/adi/collie/util/LocationUtil$AdiLocationListener;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/util/LocationUtil$AdiLocationListener;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/util/LocationUtil;->sAdiLocationListener:Lcom/alibaba/adi/collie/util/LocationUtil$AdiLocationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyLocationManager(Lcom/amap/api/location/LocationManagerProxy;)V
    .locals 2
    .parameter "aMapLocManager"

    .prologue
    .line 51
    const-string v0, "LocationUtil"

    const-string v1, "destroyLocationManager()"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz p0, :cond_0

    .line 53
    sget-object v0, Lcom/alibaba/adi/collie/util/LocationUtil;->sAdiLocationListener:Lcom/alibaba/adi/collie/util/LocationUtil$AdiLocationListener;

    invoke-virtual {p0, v0}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/amap/api/location/LocationManagerProxy;->destory()V

    .line 56
    :cond_0
    return-void
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 23
    new-instance v5, Landroid/location/Location;

    const-string v7, "adi"

    invoke-direct {v5, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 24
    .local v5, location:Landroid/location/Location;
    const-string v7, "gdmap_lat_key"

    invoke-static {v7, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, la:Ljava/lang/String;
    const-string v7, "gdmap_lng_key"

    invoke-static {v7, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, lo:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 28
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 29
    .local v2, laDouble:Ljava/lang/Double;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 30
    .local v4, loDouble:Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    .line 31
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v2           #laDouble:Ljava/lang/Double;
    .end local v4           #loDouble:Ljava/lang/Double;
    .end local v5           #location:Landroid/location/Location;
    :goto_0
    return-object v5

    .line 33
    .restart local v5       #location:Landroid/location/Location;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-object v5, v6

    .line 34
    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    move-object v5, v6

    .line 37
    goto :goto_0
.end method

.method public static initLocationManager(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 6
    .parameter "context"

    .prologue
    .line 42
    const-string v1, "LocationUtil"

    const-string v2, "initLocationManager()"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    .line 44
    .local v0, aMapLocManager:Lcom/amap/api/location/LocationManagerProxy;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->setGpsEnable(Z)V

    .line 45
    const-string v1, "lbs"

    .line 46
    const-wide/32 v2, 0x36ee80

    const v4, 0x461c4000

    sget-object v5, Lcom/alibaba/adi/collie/util/LocationUtil;->sAdiLocationListener:Lcom/alibaba/adi/collie/util/LocationUtil$AdiLocationListener;

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    .line 47
    return-object v0
.end method
