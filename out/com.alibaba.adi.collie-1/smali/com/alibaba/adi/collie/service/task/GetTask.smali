.class public Lcom/alibaba/adi/collie/service/task/GetTask;
.super Ljava/lang/Object;
.source "GetTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetTask"


# instance fields
.field private mBaseContext:Landroid/content/Context;

.field private mTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V
    .locals 0
    .parameter "baseContext"
    .parameter "types"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/task/GetTask;->mBaseContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/alibaba/adi/collie/service/task/GetTask;->mTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    .line 28
    return-void
.end method

.method private doGet()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;,
            Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->getsInstance()Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/service/task/GetTask;->mBaseContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/adi/collie/service/task/GetTask;->mTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->get(Landroid/content/Context;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, retValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/task/GetTask;->mTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->parseServiceData(Ljava/lang/String;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)Z

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/task/GetTask;->doGet()V
    :try_end_0
    .catch Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
    const-string v3, "GetTask"

    const-string v4, "Get failed because client has not been registered to ADI yet"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v2, Lcom/alibaba/adi/collie/service/task/RegTask;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/service/task/RegTask;-><init>()V

    .line 37
    .local v2, regTimerTask:Lcom/alibaba/adi/collie/service/task/RegTask;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/service/task/RegTask;->runDirectly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const-string v3, "GetTask"

    const-string v4, "Registration succeeded, try to get again"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :try_start_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/task/GetTask;->doGet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 41
    :catch_1
    move-exception v1

    .line 42
    .local v1, e1:Ljava/lang/Exception;
    const-string v3, "GetTask"

    const-string v4, "Registration failed, skipp Get"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v3, "GetTask"

    const-string v4, "Get failed because of registration failure"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0           #e:Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
    .end local v2           #regTimerTask:Lcom/alibaba/adi/collie/service/task/RegTask;
    :catch_2
    move-exception v0

    .line 49
    .local v0, e:Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException;
    const-string v3, "GetTask"

    const-string v4, "Get failed because Taobao SID is invalid, try refresh SID ..."

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/task/GetTask;->mBaseContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->autoLoginSync()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    :try_start_2
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/task/GetTask;->doGet()V

    .line 53
    const-string v3, "GetTask"

    const-string v4, "Re-get succeeded"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 54
    :catch_3
    move-exception v1

    .line 55
    .restart local v1       #e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_1
    const-string v3, "GetTask"

    const-string v4, "Refresh Taobao SID failed, skip Get"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
