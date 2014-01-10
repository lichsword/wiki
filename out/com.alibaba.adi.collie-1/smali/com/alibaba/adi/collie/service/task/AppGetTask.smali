.class public Lcom/alibaba/adi/collie/service/task/AppGetTask;
.super Ljava/lang/Object;
.source "AppGetTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final RETRY_TIMES:I = 0x3

.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mBaseContext:Landroid/content/Context;

.field private mCacheFile:Ljava/lang/String;

.field private mType:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/alibaba/adi/collie/service/task/AppGetTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;Ljava/lang/String;)V
    .locals 0
    .parameter "baseContext"
    .parameter "type"
    .parameter "cacheFile"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->mBaseContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->mType:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    .line 34
    iput-object p3, p0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->mCacheFile:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected doGet(Z)Ljava/lang/String;
    .locals 3
    .parameter "saveToStorage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;,
            Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException;,
            Lcom/alibaba/adi/collie/business/adiserver/AdiNewsNotRegisteredException;,
            Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v1, Lcom/alibaba/adi/collie/service/task/AppGetTask;->TAG:Ljava/lang/String;

    const-string v2, "xhh do app get"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->getsInstance()Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->mType:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;->get(Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, retValue:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/service/task/AppGetTask;->parseGetRetValue(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-object v0
.end method

.method protected parseGetRetValue(Ljava/lang/String;)V
    .locals 6
    .parameter "retValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->FUNNY_JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    iget-object v5, p0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->mType:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    if-ne v4, v5, :cond_2

    .line 88
    invoke-static {p1, v2}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getImageFunnyJokeListFromJsonstr(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, datalist:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 90
    .local v2, ret:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 91
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->mCacheFile:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorageSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v3, "joke_last_refresh_time"

    .line 94
    const-string v4, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    .line 93
    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPrefCurrentDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->triggerUnScheduleGetJoke()V

    .line 108
    .end local v0           #datalist:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    .end local v2           #ret:Z
    :cond_0
    :goto_1
    return-void

    .restart local v0       #datalist:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    :cond_1
    move v2, v3

    .line 89
    goto :goto_0

    .line 97
    .end local v0           #datalist:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    :cond_2
    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    iget-object v5, p0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->mType:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    if-ne v4, v5, :cond_0

    .line 98
    invoke-static {p1}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getNewsDataListFromJsonStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, datalist:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 100
    .restart local v2       #ret:Z
    :goto_2
    if-eqz v2, :cond_0

    .line 101
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->mCacheFile:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorageSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "news_last_refresh_time"

    .line 104
    const-string v4, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    .line 103
    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPrefCurrentDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->triggerUnScheduleGetNews()V

    goto :goto_1

    .end local v2           #ret:Z
    :cond_3
    move v2, v3

    .line 99
    goto :goto_2
.end method

.method public run()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->TAG:Ljava/lang/String;

    const-string v1, "app get task schduled"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/service/task/AppGetTask;->runDirectly(Z)Ljava/lang/String;

    .line 41
    return-void
.end method

.method public runDirectly(Z)Ljava/lang/String;
    .locals 6
    .parameter "saveToStorage"

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    .line 72
    const-string v3, ""

    :goto_1
    return-object v3

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/service/task/AppGetTask;->doGet(Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/adi/collie/business/adiserver/AdiNewsNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Lcom/alibaba/adi/collie/business/adiserver/AdiNewsNotRegisteredException;
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->getsInstance()Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/adiserver/account/AdiAccountManager;->appRegister()V

    .line 45
    .end local v0           #e:Lcom/alibaba/adi/collie/business/adiserver/AdiNewsNotRegisteredException;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    .line 51
    .local v0, e:Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
    sget-object v4, Lcom/alibaba/adi/collie/service/task/AppGetTask;->TAG:Ljava/lang/String;

    const-string v5, "Get failed because client has not been registered to ADI yet"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v2, Lcom/alibaba/adi/collie/service/task/RegTask;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/service/task/RegTask;-><init>()V

    .line 53
    .local v2, regTimerTask:Lcom/alibaba/adi/collie/service/task/RegTask;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/service/task/RegTask;->runDirectly()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    sget-object v4, Lcom/alibaba/adi/collie/service/task/AppGetTask;->TAG:Ljava/lang/String;

    const-string v5, "Registration succeeded, try to get again"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 57
    :cond_2
    sget-object v4, Lcom/alibaba/adi/collie/service/task/AppGetTask;->TAG:Ljava/lang/String;

    const-string v5, "Get failed because of registration failure"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    .end local v0           #e:Lcom/alibaba/adi/collie/business/adiserver/AdiNotRegisteredException;
    .end local v2           #regTimerTask:Lcom/alibaba/adi/collie/service/task/RegTask;
    :catch_2
    move-exception v0

    .line 61
    .local v0, e:Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException;
    sget-object v4, Lcom/alibaba/adi/collie/service/task/AppGetTask;->TAG:Ljava/lang/String;

    const-string v5, "Get failed because Taobao SID is invalid, try refresh SID ..."

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v4, p0, Lcom/alibaba/adi/collie/service/task/AppGetTask;->mBaseContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->autoLoginSync()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    sget-object v4, Lcom/alibaba/adi/collie/service/task/AppGetTask;->TAG:Ljava/lang/String;

    const-string v5, "Refresh Taobao SID failed, skip Get"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v0           #e:Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException;
    :catch_3
    move-exception v4

    goto :goto_2
.end method
