.class public Lcom/alibaba/adi/collie/service/task/RegTask;
.super Ljava/lang/Object;
.source "RegTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/task/RegTask;->runDirectly()Z

    move-result v0

    .line 21
    .local v0, isRegistered:Z
    if-nez v0, :cond_0

    .line 22
    const-string v1, "RegTask"

    const-string v2, "registration to ADI server failed, re-schedule in future"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v1, "RegTask"

    const-string v2, "registration to ADI succeeded"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public runDirectly()Z
    .locals 5

    .prologue
    .line 29
    const/4 v2, 0x1

    .line 30
    .local v2, ret:Z
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->getsInstance()Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->register()Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 33
    .local v1, result:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 40
    .end local v1           #result:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 42
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->startAdiSync()V

    .line 45
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->triggerScheduleGetJoke()V

    .line 48
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->getsInstance()Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->appRegister()V

    .line 50
    :cond_1
    return v2

    .line 33
    .restart local v1       #result:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 34
    .end local v1           #result:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "RegTask"

    const-string v4, "ADI registration failed with exception"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    const/4 v2, 0x0

    goto :goto_0
.end method
