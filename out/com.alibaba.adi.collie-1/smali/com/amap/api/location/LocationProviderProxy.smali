.class public Lcom/amap/api/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"


# static fields
.field public static final AMapNetwork:Ljava/lang/String; = "lbs"

.field public static final AVAILABLE:I = 0x2

.field public static final OUT_OF_SERVICE:I = 0x0

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/location/LocationManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amap/api/location/LocationProviderProxy;->a:Landroid/location/LocationManager;

    .line 20
    iput-object p2, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private a()Landroid/location/LocationProvider;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amap/api/location/LocationProviderProxy;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/location/LocationManager;Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    new-instance v0, Lcom/amap/api/location/LocationProviderProxy;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/LocationProviderProxy;-><init>(Landroid/location/LocationManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAccuracy()I
    .locals 2

    .prologue
    .line 34
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x2

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "lbs"

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPowerRequirement()I
    .locals 2

    .prologue
    .line 50
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x2

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getPowerRequirement()I

    move-result v0

    goto :goto_0
.end method

.method public hasMonetaryCost()Z
    .locals 2

    .prologue
    .line 58
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->hasMonetaryCost()Z

    move-result v0

    goto :goto_0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 66
    const-string v1, "lbs"

    iget-object v2, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v1

    if-ne v1, v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_3
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/LocationProvider;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v0

    goto :goto_0
.end method

.method public requiresCell()Z
    .locals 2

    .prologue
    .line 79
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->requiresCell()Z

    move-result v0

    goto :goto_0
.end method

.method public requiresNetwork()Z
    .locals 2

    .prologue
    .line 87
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->requiresNetwork()Z

    move-result v0

    goto :goto_0
.end method

.method public requiresSatellite()Z
    .locals 2

    .prologue
    .line 95
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->requiresNetwork()Z

    move-result v0

    goto :goto_0
.end method

.method public supportsAltitude()Z
    .locals 2

    .prologue
    .line 103
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->supportsAltitude()Z

    move-result v0

    goto :goto_0
.end method

.method public supportsBearing()Z
    .locals 2

    .prologue
    .line 111
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->supportsBearing()Z

    move-result v0

    goto :goto_0
.end method

.method public supportsSpeed()Z
    .locals 2

    .prologue
    .line 119
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->supportsSpeed()Z

    move-result v0

    goto :goto_0
.end method
