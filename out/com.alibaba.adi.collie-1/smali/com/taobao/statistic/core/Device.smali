.class public Lcom/taobao/statistic/core/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private hZ:Ljava/lang/String;

.field private iL:Ljava/lang/String;

.field private ia:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/Device;->iL:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/Device;->hZ:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/Device;->ia:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/taobao/statistic/core/Device;->hZ:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taobao/statistic/core/Device;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taobao/statistic/core/Device;->iL:Ljava/lang/String;

    return-object v0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/taobao/statistic/core/Device;->hZ:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/taobao/statistic/core/Device;->ia:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .parameter "udid"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/taobao/statistic/core/Device;->iL:Ljava/lang/String;

    .line 11
    return-void
.end method
