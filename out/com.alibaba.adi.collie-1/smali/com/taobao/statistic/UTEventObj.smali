.class public Lcom/taobao/statistic/UTEventObj;
.super Ljava/lang/Object;
.source "UTEventObj.java"


# instance fields
.field private A:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private hX:Ljava/lang/String;

.field private hY:Ljava/lang/String;

.field private hZ:Ljava/lang/String;

.field private ia:Ljava/lang/String;

.field private ib:Ljava/lang/String;

.field private ic:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private ie:Ljava/lang/String;

.field private if:Ljava/lang/String;

.field private ig:Ljava/lang/String;

.field private ih:Ljava/lang/String;

.field private ii:Ljava/lang/String;

.field private ij:Ljava/lang/String;

.field private ik:Ljava/lang/String;

.field private il:Ljava/lang/String;

.field private im:Ljava/lang/String;

.field private in:Ljava/lang/String;

.field private io:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private iq:Ljava/lang/String;

.field private ir:Ljava/lang/String;

.field private is:Ljava/lang/String;

.field private it:Ljava/lang/String;

.field private iu:Ljava/lang/String;

.field private iv:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initWithString(Ljava/lang/String;)Lcom/taobao/statistic/UTEventObj;
    .locals 9
    .parameter "line"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x25

    .line 50
    const-string v2, "\\|\\|"

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, contents:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v4, :cond_0

    .line 52
    new-instance v1, Lcom/taobao/statistic/UTEventObj;

    invoke-direct {v1}, Lcom/taobao/statistic/UTEventObj;-><init>()V

    .line 53
    .local v1, record:Lcom/taobao/statistic/UTEventObj;
    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setVersion(Ljava/lang/String;)V

    .line 54
    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setImei(Ljava/lang/String;)V

    .line 55
    aget-object v2, v0, v7

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setImsi(Ljava/lang/String;)V

    .line 56
    aget-object v2, v0, v8

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setBrand(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setCpu(Ljava/lang/String;)V

    .line 58
    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setDeviceID(Ljava/lang/String;)V

    .line 59
    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setDeviceModel(Ljava/lang/String;)V

    .line 60
    const/4 v2, 0x7

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setResolution(Ljava/lang/String;)V

    .line 61
    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setCarrier(Ljava/lang/String;)V

    .line 62
    const/16 v2, 0x9

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setAccess(Ljava/lang/String;)V

    .line 63
    const/16 v2, 0xa

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setAccessSubtype(Ljava/lang/String;)V

    .line 64
    const/16 v2, 0xb

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setChannel(Ljava/lang/String;)V

    .line 65
    const/16 v2, 0xc

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setAppKey(Ljava/lang/String;)V

    .line 66
    const/16 v2, 0xd

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setAppVersion(Ljava/lang/String;)V

    .line 67
    const/16 v2, 0xe

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setLongLongUsernick(Ljava/lang/String;)V

    .line 68
    const/16 v2, 0xf

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setUserNick(Ljava/lang/String;)V

    .line 69
    const/16 v2, 0x10

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setPhoneNumber(Ljava/lang/String;)V

    .line 70
    const/16 v2, 0x11

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setCountry(Ljava/lang/String;)V

    .line 71
    const/16 v2, 0x12

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setLanguage(Ljava/lang/String;)V

    .line 72
    const/16 v2, 0x13

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setOs(Ljava/lang/String;)V

    .line 73
    const/16 v2, 0x14

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setOsVersion(Ljava/lang/String;)V

    .line 74
    const/16 v2, 0x15

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setSdkType(Ljava/lang/String;)V

    .line 75
    const/16 v2, 0x16

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setSdkVersion(Ljava/lang/String;)V

    .line 76
    const/16 v2, 0x17

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setSessionId(Ljava/lang/String;)V

    .line 77
    const/16 v2, 0x18

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setUtdid(Ljava/lang/String;)V

    .line 78
    const/16 v2, 0x19

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setReserve3(Ljava/lang/String;)V

    .line 79
    const/16 v2, 0x1a

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setReserve4(Ljava/lang/String;)V

    .line 80
    const/16 v2, 0x1b

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setReserve5(Ljava/lang/String;)V

    .line 81
    const/16 v2, 0x1c

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setReserves(Ljava/lang/String;)V

    .line 82
    const/16 v2, 0x1d

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setRecordDate(Ljava/lang/String;)V

    .line 83
    const/16 v2, 0x1e

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setRecordTimestamp(Ljava/lang/String;)V

    .line 84
    const/16 v2, 0x1f

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setPage(Ljava/lang/String;)V

    .line 85
    const/16 v2, 0x20

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setEventID(Ljava/lang/String;)V

    .line 86
    const/16 v2, 0x21

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setArg1(Ljava/lang/String;)V

    .line 87
    const/16 v2, 0x22

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setArg2(Ljava/lang/String;)V

    .line 88
    const/16 v2, 0x23

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setArg3(Ljava/lang/String;)V

    .line 89
    const/16 v2, 0x24

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setArgs(Ljava/lang/String;)V

    .line 133
    .end local v1           #record:Lcom/taobao/statistic/UTEventObj;
    :goto_0
    return-object v1

    .line 91
    :cond_0
    array-length v2, v0

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 92
    new-instance v1, Lcom/taobao/statistic/UTEventObj;

    invoke-direct {v1}, Lcom/taobao/statistic/UTEventObj;-><init>()V

    .line 93
    .restart local v1       #record:Lcom/taobao/statistic/UTEventObj;
    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setIp(Ljava/lang/String;)V

    .line 94
    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setVersion(Ljava/lang/String;)V

    .line 95
    aget-object v2, v0, v7

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setImei(Ljava/lang/String;)V

    .line 96
    aget-object v2, v0, v8

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setImsi(Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setBrand(Ljava/lang/String;)V

    .line 98
    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setCpu(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setDeviceID(Ljava/lang/String;)V

    .line 100
    const/4 v2, 0x7

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setDeviceModel(Ljava/lang/String;)V

    .line 101
    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setResolution(Ljava/lang/String;)V

    .line 102
    const/16 v2, 0x9

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setCarrier(Ljava/lang/String;)V

    .line 103
    const/16 v2, 0xa

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setAccess(Ljava/lang/String;)V

    .line 104
    const/16 v2, 0xb

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setAccessSubtype(Ljava/lang/String;)V

    .line 105
    const/16 v2, 0xc

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setChannel(Ljava/lang/String;)V

    .line 106
    const/16 v2, 0xd

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setAppKey(Ljava/lang/String;)V

    .line 107
    const/16 v2, 0xe

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setAppVersion(Ljava/lang/String;)V

    .line 108
    const/16 v2, 0xf

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setLongLongUsernick(Ljava/lang/String;)V

    .line 109
    const/16 v2, 0x10

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setUserNick(Ljava/lang/String;)V

    .line 110
    const/16 v2, 0x11

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setPhoneNumber(Ljava/lang/String;)V

    .line 111
    const/16 v2, 0x12

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setCountry(Ljava/lang/String;)V

    .line 112
    const/16 v2, 0x13

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setLanguage(Ljava/lang/String;)V

    .line 113
    const/16 v2, 0x14

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setOs(Ljava/lang/String;)V

    .line 114
    const/16 v2, 0x15

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setOsVersion(Ljava/lang/String;)V

    .line 115
    const/16 v2, 0x16

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setSdkType(Ljava/lang/String;)V

    .line 116
    const/16 v2, 0x17

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setSdkVersion(Ljava/lang/String;)V

    .line 117
    const/16 v2, 0x18

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setSessionId(Ljava/lang/String;)V

    .line 118
    const/16 v2, 0x19

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setUtdid(Ljava/lang/String;)V

    .line 119
    const/16 v2, 0x1a

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setReserve3(Ljava/lang/String;)V

    .line 120
    const/16 v2, 0x1b

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setReserve4(Ljava/lang/String;)V

    .line 121
    const/16 v2, 0x1c

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setReserve5(Ljava/lang/String;)V

    .line 122
    const/16 v2, 0x1d

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setReserves(Ljava/lang/String;)V

    .line 123
    const/16 v2, 0x1e

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setRecordDate(Ljava/lang/String;)V

    .line 124
    const/16 v2, 0x1f

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setRecordTimestamp(Ljava/lang/String;)V

    .line 125
    const/16 v2, 0x20

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setPage(Ljava/lang/String;)V

    .line 126
    const/16 v2, 0x21

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setEventID(Ljava/lang/String;)V

    .line 127
    const/16 v2, 0x22

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setArg1(Ljava/lang/String;)V

    .line 128
    const/16 v2, 0x23

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setArg2(Ljava/lang/String;)V

    .line 129
    const/16 v2, 0x24

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setArg3(Ljava/lang/String;)V

    .line 130
    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/UTEventObj;->setArgs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .end local v1           #record:Lcom/taobao/statistic/UTEventObj;
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getAccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ie:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ig:Ljava/lang/String;

    return-object v0
.end method

.method public getArg1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->is:Ljava/lang/String;

    return-object v0
.end method

.method public getArg2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->it:Ljava/lang/String;

    return-object v0
.end method

.method public getArg3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->iu:Ljava/lang/String;

    return-object v0
.end method

.method public getArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->iv:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getCpu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ib:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ic:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getEventID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ir:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->hZ:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->hX:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ih:Ljava/lang/String;

    return-object v0
.end method

.method public getLongLongUsernick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ii:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->iq:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getReserve3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->il:Ljava/lang/String;

    return-object v0
.end method

.method public getReserve4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->im:Ljava/lang/String;

    return-object v0
.end method

.method public getReserve5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->in:Ljava/lang/String;

    return-object v0
.end method

.method public getReserves()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->io:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ij:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->ik:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/taobao/statistic/UTEventObj;->hY:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 0
    .parameter "access"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ie:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setAccessSubtype(Ljava/lang/String;)V
    .locals 0
    .parameter "accessSubtype"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->z:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .parameter "appKey"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->if:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "appVersion"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ig:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setArg1(Ljava/lang/String;)V
    .locals 0
    .parameter "arg1"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->is:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setArg2(Ljava/lang/String;)V
    .locals 0
    .parameter "arg2"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->it:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setArg3(Ljava/lang/String;)V
    .locals 0
    .parameter "arg3"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->iu:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->iv:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .parameter "brand"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->s:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0
    .parameter "carrier"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->id:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->A:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->G:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setCpu(Ljava/lang/String;)V
    .locals 0
    .parameter "cpu"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ib:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceID"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ic:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceModel"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->v:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setEventID(Ljava/lang/String;)V
    .locals 0
    .parameter "eventID"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ir:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->hZ:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ia:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->hX:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ih:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setLongLongUsernick(Ljava/lang/String;)V
    .locals 0
    .parameter "usernick"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->D:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .parameter "os"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ii:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "osVersion"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->J:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0
    .parameter "page"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->iq:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->F:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setRecordDate(Ljava/lang/String;)V
    .locals 0
    .parameter "recordDate"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->S:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setRecordTimestamp(Ljava/lang/String;)V
    .locals 0
    .parameter "recordTimestamp"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ip:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setReserve3(Ljava/lang/String;)V
    .locals 0
    .parameter "reserve3"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->il:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setReserve4(Ljava/lang/String;)V
    .locals 0
    .parameter "reserve4"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->im:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setReserve5(Ljava/lang/String;)V
    .locals 0
    .parameter "reserve5"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->in:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setReserves(Ljava/lang/String;)V
    .locals 0
    .parameter "reserves"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->io:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->w:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setSdkType(Ljava/lang/String;)V
    .locals 0
    .parameter "sdkType"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->K:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "sdkVersion"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->L:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionId"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ij:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0
    .parameter "userNick"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->E:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setUtdid(Ljava/lang/String;)V
    .locals 0
    .parameter "utdid"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->ik:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/taobao/statistic/UTEventObj;->hY:Ljava/lang/String;

    .line 190
    return-void
.end method
