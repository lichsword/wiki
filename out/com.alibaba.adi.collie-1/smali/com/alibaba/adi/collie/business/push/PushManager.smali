.class public Lcom/alibaba/adi/collie/business/push/PushManager;
.super Ljava/lang/Object;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/alibaba/adi/collie/business/push/PushManager;


# instance fields
.field private final mPushIdTable:Lcom/alibaba/adi/collie/business/push/PushIdTable;

.field private final mPushShownTable:Lcom/alibaba/adi/collie/business/push/PushShownTable;

.field private final mPushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

.field private mTask:Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/adi/collie/business/push/PushManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/business/push/PushManager;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/adi/collie/business/push/PushManager;->DEBUG:Z

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mTask:Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;

    .line 42
    invoke-static {}, Lcom/alibaba/adi/collie/business/DbManager;->getInstance()Lcom/alibaba/adi/collie/business/DbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/DbManager;->getPushTable()Lcom/alibaba/adi/collie/business/push/PushTable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    .line 43
    invoke-static {}, Lcom/alibaba/adi/collie/business/DbManager;->getInstance()Lcom/alibaba/adi/collie/business/DbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/DbManager;->getPushShownTable()Lcom/alibaba/adi/collie/business/push/PushShownTable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushShownTable:Lcom/alibaba/adi/collie/business/push/PushShownTable;

    .line 44
    invoke-static {}, Lcom/alibaba/adi/collie/business/DbManager;->getInstance()Lcom/alibaba/adi/collie/business/DbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/DbManager;->getPushIdTable()Lcom/alibaba/adi/collie/business/push/PushIdTable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushIdTable:Lcom/alibaba/adi/collie/business/push/PushIdTable;

    .line 45
    sget-boolean v0, Lcom/alibaba/adi/collie/business/push/PushManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/push/PushManager;->deleteAll()V

    .line 47
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/push/PushManager;->mockMsg()V

    .line 49
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/business/push/PushManager;)Lcom/alibaba/adi/collie/model/push/ValidPushMsg;
    .locals 1
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/push/PushManager;->getValidPushMsg()Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/business/push/PushManager;Lcom/alibaba/adi/collie/model/push/PushMsg;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/push/PushManager;->insertMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/business/push/PushManager;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/push/PushManager;->deleteMsg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private deleteAll()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/push/PushTable;->deleteMsgAll()V

    .line 443
    return-void
.end method

.method private deleteMsg(Ljava/lang/String;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 434
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0

    .line 437
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[delete] push msg delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    invoke-virtual {v0, p1}, Lcom/alibaba/adi/collie/business/push/PushTable;->deleteMsg(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private doInsertMsgAsync(Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V
    .locals 3
    .parameter "msg"
    .parameter "insertCallback"

    .prologue
    .line 128
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[insert] msg insert async called "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/adi/collie/business/push/PushManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/adi/collie/business/push/PushManager$1;-><init>(Lcom/alibaba/adi/collie/business/push/PushManager;Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/alibaba/adi/collie/business/push/PushManager;->sInstance:Lcom/alibaba/adi/collie/business/push/PushManager;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/alibaba/adi/collie/business/push/PushManager;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/business/push/PushManager;->sInstance:Lcom/alibaba/adi/collie/business/push/PushManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/alibaba/adi/collie/business/push/PushManager;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/business/push/PushManager;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/business/push/PushManager;->sInstance:Lcom/alibaba/adi/collie/business/push/PushManager;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/business/push/PushManager;->sInstance:Lcom/alibaba/adi/collie/business/push/PushManager;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMsgFieldFromServer(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 409
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 410
    :cond_0
    sget-object v5, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v6, "[Check]PushMsg.msg\'s id is null or empty"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return-object v4

    .line 414
    :cond_1
    sget-object v5, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v6, "[Process]Request json by url with id...Begin"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v1, Lcom/alibaba/adi/collie/business/push/PushConnectHelper;

    invoke-direct {v1, p1}, Lcom/alibaba/adi/collie/business/push/PushConnectHelper;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, connectHelper:Lcom/alibaba/adi/collie/business/push/PushConnectHelper;
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 418
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v3

    .line 419
    .local v3, ret:Ljava/lang/Object;
    if-eqz v3, :cond_3

    instance-of v5, v3, Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;

    if-eqz v5, :cond_3

    .line 420
    sget-object v5, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v6, "[Process]Request json by url with id...OK"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 421
    check-cast v2, Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;

    .line 422
    .local v2, notifyMsg:Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;->getStatus()I

    move-result v5

    if-nez v5, :cond_2

    .line 423
    sget-object v4, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v5, "[Process]Check json state...OK"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;->getData()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v4

    goto :goto_0

    .line 426
    :cond_2
    sget-object v5, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v6, "[Process]Check json state...Failed"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .end local v2           #notifyMsg:Lcom/alibaba/adi/collie/model/push/PushNotifyMsg;
    :cond_3
    sget-object v5, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v6, "[Process]Request json by url with id...Finish"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getValidPushMsg()Lcom/alibaba/adi/collie/model/push/ValidPushMsg;
    .locals 9

    .prologue
    .line 291
    const/4 v4, 0x0

    .line 292
    .local v4, validPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/adi/collie/business/push/PushTable;->getMsgList(Z)Ljava/util/List;

    move-result-object v2

    .line 293
    .local v2, jsonList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 294
    sget-object v5, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v6, "[getValidPushMsg]push msg json is null or empty"

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v5, 0x0

    .line 339
    :goto_0
    return-object v5

    .line 298
    :cond_0
    sget-object v5, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[getValidPushMsg]push msg size : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    move-object v5, v4

    .line 339
    goto :goto_0

    .line 299
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    .local v1, json:Ljava/lang/String;
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "parse json="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v3, 0x0

    .line 303
    .local v3, msg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    :try_start_0
    const-class v6, Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-static {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #msg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    check-cast v3, Lcom/alibaba/adi/collie/model/push/PushMsg;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .restart local v3       #msg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg;->activeNow()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 309
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "found valid PushMsg:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg;->debug()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    if-nez v4, :cond_3

    .line 312
    new-instance v4, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;

    .end local v4           #validPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;
    invoke-direct {v4}, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;-><init>()V

    .line 315
    .restart local v4       #validPushMsg:Lcom/alibaba/adi/collie/model/push/ValidPushMsg;
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->getCenterMsg()Lcom/alibaba/adi/collie/model/push/PushMsg;

    move-result-object v6

    if-nez v6, :cond_6

    .line 316
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->posCenter()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 317
    invoke-virtual {v4, v3}, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->setCenterMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 323
    :cond_4
    :goto_3
    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->getTopMsg()Lcom/alibaba/adi/collie/model/push/PushMsg;

    move-result-object v6

    if-nez v6, :cond_7

    .line 324
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->posTop()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 325
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "find a top pos msg"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v4, v3}, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->setTopMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 332
    :cond_5
    :goto_4
    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/push/ValidPushMsg;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    .line 304
    .end local v3           #msg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Lcom/alibaba/fastjson/JSONException;
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 320
    .end local v0           #e:Lcom/alibaba/fastjson/JSONException;
    .restart local v3       #msg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    :cond_6
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "exist [center] msg"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 329
    :cond_7
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "exist [top] msg"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 336
    :cond_8
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "[getValidPushMsg]msg not valid"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private insertMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)Z
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 343
    if-nez p1, :cond_0

    .line 405
    :goto_0
    return v3

    .line 346
    :cond_0
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/adi/collie/business/push/PushTable;->idExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "[insert] msg already exists in PushTable, ignore"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_1
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushIdTable:Lcom/alibaba/adi/collie/business/push/PushIdTable;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/adi/collie/business/push/PushIdTable;->idExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "[insert] msg already exists in PushIdTable, ignore"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v6

    if-nez v6, :cond_3

    .line 357
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getDr()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 359
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 360
    .local v2, random:Ljava/util/Random;
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getDr()J

    move-result-wide v6

    long-to-int v6, v6

    mul-int/lit8 v6, v6, 0xa

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v4, v6

    .line 362
    .local v4, sleepTime:J
    :try_start_0
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[insert] sleep "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v2           #random:Ljava/util/Random;
    .end local v4           #sleepTime:J
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/alibaba/adi/collie/business/push/PushManager;->getMsgFieldFromServer(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v1

    .line 372
    .local v1, msgField:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    if-eqz v1, :cond_5

    .line 373
    invoke-virtual {p1, v1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->setMsg(Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;)V

    .line 379
    .end local v1           #msgField:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->valid()Z

    move-result v6

    if-nez v6, :cond_6

    .line 380
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "[insert] msg is invalid, ignore"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    .restart local v2       #random:Ljava/util/Random;
    .restart local v4       #sleepTime:J
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 368
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #random:Ljava/util/Random;
    .end local v4           #sleepTime:J
    :cond_4
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "[insert] no need to sleep"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 375
    .restart local v1       #msgField:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    :cond_5
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "[insert] get msg field failed, ignore"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    .end local v1           #msgField:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->limitShowMaxOnce()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 386
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "[insert] shownMaxOnce"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushShownTable:Lcom/alibaba/adi/collie/business/push/PushShownTable;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getGid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/adi/collie/business/push/PushShownTable;->msgExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 388
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "[insert] gid already exists in PushShownTable, ignore"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    :cond_7
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getGid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/adi/collie/business/push/PushTable;->gidExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 395
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    invoke-virtual {v6, p1}, Lcom/alibaba/adi/collie/business/push/PushTable;->updateMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)Z

    move-result v3

    .line 396
    .local v3, ret:Z
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[insert] push msg update "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_2
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v7, "[Download]download un-cached images...START"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->preparedImages()V

    goto/16 :goto_0

    .line 398
    .end local v3           #ret:Z
    :cond_8
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushIdTable:Lcom/alibaba/adi/collie/business/push/PushIdTable;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/adi/collie/business/push/PushIdTable;->insertMsg(Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    invoke-virtual {v6, p1}, Lcom/alibaba/adi/collie/business/push/PushTable;->insertMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)Z

    move-result v3

    .line 400
    .restart local v3       #ret:Z
    sget-object v6, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[insert] push msg insert "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private mockMsg()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 446
    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "testcase/push.msg"

    aput-object v7, v2, v6

    const/4 v7, 0x1

    const-string v8, "testcase/push.msg.1"

    aput-object v8, v2, v7

    .line 447
    .local v2, files:[Ljava/lang/String;
    array-length v7, v2

    :goto_0
    if-lt v6, v7, :cond_0

    .line 459
    return-void

    .line 447
    :cond_0
    aget-object v1, v2, v6

    .line 449
    .local v1, file:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/adi/collie/util/FileUtil;->readAssetFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 450
    .local v5, value:Ljava/lang/String;
    const-class v8, Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-static {v5, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 451
    .local v3, msg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    invoke-direct {p0, v3}, Lcom/alibaba/adi/collie/business/push/PushManager;->insertMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)Z

    move-result v4

    .line 452
    .local v4, ret:Z
    sget-object v8, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[insert] mock msg "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 447
    .end local v3           #msg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    .end local v4           #ret:Z
    .end local v5           #value:Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Ljava/io/IOException;
    sget-object v8, Lcom/alibaba/adi/collie/business/push/PushManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 455
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 456
    .local v0, e:Lcom/alibaba/fastjson/JSONException;
    sget-object v8, Lcom/alibaba/adi/collie/business/push/PushManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public deleteMsgAsync(Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V
    .locals 3
    .parameter "msg"
    .parameter "deleteCallback"

    .prologue
    .line 261
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[delete] delete async called"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    if-nez p1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, id:Ljava/lang/String;
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/alibaba/adi/collie/business/push/PushManager$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/alibaba/adi/collie/business/push/PushManager$2;-><init>(Lcom/alibaba/adi/collie/business/push/PushManager;Ljava/lang/String;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public deleteMsgOutofDate()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x0

    .line 284
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v3, "[delete] delete msg out of date"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushTable:Lcom/alibaba/adi/collie/business/push/PushTable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "et<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/adi/collie/business/push/PushTable;->deleteMsg(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 286
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v7

    const-wide/32 v4, 0x2a300

    sub-long v0, v2, v4

    .line 287
    .local v0, idOutOfDate:J
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushIdTable:Lcom/alibaba/adi/collie/business/push/PushIdTable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insertDate<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/adi/collie/business/push/PushIdTable;->deleteMsg(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 288
    return-void
.end method

.method public getValidPushMsgAsync(Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mTask:Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mTask:Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mTask:Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "release last Task object."

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mTask:Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->release()V

    .line 68
    :cond_1
    new-instance v0, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;-><init>(Lcom/alibaba/adi/collie/business/push/PushManager;Lcom/alibaba/adi/collie/business/push/IGetMsgCallback;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mTask:Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;

    .line 69
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mTask:Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/push/PushManager$LoadValidPushMsgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "create new LoadValidPushMsgTask...finish"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_2
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "load valid push message task is...running."

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasClicked(Lcom/alibaba/adi/collie/model/push/PushMsg;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 191
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[click]"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-nez p1, :cond_1

    .line 193
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[click] msg is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[delete] because of dismiss by click"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->dismissByClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/business/push/PushManager;->updatePushShownTable(Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 200
    invoke-static {}, Lcom/alibaba/adi/collie/business/push/PushManager;->getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/adi/collie/business/push/PushManager;->deleteMsgAsync(Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V

    goto :goto_0
.end method

.method public hasClosed(Lcom/alibaba/adi/collie/model/push/PushMsg;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 180
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[close]"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-nez p1, :cond_0

    .line 182
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[close] msg is null"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[delete] because of close"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/business/push/PushManager;->updatePushShownTable(Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/adi/collie/business/push/PushManager;->deleteMsgAsync(Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V

    goto :goto_0
.end method

.method public hasShown(Lcom/alibaba/adi/collie/model/push/PushMsg;ZZZ)Z
    .locals 3
    .parameter "msg"
    .parameter "isClicked"
    .parameter "isClosed"
    .parameter "isLocked"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 210
    if-nez p1, :cond_1

    .line 211
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[delete] msg is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    if-eqz p3, :cond_2

    .line 216
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[delete] already closed and delete, postpone"

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 217
    goto :goto_0

    .line 220
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->dismissByClick()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[delete] already clicked and delete, postpone"

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 222
    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/business/push/PushManager;->updatePushShownTable(Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 227
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->nerverDismiss()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[delete] not delete because of never dismiss"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_4
    if-eqz p4, :cond_5

    .line 234
    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[delete] screen off or home touched, do nothing"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->dismissByUnlock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v2, "[delete] because of dismiss by unlock"

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/adi/collie/business/push/PushManager;->deleteMsgAsync(Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V

    move v0, v1

    .line 241
    goto :goto_0
.end method

.method public insertMsgAsync(Ljava/lang/String;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V
    .locals 6
    .parameter "json"
    .parameter "insertCallback"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    :try_start_0
    const-class v2, Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/model/push/PushMsg;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .local v1, msg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    if-eqz v1, :cond_0

    .line 167
    const-string v2, "wl"

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getTp()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 168
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getSt()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 170
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->startAdiSync([Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V

    goto :goto_0

    .line 158
    .end local v1           #msg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Lcom/alibaba/fastjson/JSONException;
    sget-object v2, Lcom/alibaba/adi/collie/business/push/PushManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-eqz p2, :cond_0

    .line 161
    invoke-interface {p2}, Lcom/alibaba/adi/collie/business/push/IDelInsCallback;->onError()V

    goto :goto_0

    .line 173
    .end local v0           #e:Lcom/alibaba/fastjson/JSONException;
    .restart local v1       #msg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/alibaba/adi/collie/business/push/PushManager;->doInsertMsgAsync(Lcom/alibaba/adi/collie/model/push/PushMsg;Lcom/alibaba/adi/collie/business/push/IDelInsCallback;)V

    goto :goto_0
.end method

.method public updatePushShownTable(Lcom/alibaba/adi/collie/model/push/PushMsg;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 248
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->limitShowMaxOnce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[delete] showMaxOnce"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushShownTable:Lcom/alibaba/adi/collie/business/push/PushShownTable;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getGid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/push/PushShownTable;->msgExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[delete] update pushShownTable"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushShownTable:Lcom/alibaba/adi/collie/business/push/PushShownTable;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getGid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/business/push/PushShownTable;->updateMsg(Ljava/lang/String;Ljava/lang/String;)Z

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    const-string v1, "[delete] insert pushShownTable"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/adi/collie/business/push/PushManager;->mPushShownTable:Lcom/alibaba/adi/collie/business/push/PushShownTable;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getGid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/adi/collie/business/push/PushShownTable;->insertMsg(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
