.class public Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiWeatherReqStrGenerator;
.super Ljava/lang/Object;
.source "AdiWeatherReqStrGenerator.java"

# interfaces
.implements Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/IAdiGetReqStrGenerator;


# static fields
.field private static final TEMPLATE:Ljava/lang/String; = "weather:la=%f&lo=%f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 15
    invoke-static {}, Lcom/alibaba/adi/collie/util/LocationUtil;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 16
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 17
    const-string v1, "weather:la=%f&lo=%f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 19
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "weather:la=%f&lo=%f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
