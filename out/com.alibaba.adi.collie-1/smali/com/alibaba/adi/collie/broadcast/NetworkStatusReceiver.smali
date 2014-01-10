.class public Lcom/alibaba/adi/collie/broadcast/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatusReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkStatusReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    const-string v2, "adi_lock_enable"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v2}, Lcom/alibaba/adi/collie/util/NetworkUtil;->networkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string v2, "NetworkStatusReceiver"

    const-string v3, "network is connected"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v0

    .line 35
    .local v0, currAdiStatus:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;
    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->REGISTERED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    if-ne v0, v2, :cond_2

    .line 36
    invoke-static {p1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->loadAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v1

    .line 37
    .local v1, taoLoginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    const-string v2, "NetworkStatusReceiver"

    const-string v3, "not binded yet, try binding when WIFI is connected"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 42
    const-string v3, "taobao"

    .line 41
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->startBindToAdi(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .end local v1           #taoLoginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->triggerScheduleGetNews()V

    .line 51
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->triggerScheduleGetJoke()V

    .line 52
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->checkVersion()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/adi/collie/AgooRegister;->register(Landroid/content/Context;)V

    goto :goto_0

    .line 44
    .restart local v1       #taoLoginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    :cond_3
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$NetworkHistory;->canSyncNow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    const-string v2, "NetworkStatusReceiver"

    const-string v3, "can start sync"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->startAdiSync()V

    goto :goto_1
.end method
