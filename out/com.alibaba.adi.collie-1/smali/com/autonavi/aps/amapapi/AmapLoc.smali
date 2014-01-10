.class public Lcom/autonavi/aps/amapapi/AmapLoc;
.super Ljava/lang/Object;
.source "AmapLoc.java"


# instance fields
.field private accuracy:F

.field private adcode:Ljava/lang/String;

.field private bearing:F

.field private city:Ljava/lang/String;

.field private citycode:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private lat:D

.field private lon:D

.field private poiname:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private retype:Ljava/lang/String;

.field private road:Ljava/lang/String;

.field private speed:F

.field private street:Ljava/lang/String;

.field private time:J

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->provider:Ljava/lang/String;

    .line 13
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lon:D

    .line 14
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lat:D

    .line 15
    iput v1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->accuracy:F

    .line 16
    iput v1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->speed:F

    .line 17
    iput v1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->bearing:F

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->time:J

    .line 19
    const-string v0, "new"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->type:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->retype:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->citycode:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->desc:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->adcode:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->country:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->province:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->city:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->road:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->street:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->poiname:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->provider:Ljava/lang/String;

    .line 13
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lon:D

    .line 14
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lat:D

    .line 15
    iput v1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->accuracy:F

    .line 16
    iput v1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->speed:F

    .line 17
    iput v1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->bearing:F

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->time:J

    .line 19
    const-string v0, "new"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->type:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->retype:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->citycode:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->desc:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->adcode:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->country:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->province:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->city:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->road:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->street:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->poiname:Ljava/lang/String;

    .line 40
    if-eqz p1, :cond_0

    .line 41
    :try_start_0
    const-string v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->provider:Ljava/lang/String;

    .line 42
    const-string v0, "lon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lon:D

    .line 43
    const-string v0, "lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lat:D

    .line 44
    const-string v0, "accuracy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->accuracy:F

    .line 45
    const-string v0, "speed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->speed:F

    .line 46
    const-string v0, "bearing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->bearing:F

    .line 47
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->type:Ljava/lang/String;

    .line 48
    const-string v0, "retype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->retype:Ljava/lang/String;

    .line 49
    const-string v0, "citycode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->citycode:Ljava/lang/String;

    .line 50
    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->desc:Ljava/lang/String;

    .line 51
    const-string v0, "adcode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->adcode:Ljava/lang/String;

    .line 52
    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->country:Ljava/lang/String;

    .line 53
    const-string v0, "province"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->province:Ljava/lang/String;

    .line 54
    const-string v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->city:Ljava/lang/String;

    .line 55
    const-string v0, "road"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->road:Ljava/lang/String;

    .line 56
    const-string v0, "poiname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->poiname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->accuracy:F

    return v0
.end method

.method public getAdcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->adcode:Ljava/lang/String;

    return-object v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->bearing:F

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCitycode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->citycode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lon:D

    return-wide v0
.end method

.method public getPoiname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->poiname:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->retype:Ljava/lang/String;

    return-object v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->road:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->speed:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->time:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAccuracy(F)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->accuracy:F

    .line 93
    return-void
.end method

.method public setAdcode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->adcode:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setBearing(F)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->bearing:F

    .line 109
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->city:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setCitycode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->citycode:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->country:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->desc:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setLat(D)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lat:D

    .line 85
    return-void
.end method

.method public setLon(D)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lon:D

    .line 77
    return-void
.end method

.method public setPoiname(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->poiname:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->provider:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->province:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setRetype(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->retype:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->road:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->speed:F

    .line 101
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->street:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->time:J

    .line 117
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->type:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public toStr()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 214
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 217
    const-string v2, "provider"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v2, "lon"

    iget-wide v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lon:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 219
    const-string v2, "lat"

    iget-wide v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->lat:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 220
    const-string v2, "accuracy"

    iget v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->accuracy:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 221
    const-string v2, "speed"

    iget v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->speed:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 222
    const-string v2, "bearing"

    iget v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->bearing:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 223
    const-string v2, "time"

    iget-wide v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->time:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    const-string v2, "type"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v2, "retype"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->retype:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v2, "citycode"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->citycode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v2, "desc"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v2, "adcode"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->adcode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v2, "country"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->country:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v2, "province"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->province:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v2, "city"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->city:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v2, "road"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->road:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v2, "street"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->street:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v2, "poiname"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/AmapLoc;->poiname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    .line 235
    :catch_0
    move-exception v1

    .line 237
    invoke-static {v1}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
