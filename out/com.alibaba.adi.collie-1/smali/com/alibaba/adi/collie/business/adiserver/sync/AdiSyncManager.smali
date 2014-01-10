.class public Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;
.super Ljava/lang/Object;
.source "AdiSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;,
        Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getsInstance()Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->sInstance:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->sInstance:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->sInstance:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->sInstance:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public get(Landroid/content/Context;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 59
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;-><init>()V

    throw v1

    .line 63
    :cond_0
    invoke-static {p1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoAccountPersistence;->loadAccount(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;

    move-result-object v11

    .line 64
    .local v11, taoLoginResult:Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;
    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;

    const-string v2, "http://api.suopingbao.com/get"

    .line 65
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getMainId()Ljava/lang/String;

    move-result-object v3

    .line 66
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->getSessionId()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v5, "1.0.0"

    .line 67
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;->geteCode()Ljava/lang/String;

    move-result-object v6

    .line 68
    :goto_1
    invoke-static {}, Landroid/taobao/common/SDKConfig;->getInstance()Landroid/taobao/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/common/SDKConfig;->getGlobalAppkey()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getPasswd()Ljava/lang/String;

    move-result-object v8

    move-object v1, p2

    .line 64
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;-><init>([Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v0, connectHelper:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v9

    .line 70
    .local v9, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v1

    invoke-virtual {v1, v0, v9}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v10

    .line 71
    .local v10, ret:Ljava/lang/Object;
    if-eqz v10, :cond_3

    instance-of v1, v10, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 72
    check-cast v10, Ljava/lang/String;

    .line 74
    .end local v10           #ret:Ljava/lang/Object;
    :goto_2
    return-object v10

    .end local v0           #connectHelper:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;
    .end local v9           #apiProperty:Landroid/taobao/apirequest/ApiProperty;
    :cond_1
    move-object v4, v12

    .line 66
    goto :goto_0

    :cond_2
    move-object v6, v12

    .line 67
    goto :goto_1

    .restart local v0       #connectHelper:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;
    .restart local v9       #apiProperty:Landroid/taobao/apirequest/ApiProperty;
    .restart local v10       #ret:Ljava/lang/Object;
    :cond_3
    move-object v10, v12

    .line 74
    goto :goto_2
.end method

.method public get(Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;)Ljava/lang/String;
    .locals 7
    .parameter "appGet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;,
            Lcom/alibaba/adi/collie/business/adiserver/AdiNewsNotRegisteredException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v5

    sget-object v6, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-virtual {v5, v6}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    new-instance v5, Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;

    invoke-direct {v5}, Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;-><init>()V

    throw v5

    .line 82
    :cond_0
    const-string v1, ""

    .line 83
    .local v1, baseUrl:Ljava/lang/String;
    const-string v4, "0"

    .line 84
    .local v4, startTime:Ljava/lang/String;
    sget-object v5, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    if-ne v5, p1, :cond_3

    .line 85
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getNewsRegistered()Z

    move-result v5

    if-nez v5, :cond_1

    .line 86
    new-instance v5, Lcom/alibaba/adi/collie/business/adiserver/AdiNewsNotRegisteredException;

    invoke-direct {v5}, Lcom/alibaba/adi/collie/business/adiserver/AdiNewsNotRegisteredException;-><init>()V

    throw v5

    .line 88
    :cond_1
    const-string v1, "http://api.suopingbao.com/get_news"

    .line 89
    const-string v5, "news_last_endtime"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    :cond_2
    :goto_0
    new-instance v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiAppGetConnectHelper;

    invoke-direct {v2, v1, v4}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiAppGetConnectHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v2, connectHelper:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiAppGetConnectHelper;
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 100
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v3

    .line 101
    .local v3, ret:Ljava/lang/Object;
    if-eqz v3, :cond_5

    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 102
    check-cast v3, Ljava/lang/String;

    .line 104
    .end local v3           #ret:Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 90
    .end local v0           #apiProperty:Landroid/taobao/apirequest/ApiProperty;
    .end local v2           #connectHelper:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiAppGetConnectHelper;
    :cond_3
    sget-object v5, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->FUNNY_JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    if-ne v5, p1, :cond_4

    .line 91
    const-string v1, "http://api.suopingbao.com/get_funnyjoke"

    .line 92
    const-string v5, "joke_last_endtime"

    const-string v6, "0,0"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    goto :goto_0

    :cond_4
    sget-object v5, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    if-ne v5, p1, :cond_2

    .line 94
    const-string v1, "http://api.suopingbao.com/get_tbtracking"

    .line 95
    const-string v5, "tb_tranking_last_endtime"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 104
    .restart local v0       #apiProperty:Landroid/taobao/apirequest/ApiProperty;
    .restart local v2       #connectHelper:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiAppGetConnectHelper;
    .restart local v3       #ret:Ljava/lang/Object;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public sync(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x3

    new-array v0, v1, [Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->WEATHER:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->YUEBAO:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v2, v0, v1

    .line 55
    .local v0, queryTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->sync(Landroid/content/Context;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sync(Landroid/content/Context;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "queryTypes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    new-instance v3, Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;-><init>()V

    throw v3

    .line 42
    :cond_0
    new-instance v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;

    const-string v3, "http://api.suopingbao.com/sync"

    invoke-direct {v1, v3, p2}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;-><init>(Ljava/lang/String;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V

    .line 43
    .local v1, connectHelper:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 44
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v2, ret:Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 48
    .end local v2           #ret:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
