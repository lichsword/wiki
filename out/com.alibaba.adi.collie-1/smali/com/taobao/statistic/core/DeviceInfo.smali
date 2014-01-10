.class public Lcom/taobao/statistic/core/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDevice(Landroid/content/Context;)Lcom/taobao/statistic/core/Device;
    .locals 3
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    invoke-static {p0}, Lcom/taobao/statistic/a/a/a;->a(Landroid/content/Context;)Lcom/ut/device/b;

    move-result-object v0

    .line 18
    .local v0, device:Lcom/ut/device/b;
    if-eqz v0, :cond_0

    .line 19
    new-instance v1, Lcom/taobao/statistic/core/Device;

    invoke-direct {v1}, Lcom/taobao/statistic/core/Device;-><init>()V

    .line 20
    .local v1, device2:Lcom/taobao/statistic/core/Device;
    invoke-virtual {v0}, Lcom/ut/device/b;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/core/Device;->setImei(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/ut/device/b;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/core/Device;->setImsi(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/core/Device;->setUdid(Ljava/lang/String;)V

    .line 25
    .end local v1           #device2:Lcom/taobao/statistic/core/Device;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
