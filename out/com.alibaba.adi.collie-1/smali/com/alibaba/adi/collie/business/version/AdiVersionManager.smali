.class public Lcom/alibaba/adi/collie/business/version/AdiVersionManager;
.super Ljava/lang/Object;
.source "AdiVersionManager.java"


# static fields
.field private static sIntance:Lcom/alibaba/adi/collie/business/version/AdiVersionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _checkVersion(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/UpdateInfo;
    .locals 7
    .parameter "context"

    .prologue
    .line 52
    new-instance v1, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;

    invoke-static {p1}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-static {p1}, Lcom/alibaba/adi/collie/util/NetworkUtil;->getNetworkType(Landroid/content/Context;)Lcom/alibaba/adi/collie/util/NetworkUtil$Type;

    move-result-object v4

    sget-object v5, Lcom/alibaba/adi/collie/model/AdiConstants;->VERSION_CHANNEL:Ljava/lang/String;

    const-string v6, "adiscreenlock"

    .line 52
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;-><init>(Ljava/lang/String;Lcom/alibaba/adi/collie/util/NetworkUtil$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v1, connectHelper:Lcom/alibaba/adi/collie/business/version/VersionUpgradeConnectHelper;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 55
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    .local v2, ret:Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/adi/collie/model/UpdateInfo;

    if-eqz v3, :cond_0

    .line 57
    check-cast v2, Lcom/alibaba/adi/collie/model/UpdateInfo;

    .line 59
    .end local v2           #ret:Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getsIntance()Lcom/alibaba/adi/collie/business/version/AdiVersionManager;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/adi/collie/business/version/AdiVersionManager;->sIntance:Lcom/alibaba/adi/collie/business/version/AdiVersionManager;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lcom/alibaba/adi/collie/business/version/AdiVersionManager;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/business/version/AdiVersionManager;->sIntance:Lcom/alibaba/adi/collie/business/version/AdiVersionManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/alibaba/adi/collie/business/version/AdiVersionManager;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/business/version/AdiVersionManager;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/business/version/AdiVersionManager;->sIntance:Lcom/alibaba/adi/collie/business/version/AdiVersionManager;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/business/version/AdiVersionManager;->sIntance:Lcom/alibaba/adi/collie/business/version/AdiVersionManager;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkVersion(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/version/AdiVersionManager;->_checkVersion(Landroid/content/Context;)Lcom/alibaba/adi/collie/model/UpdateInfo;

    move-result-object v2

    .line 32
    .local v2, updateInfo:Lcom/alibaba/adi/collie/model/UpdateInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/UpdateInfo;->shouldUpdate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, savedVer:Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getUpdateUrl()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, savedUrl:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 37
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 39
    iget-object v3, v2, Lcom/alibaba/adi/collie/model/UpdateInfo;->mVersion:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->compVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 49
    .end local v0           #savedUrl:Ljava/lang/String;
    .end local v1           #savedVer:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v0       #savedUrl:Ljava/lang/String;
    .restart local v1       #savedVer:Ljava/lang/String;
    :cond_1
    iget-object v3, v2, Lcom/alibaba/adi/collie/model/UpdateInfo;->mApkDLUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->setUpdateUrl(Ljava/lang/String;)V

    .line 45
    iget-object v3, v2, Lcom/alibaba/adi/collie/model/UpdateInfo;->mVersion:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->setUpdateVersion(Ljava/lang/String;)V

    .line 46
    iget-object v3, v2, Lcom/alibaba/adi/collie/model/UpdateInfo;->mNotifyTip:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->setUpdateFeatureDesc(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->setNotifiedAlready(Z)V

    goto :goto_0
.end method
