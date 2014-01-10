.class public Lcom/alibaba/adi/collie/service/task/SyncTask;
.super Ljava/lang/Object;
.source "SyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "SyncTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/task/SyncTask;->mContext:Landroid/content/Context;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 26
    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->WEATHER:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 27
    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->YUEBAO:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v2, v0, v1

    .line 25
    iput-object v0, p0, Lcom/alibaba/adi/collie/service/task/SyncTask;->mTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V
    .locals 0
    .parameter "context"
    .parameter "types"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/task/SyncTask;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/alibaba/adi/collie/service/task/SyncTask;->mTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    .line 33
    return-void
.end method

.method private doSync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;,
            Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->getsInstance()Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/service/task/SyncTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/adi/collie/service/task/SyncTask;->mTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->sync(Landroid/content/Context;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, syncValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 84
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$NetworkHistory;->setLastSyncTime(Ljava/util/Date;)V

    .line 85
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/task/SyncTask;->mTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->parseServiceData(Ljava/lang/String;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$NetworkHistory;->setLastSyncStatus(Z)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/task/SyncTask;->doSync()V
    :try_end_0
    .catch Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
    const-string v3, "SyncTask"

    const-string v4, "Sync failed because client has not been registered to ADI yet"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v2, Lcom/alibaba/adi/collie/service/task/RegTask;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/service/task/RegTask;-><init>()V

    .line 56
    .local v2, regTimerTask:Lcom/alibaba/adi/collie/service/task/RegTask;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/service/task/RegTask;->runDirectly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    :try_start_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/task/SyncTask;->doSync()V

    .line 59
    const-string v3, "SyncTask"

    const-string v4, "Re-sync succeeded"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 60
    :catch_1
    move-exception v1

    .line 61
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v3, "SyncTask"

    const-string v4, "Registration failed, skipp re-sync"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0           #e:Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
    .end local v2           #regTimerTask:Lcom/alibaba/adi/collie/service/task/RegTask;
    :catch_2
    move-exception v0

    .line 67
    .local v0, e:Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException;
    const-string v3, "SyncTask"

    const-string v4, "Sync failed because Taobao SID is invalid, try refresh SID ..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/task/SyncTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->autoLoginSync()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    :try_start_2
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/task/SyncTask;->doSync()V

    .line 71
    const-string v3, "SyncTask"

    const-string v4, "Re-sync succeeded"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 72
    :catch_3
    move-exception v1

    .line 73
    .restart local v1       #e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_1
    const-string v3, "SyncTask"

    const-string v4, "Refresh Taobao SID failed, skip re-sync"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
