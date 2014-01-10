.class public Lcom/ut/device/b;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private G:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private hZ:Ljava/lang/String;

.field private ia:Ljava/lang/String;

.field private ib:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private ie:Ljava/lang/String;

.field private ig:Ljava/lang/String;

.field private ih:Ljava/lang/String;

.field private ik:Ljava/lang/String;

.field private oX:Ljava/lang/String;

.field private oY:Ljava/lang/String;

.field private oZ:Ljava/lang/String;

.field private pa:Ljava/lang/String;

.field private pb:I

.field private pc:I

.field private pd:J

.field private pe:J

.field private s:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->hZ:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->ia:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->ib:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->id:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->oX:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->v:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->G:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->ih:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->timezone:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->w:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->ie:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->oY:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->s:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->ig:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->oZ:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->pa:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->J:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/ut/device/b;->pb:I

    .line 23
    iput v1, p0, Lcom/ut/device/b;->pc:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/ut/device/b;->ik:Ljava/lang/String;

    .line 25
    iput-wide v2, p0, Lcom/ut/device/b;->pd:J

    .line 26
    iput-wide v2, p0, Lcom/ut/device/b;->pe:J

    .line 3
    return-void
.end method


# virtual methods
.method public X(I)V
    .locals 0
    .parameter "screenWidth"

    .prologue
    .line 49
    iput p1, p0, Lcom/ut/device/b;->pb:I

    .line 50
    return-void
.end method

.method public Y(I)V
    .locals 0
    .parameter "screenHeight"

    .prologue
    .line 57
    iput p1, p0, Lcom/ut/device/b;->pc:I

    .line 58
    return-void
.end method

.method public ah(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ut/device/b;->oX:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public ai(Ljava/lang/String;)V
    .locals 0
    .parameter "timezone"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ut/device/b;->timezone:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public aj(Ljava/lang/String;)V
    .locals 0
    .parameter "accessSubType"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/ut/device/b;->oY:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public ak(Ljava/lang/String;)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/ut/device/b;->oZ:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public al(Ljava/lang/String;)V
    .locals 0
    .parameter "osName"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/ut/device/b;->pa:Ljava/lang/String;

    .line 194
    return-void
.end method

.method dV()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/ut/device/b;->pe:J

    return-wide v0
.end method

.method dW()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/ut/device/b;->pd:J

    return-wide v0
.end method

.method public dX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ut/device/b;->oY:Ljava/lang/String;

    return-object v0
.end method

.method public dY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ut/device/b;->pa:Ljava/lang/String;

    return-object v0
.end method

.method f(J)V
    .locals 0
    .parameter "mCheckSum"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/ut/device/b;->pe:J

    .line 34
    return-void
.end method

.method g(J)V
    .locals 0
    .parameter "mCreateTimestamp"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/ut/device/b;->pd:J

    .line 42
    return-void
.end method

.method public getAccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ut/device/b;->ie:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ut/device/b;->ig:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ut/device/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ut/device/b;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ut/device/b;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getCpu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ut/device/b;->ib:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ut/device/b;->oX:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ut/device/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ut/device/b;->hZ:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ut/device/b;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ut/device/b;->ih:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ut/device/b;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ut/device/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ut/device/b;->ik:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 0
    .parameter "access"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ut/device/b;->ie:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "appVersion"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/ut/device/b;->ig:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .parameter "brand"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/ut/device/b;->s:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0
    .parameter "carrier"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ut/device/b;->id:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ut/device/b;->G:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setCpu(Ljava/lang/String;)V
    .locals 0
    .parameter "cpu"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ut/device/b;->ib:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceModel"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ut/device/b;->v:Ljava/lang/String;

    .line 114
    return-void
.end method

.method setImei(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ut/device/b;->hZ:Ljava/lang/String;

    .line 70
    return-void
.end method

.method setImsi(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ut/device/b;->ia:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/ut/device/b;->ih:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "osVersion"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/ut/device/b;->J:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ut/device/b;->w:Ljava/lang/String;

    .line 146
    return-void
.end method

.method setUtdid(Ljava/lang/String;)V
    .locals 0
    .parameter "utdid"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/ut/device/b;->ik:Ljava/lang/String;

    .line 214
    return-void
.end method
