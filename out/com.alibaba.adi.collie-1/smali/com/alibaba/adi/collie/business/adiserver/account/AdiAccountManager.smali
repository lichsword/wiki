.class public Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;
.super Ljava/lang/Object;
.source "AdiAccountManager.java"


# static fields
.field public static final ACCOUNT_TAOBAO:Ljava/lang/String; = "taobao"

.field public static final ACCOUNT_WEIBO:Ljava/lang/String; = "weibo"

.field private static final TAG:Ljava/lang/String; = "AdiAccountManager"

.field private static sInstance:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;


# instance fields
.field private final mExecutorSrv:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->mExecutorSrv:Ljava/util/concurrent/ExecutorService;

    .line 54
    return-void
.end method

.method private clearTaoTrackingCache()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "com.adi.collie.TAOBAO_NUM_CHANGE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    .line 183
    const-string v0, "tb_tracking_data"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "tb_tracking_new_ids"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static getsInstance()Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->sInstance:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->sInstance:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->sInstance:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->sInstance:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postBind(Landroid/content/Context;Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;)V
    .locals 11
    .parameter "context"
    .parameter "accountResult"

    .prologue
    const/4 v7, 0x0

    .line 128
    invoke-virtual {p2}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->BINDED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-static {p2, v0}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->saveAdiAccount(Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;)V

    .line 131
    invoke-virtual {p2}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getRetData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "weiboId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p2}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getRetData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "weiboInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p2}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getRetData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "weiboInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 134
    .local v10, weiboInfo:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 136
    .local v8, gson:Lcom/google/gson/Gson;
    const-class v0, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;

    invoke-virtual {v8, v10, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;

    .line 137
    .local v9, newAccount:Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v9}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v9}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->getExpiresTime()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->getUid()J

    move-result-wide v4

    invoke-virtual {v9}, Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    .line 138
    invoke-static/range {v0 .. v7}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->setAccessTokenToPref(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 140
    const-string v0, "AdiAccountManager"

    const-string v1, "weibo account replaced"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v8           #gson:Lcom/google/gson/Gson;
    .end local v9           #newAccount:Lcom/alibaba/adi/collie/model/weibo/WeiboAccount;
    .end local v10           #weiboInfo:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->clearTaoTrackingCache()V

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->startAdiSync([Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V

    .line 148
    :cond_1
    return-void
.end method

.method private postUnbind(Landroid/content/Context;Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "accountResult"
    .parameter "accountType"

    .prologue
    .line 170
    const-string v0, "taobao"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p2}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->REGISTERED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-static {p2, v0}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->saveAdiAccount(Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;)V

    .line 174
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->clearTaoTrackingCache()V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v0, "weibo"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboHelper;->clearWeiboCache()V

    goto :goto_0
.end method


# virtual methods
.method public appRegister()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 78
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v5

    sget-object v6, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-virtual {v5, v6}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    new-instance v2, Lcom/alibaba/adi/collie/service/task/RegTask;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/service/task/RegTask;-><init>()V

    .line 80
    .local v2, regTask:Lcom/alibaba/adi/collie/service/task/RegTask;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/service/task/RegTask;->runDirectly()Z

    .line 99
    .end local v2           #regTask:Lcom/alibaba/adi/collie/service/task/RegTask;
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getNewsRegistered()Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;

    .line 84
    const-string v5, "http://api.suopingbao.com/app_register"

    sget-object v6, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    .line 83
    invoke-direct {v0, v5, v6}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;-><init>(Ljava/lang/String;Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;)V

    .line 85
    .local v0, connectHelper:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;
    invoke-static {v7}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v1

    .line 86
    .local v1, property:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v4

    .line 87
    .local v4, ret:Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 88
    check-cast v3, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    .line 89
    .local v3, result:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->getRetCode()I

    move-result v5

    if-nez v5, :cond_0

    .line 91
    invoke-static {v7}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->setNewsRegistered(Z)V

    .line 92
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->triggerScheduleGetNews()V

    goto :goto_0

    .line 96
    .end local v0           #connectHelper:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAppRegisterConnectHelper;
    .end local v1           #property:Landroid/taobao/apirequest/ApiProperty;
    .end local v3           #result:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    .end local v4           #ret:Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->triggerScheduleGetNews()V

    goto :goto_0
.end method

.method public bind(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;,
            Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;,
            Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 104
    new-instance v4, Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;

    invoke-direct {v4}, Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;-><init>()V

    throw v4

    .line 106
    :cond_0
    const/4 v2, 0x0

    .line 107
    .local v2, connectHelper:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
    const-string v4, "taobao"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    new-instance v2, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindTaoConnectHelper;

    .end local v2           #connectHelper:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
    const-string v4, "https://api.suopingbao.com/account/bind"

    invoke-direct {v2, v4}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindTaoConnectHelper;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v2       #connectHelper:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
    :goto_0
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v1

    .line 116
    .local v1, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v3

    .line 117
    .local v3, ret:Ljava/lang/Object;
    if-eqz v3, :cond_3

    instance-of v4, v3, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    if-eqz v4, :cond_3

    move-object v0, v3

    .line 118
    check-cast v0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    .line 119
    .local v0, accountResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->postBind(Landroid/content/Context;Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;)V

    .line 122
    .end local v0           #accountResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :goto_1
    return-object v0

    .line 109
    .end local v1           #apiProperty:Landroid/taobao/apirequest/ApiProperty;
    .end local v3           #ret:Ljava/lang/Object;
    :cond_1
    const-string v4, "weibo"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    new-instance v2, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindWeiboConnectHelper;

    .end local v2           #connectHelper:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
    const-string v4, "https://api.suopingbao.com/account/bind"

    invoke-direct {v2, v4}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiBindWeiboConnectHelper;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v2       #connectHelper:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
    goto :goto_0

    .line 112
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unknown account type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    .restart local v1       #apiProperty:Landroid/taobao/apirequest/ApiProperty;
    .restart local v3       #ret:Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public register()Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;

    const-string v4, "https://api.suopingbao.com/account/register"

    invoke-direct {v1, v4}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, connectHelper:Lcom/alibaba/adi/collie/business/adiserver/account/AdiRegisterConnectHelper;
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v2

    .line 59
    .local v2, property:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    .local v3, ret:Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 61
    check-cast v0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    .line 62
    .local v0, accountResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->BINDED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 66
    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->REGISTERED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-static {v0, v4}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->saveAdiAccount(Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;)V

    .line 71
    .end local v0           #accountResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unbind(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    .locals 6
    .parameter "context"
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/adiserver/AdiNotBindedException;,
            Lcom/alibaba/adi/collie/business/taobao/login/TaoNotLogedInException;,
            Lcom/alibaba/adi/collie/business/weibo/api/WeiboNotLoginException;
        }
    .end annotation

    .prologue
    .line 152
    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->BINDED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 153
    new-instance v4, Lcom/alibaba/adi/collie/business/adiserver/AdiNotBindedException;

    invoke-direct {v4}, Lcom/alibaba/adi/collie/business/adiserver/AdiNotBindedException;-><init>()V

    throw v4

    .line 156
    :cond_0
    new-instance v2, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;

    const-string v4, "https://api.suopingbao.com/account/logout"

    invoke-direct {v2, v4, p2}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiUnbindConnectHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v2, connectHelper:Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountBaseConnectHelper;
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v1

    .line 159
    .local v1, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    .local v3, ret:Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 161
    check-cast v0, Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;

    .line 162
    .local v0, accountResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->postUnbind(Landroid/content/Context;Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;Ljava/lang/String;)V

    .line 165
    .end local v0           #accountResult:Lcom/alibaba/adi/collie/model/adiserver/AdiAccountResult;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
