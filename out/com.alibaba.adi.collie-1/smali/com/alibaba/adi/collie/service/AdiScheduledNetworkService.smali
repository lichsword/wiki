.class public Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;
.super Landroid/app/Service;
.source "AdiScheduledNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$NetworkHistory;,
        Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;,
        Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;
    }
.end annotation


# static fields
.field private static final INTENT_EXTEA_VALUE_SCHEDULE_JOKE:I = 0xb

.field private static final INTENT_EXTEA_VALUE_SCHEDULE_NEWS:I = 0xa

.field private static final INTENT_EXTRA_KEY_DATA:Ljava/lang/String; = "extra_data"

.field private static final INTENT_EXTRA_KEY_TYPE:Ljava/lang/String; = "extra_type"

.field private static final INTENT_EXTRA_VALUE_BIND:I = 0x1

.field private static final INTENT_EXTRA_VALUE_CANCEL_OPERATION:I = 0x10

.field private static final INTENT_EXTRA_VALUE_CHK_VERSION:I = 0x5

.field private static final INTENT_EXTRA_VALUE_CLEAN_PIC_CACHE:I = 0xf

.field private static final INTENT_EXTRA_VALUE_CLEAN_PUSH_MSG:I = 0x11

.field private static final INTENT_EXTRA_VALUE_GET:I = 0x3

.field private static final INTENT_EXTRA_VALUE_GET_JOKE:I = 0x9

.field private static final INTENT_EXTRA_VALUE_GET_NEWS:I = 0x8

.field private static final INTENT_EXTRA_VALUE_REG:I = 0x4

.field private static final INTENT_EXTRA_VALUE_SCHEDULE:I = 0x6

.field private static final INTENT_EXTRA_VALUE_SYNC:I = 0x2

.field private static final INTENT_EXTRA_VALUE_SYNC_TYPE:I = 0xe

.field private static final INTENT_EXTRA_VALUE_UN_SCHEDULE:I = 0x7

.field private static final INTENT_EXTRA_VALUE_UN_SCHEDULE_JOKE:I = 0xd

.field private static final INTENT_EXTRA_VALUE_UN_SCHEDULE_NEWS:I = 0xc

.field private static final NEWS_JOKE_RETRY_LIMITS:I = 0xa

.field public static final TAG:Ljava/lang/String; = "AdiScheduledNetworkService"

.field private static sLastChkVerTime:J


# instance fields
.field private joke_retry_times:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCleanPicCacheTask:Ljava/lang/Runnable;

.field private mCleanPushMsgTask:Ljava/lang/Runnable;

.field private mFutureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private mGetJokeTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;

.field private mGetNewsTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;

.field private mPendingIntentChkVer:Landroid/app/PendingIntent;

.field private mPendingIntentCleanPicCache:Landroid/app/PendingIntent;

.field private mPendingIntentCleanPushMsg:Landroid/app/PendingIntent;

.field private mPendingIntentGetJoke:Landroid/app/PendingIntent;

.field private mPendingIntentGetNews:Landroid/app/PendingIntent;

.field private mPendingIntentSync:Landroid/app/PendingIntent;

.field private mRegTask:Lcom/alibaba/adi/collie/service/task/RegTask;

.field private mSyncTask:Lcom/alibaba/adi/collie/service/task/SyncTask;

.field private news_retry_times:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->sLastChkVerTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static cancelOperation(Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)V
    .locals 3
    .parameter "operationType"

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_type"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v1, "extra_data"

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    return-void
.end method

.method private cancelScheduled(Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)V
    .locals 2
    .parameter "op"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getFuture(Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 395
    .local v0, future:Ljava/util/concurrent/Future;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 398
    :cond_0
    return-void
.end method

.method public static checkVersion()V
    .locals 5

    .prologue
    .line 167
    sget-wide v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->sLastChkVerTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->sLastChkVerTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 168
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 172
    :cond_1
    return-void
.end method

.method private doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z
    .locals 8
    .parameter "run"
    .parameter "op"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 401
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/NetworkUtil;->networkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    const-string v2, "AdiScheduledNetworkService"

    const-string v3, "there is no network connection at present, skip network operation"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_0
    return v1

    .line 406
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mFutureMap:Ljava/util/Map;

    monitor-enter v3

    .line 407
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getFuture(Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 408
    .local v0, future:Ljava/util/concurrent/Future;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    const-string v1, "AdiScheduledNetworkService"

    .line 410
    const-string v4, "already an network op %s running, skip scheduling the current one"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 409
    invoke-static {v1, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 413
    :cond_1
    const-string v1, "AdiScheduledNetworkService"

    const-string v4, "new network op %s scheduled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v1, Lcom/alibaba/adi/collie/util/ThreadConcurrent;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mFutureMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 406
    .end local v0           #future:Ljava/util/concurrent/Future;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private formatTypeGet([Ljava/lang/String;)[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    .locals 8
    .parameter "typeNames"

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, getTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 209
    array-length v3, p1

    new-array v1, v3, [Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    .line 210
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_1

    .line 219
    .end local v2           #i:I
    :cond_0
    return-object v1

    .line 212
    .restart local v2       #i:I
    :cond_1
    :try_start_0
    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "AdiScheduledNetworkService"

    const-string v4, "%s is not a valid TypGet enum"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, p1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static formatTypeGet([Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 199
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 200
    .local v1, typeNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 203
    return-object v1

    .line 201
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPendingIntentChkVer()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 570
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_type"

    .line 572
    const/4 v3, 0x5

    .line 571
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 574
    sget-object v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->CHK_VER:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    .line 573
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 575
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getPendingIntentCleanPicCache()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 579
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 580
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_type"

    .line 581
    const/16 v3, 0xf

    .line 580
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 583
    sget-object v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->CLEAN_PIC_CACHE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    .line 582
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 584
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getPendingIntentCleanPushMsg()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 588
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_type"

    .line 590
    const/16 v3, 0x11

    .line 589
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 592
    sget-object v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->CLEAN_PUSH_MSG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    .line 591
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 593
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getPendingIntentGet(II)Landroid/app/PendingIntent;
    .locals 4
    .parameter "type"
    .parameter "req"

    .prologue
    .line 598
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 601
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getPendingIntentSync()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 561
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 562
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_type"

    .line 563
    const/4 v3, 0x2

    .line 562
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 565
    sget-object v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->SYNC:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    .line 564
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 566
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private schedule()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->scheduleVerTask()V

    .line 517
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->scheduleCleanPicCache()V

    .line 518
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->scheduleCleanPushMsg()V

    .line 519
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->scheduleGetNews()V

    .line 520
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->scheduleGetJoke()V

    .line 521
    return-void
.end method

.method private scheduleCleanPicCache()V
    .locals 7

    .prologue
    .line 453
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPicCache:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getPendingIntentCleanPicCache()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPicCache:Landroid/app/PendingIntent;

    .line 455
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    .line 456
    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPicCache:Landroid/app/PendingIntent;

    .line 455
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 458
    :cond_0
    return-void
.end method

.method private scheduleCleanPushMsg()V
    .locals 7

    .prologue
    .line 461
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPushMsg:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getPendingIntentCleanPushMsg()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPushMsg:Landroid/app/PendingIntent;

    .line 463
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    .line 464
    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPushMsg:Landroid/app/PendingIntent;

    .line 463
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 466
    :cond_0
    return-void
.end method

.method private scheduleGetJoke()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x2bf20

    .line 492
    const-string v1, "image_funny_joke_data"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/FileUtil;->readStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 493
    .local v7, joke:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    const-string v1, "AdiScheduledNetworkService"

    const-string v4, "image funny & joke cache already exists, no need to schedule"

    invoke-static {v1, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetJoke:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 499
    const-string v1, "AdiScheduledNetworkService"

    const-string v6, "xhh schedule get joke"

    invoke-static {v1, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const/16 v1, 0x9

    .line 502
    sget-object v6, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->GET_JOKE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->ordinal()I

    move-result v6

    .line 501
    invoke-direct {p0, v1, v6}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getPendingIntentGet(II)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetJoke:Landroid/app/PendingIntent;

    .line 503
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 504
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    add-long v2, v8, v4

    .line 505
    .local v2, firstSyncMills:J
    const/4 v1, 0x0

    .line 506
    iget-object v6, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetJoke:Landroid/app/PendingIntent;

    .line 505
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 509
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v2           #firstSyncMills:J
    :cond_1
    const-string v1, "AdiScheduledNetworkService"

    const-string v4, "xhh get joke once"

    invoke-static {v1, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mGetJokeTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;

    sget-object v4, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET_JOKE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    invoke-direct {p0, v1, v4}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    goto :goto_0
.end method

.method private scheduleGetNews()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x2bf20

    .line 469
    const-string v0, "news_data"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/FileUtil;->readStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, news:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    const-string v0, "AdiScheduledNetworkService"

    const-string v1, "news cache already exists, no need to schedule"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetNews:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 476
    const-string v0, "AdiScheduledNetworkService"

    const-string v1, "xhh schedule get news"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/16 v0, 0x8

    .line 479
    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->GET_NEWS:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->ordinal()I

    move-result v1

    .line 478
    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getPendingIntentGet(II)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetNews:Landroid/app/PendingIntent;

    .line 481
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long v2, v0, v4

    .line 482
    .local v2, firstSyncMills:J
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    .line 483
    iget-object v6, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetNews:Landroid/app/PendingIntent;

    .line 482
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 486
    .end local v2           #firstSyncMills:J
    :cond_1
    const-string v0, "AdiScheduledNetworkService"

    const-string v1, "xhh get news once"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mGetNewsTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET_NEWS:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    goto :goto_0
.end method

.method private scheduleSyncTask()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x1b7740

    .line 423
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentSync:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 424
    const-string v0, "AdiScheduledNetworkService"

    const-string v1, "xhh schedule sync"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-wide/16 v2, -0x1

    .line 427
    .local v2, firstSyncMills:J
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$NetworkHistory;->getLastSyncTime()Ljava/util/Date;

    move-result-object v7

    .line 428
    .local v7, lastSyncTime:Ljava/util/Date;
    if-eqz v7, :cond_0

    .line 429
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long v2, v0, v4

    .line 433
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getPendingIntentSync()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentSync:Landroid/app/PendingIntent;

    .line 434
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    .line 435
    iget-object v6, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentSync:Landroid/app/PendingIntent;

    .line 434
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 440
    .end local v2           #firstSyncMills:J
    .end local v7           #lastSyncTime:Ljava/util/Date;
    :goto_1
    return-void

    .line 431
    .restart local v2       #firstSyncMills:J
    .restart local v7       #lastSyncTime:Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long v2, v0, v4

    goto :goto_0

    .line 437
    .end local v2           #firstSyncMills:J
    .end local v7           #lastSyncTime:Ljava/util/Date;
    :cond_1
    const-string v0, "AdiScheduledNetworkService"

    const-string v1, "xhh sync once"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mSyncTask:Lcom/alibaba/adi/collie/service/task/SyncTask;

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_SYNC:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    goto :goto_1
.end method

.method private scheduleVerTask()V
    .locals 7

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentChkVer:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getPendingIntentChkVer()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentChkVer:Landroid/app/PendingIntent;

    .line 447
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    .line 448
    iget-object v6, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentChkVer:Landroid/app/PendingIntent;

    .line 447
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 450
    :cond_0
    return-void
.end method

.method public static startAdiGet([Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V
    .locals 4
    .parameter "types"

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_type"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_1

    .line 141
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "TypeGet[] should not be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_1
    invoke-static {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->formatTypeGet([Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, typeNames:[Ljava/lang/String;
    const-string v2, "extra_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v2, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    return-void
.end method

.method public static startAdiSync()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 108
    return-void
.end method

.method public static startAdiSync([Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V
    .locals 4
    .parameter "types"

    .prologue
    .line 111
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_1

    .line 112
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->startAdiSync()V

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v3, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_type"

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-static {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->formatTypeGet([Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)[Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, typeNames:[Ljava/lang/String;
    const-string v2, "extra_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v2, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static startBindToAdi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "baseContext"
    .parameter "accountType"

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v1, "extra_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    return-void
.end method

.method public static triggerSchedule()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 196
    return-void
.end method

.method public static triggerScheduleGetJoke()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_type"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    return-void
.end method

.method public static triggerScheduleGetNews()V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    return-void
.end method

.method public static triggerUnSchedule()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 187
    return-void
.end method

.method public static triggerUnScheduleGetJoke()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_type"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 178
    return-void
.end method

.method public static triggerUnScheduleGetNews()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-class v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_type"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/adi/collie/CoreApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 164
    return-void
.end method

.method private unSchedule()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentSync:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentSync:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 526
    iput-object v2, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentSync:Landroid/app/PendingIntent;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentChkVer:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentChkVer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 530
    iput-object v2, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentChkVer:Landroid/app/PendingIntent;

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPicCache:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPicCache:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 534
    iput-object v2, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPicCache:Landroid/app/PendingIntent;

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPushMsg:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPushMsg:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 538
    iput-object v2, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPushMsg:Landroid/app/PendingIntent;

    .line 540
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->unScheduleGetJoke()V

    .line 541
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->unScheduleGetNews()V

    .line 542
    return-void
.end method

.method private unScheduleGetJoke()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetJoke:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "AdiScheduledNetworkService"

    const-string v1, "get joke schedule canceled"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetJoke:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetJoke:Landroid/app/PendingIntent;

    .line 550
    :cond_0
    return-void
.end method

.method private unScheduleGetNews()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetNews:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "AdiScheduledNetworkService"

    const-string v1, "get news schedule canceled"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetNews:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetNews:Landroid/app/PendingIntent;

    .line 558
    :cond_0
    return-void
.end method


# virtual methods
.method public getFuture(Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter "operationType"

    .prologue
    .line 384
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mFutureMap:Ljava/util/Map;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mFutureMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mFutureMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    monitor-exit v1

    .line 388
    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 229
    new-instance v0, Lcom/alibaba/adi/collie/util/PerfUtil;

    const-string v1, "NetworkService"

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/util/PerfUtil;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, perfUtil:Lcom/alibaba/adi/collie/util/PerfUtil;
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 231
    iput v2, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->news_retry_times:I

    .line 232
    iput v2, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->joke_retry_times:I

    .line 233
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$NetworkHistory;->getLastCheckVersionTime()J

    move-result-wide v1

    sput-wide v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->sLastChkVerTime:J

    .line 234
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 235
    iput-object v3, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentSync:Landroid/app/PendingIntent;

    .line 236
    iput-object v3, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentChkVer:Landroid/app/PendingIntent;

    .line 237
    iput-object v3, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetNews:Landroid/app/PendingIntent;

    .line 238
    iput-object v3, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentGetJoke:Landroid/app/PendingIntent;

    .line 239
    iput-object v3, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPicCache:Landroid/app/PendingIntent;

    .line 240
    iput-object v3, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mPendingIntentCleanPushMsg:Landroid/app/PendingIntent;

    .line 242
    new-instance v1, Lcom/alibaba/adi/collie/service/task/RegTask;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/service/task/RegTask;-><init>()V

    iput-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mRegTask:Lcom/alibaba/adi/collie/service/task/RegTask;

    .line 243
    new-instance v1, Lcom/alibaba/adi/collie/service/task/SyncTask;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/service/task/SyncTask;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mSyncTask:Lcom/alibaba/adi/collie/service/task/SyncTask;

    .line 244
    new-instance v1, Lcom/alibaba/adi/collie/service/task/AppGetTask;

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    const-string v3, "news_data"

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/adi/collie/service/task/AppGetTask;-><init>(Landroid/content/Context;Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mGetNewsTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;

    .line 245
    new-instance v1, Lcom/alibaba/adi/collie/service/task/AppGetTask;

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->FUNNY_JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    const-string v3, "image_funny_joke_data"

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/adi/collie/service/task/AppGetTask;-><init>(Landroid/content/Context;Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mGetJokeTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;

    .line 246
    new-instance v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$1;-><init>(Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mCleanPicCacheTask:Ljava/lang/Runnable;

    .line 257
    new-instance v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$2;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$2;-><init>(Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mCleanPushMsgTask:Ljava/lang/Runnable;

    .line 263
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mFutureMap:Ljava/util/Map;

    .line 264
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->UNREGISTER:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    if-ne v1, v2, :cond_0

    .line 265
    iget-object v1, p0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mRegTask:Lcom/alibaba/adi/collie/service/task/RegTask;

    sget-object v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_REG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    invoke-direct {p0, v1, v2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->schedule()V

    .line 268
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/PerfUtil;->close()V

    .line 269
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 371
    sget-wide v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->sLastChkVerTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 372
    sget-wide v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->sLastChkVerTime:J

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$NetworkHistory;->setLastCheckVerionTime(J)V

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->unSchedule()V

    .line 375
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 376
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 380
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 381
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 18
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 273
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 274
    if-eqz p1, :cond_0

    .line 275
    const-string v13, "extra_type"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 276
    .local v4, extraType:I
    packed-switch v4, :pswitch_data_0

    .line 366
    .end local v4           #extraType:I
    :cond_0
    :goto_0
    const/4 v13, 0x1

    return v13

    .line 278
    .restart local v4       #extraType:I
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->schedule()V

    goto :goto_0

    .line 281
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->unSchedule()V

    goto :goto_0

    .line 284
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mRegTask:Lcom/alibaba/adi/collie/service/task/RegTask;

    sget-object v14, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_REG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    goto :goto_0

    .line 287
    :pswitch_3
    const-string v13, "extra_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, accountType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 289
    .local v2, bindTimerTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    const-string v13, "taobao"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 290
    const-string v13, "weibo"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 291
    :cond_1
    const-string v13, "AdiScheduledNetworkService"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "start binding account %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v1, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v2, Lcom/alibaba/adi/collie/service/task/BindTask;

    .end local v2           #bindTimerTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/alibaba/adi/collie/service/task/BindTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    .restart local v2       #bindTimerTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    sget-object v13, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_BIND:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    goto :goto_0

    .line 295
    :cond_2
    const-string v13, "AdiScheduledNetworkService"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "invalid account type %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v1, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #bindTimerTask:Lcom/alibaba/adi/collie/service/task/BindTask;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mSyncTask:Lcom/alibaba/adi/collie/service/task/SyncTask;

    sget-object v14, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_SYNC:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    goto :goto_0

    .line 303
    :pswitch_5
    const-string v13, "extra_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, syncTypeNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->formatTypeGet([Ljava/lang/String;)[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    move-result-object v11

    .line 305
    .local v11, syncTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    if-eqz v11, :cond_0

    .line 306
    new-instance v9, Lcom/alibaba/adi/collie/service/task/SyncTask;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v11}, Lcom/alibaba/adi/collie/service/task/SyncTask;-><init>(Landroid/content/Context;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V

    .line 307
    .local v9, syncTask:Lcom/alibaba/adi/collie/service/task/SyncTask;
    sget-object v13, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_SYNC:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    goto/16 :goto_0

    .line 311
    .end local v9           #syncTask:Lcom/alibaba/adi/collie/service/task/SyncTask;
    .end local v10           #syncTypeNames:[Ljava/lang/String;
    .end local v11           #syncTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    :pswitch_6
    const-string v13, "extra_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, getTypeNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->formatTypeGet([Ljava/lang/String;)[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    move-result-object v7

    .line 313
    .local v7, getTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    if-eqz v7, :cond_0

    .line 314
    new-instance v5, Lcom/alibaba/adi/collie/service/task/GetTask;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/alibaba/adi/collie/service/task/GetTask;-><init>(Landroid/content/Context;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V

    .line 315
    .local v5, getTask:Lcom/alibaba/adi/collie/service/task/GetTask;
    sget-object v13, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    goto/16 :goto_0

    .line 319
    .end local v5           #getTask:Lcom/alibaba/adi/collie/service/task/GetTask;
    .end local v6           #getTypeNames:[Ljava/lang/String;
    .end local v7           #getTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    :pswitch_7
    new-instance v12, Lcom/alibaba/adi/collie/service/task/VersionCheckTask;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/adi/collie/service/task/VersionCheckTask;-><init>(Landroid/content/Context;)V

    .line 320
    .local v12, versionCheckTask:Lcom/alibaba/adi/collie/service/task/VersionCheckTask;
    sget-object v13, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_CHK_VERSION:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sput-wide v13, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->sLastChkVerTime:J

    goto/16 :goto_0

    .line 325
    .end local v12           #versionCheckTask:Lcom/alibaba/adi/collie/service/task/VersionCheckTask;
    :pswitch_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->news_retry_times:I

    const/16 v14, 0xa

    if-ge v13, v14, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mGetNewsTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;

    sget-object v14, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET_NEWS:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    .line 327
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->news_retry_times:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->news_retry_times:I

    goto/16 :goto_0

    .line 331
    :pswitch_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->joke_retry_times:I

    const/16 v14, 0xa

    if-ge v13, v14, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mGetJokeTask:Lcom/alibaba/adi/collie/service/task/AppGetTask;

    sget-object v14, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET_JOKE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    .line 333
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->joke_retry_times:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->joke_retry_times:I

    goto/16 :goto_0

    .line 337
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->scheduleGetNews()V

    goto/16 :goto_0

    .line 340
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->scheduleGetJoke()V

    goto/16 :goto_0

    .line 343
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->unScheduleGetNews()V

    goto/16 :goto_0

    .line 346
    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->unScheduleGetJoke()V

    goto/16 :goto_0

    .line 349
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mCleanPicCacheTask:Ljava/lang/Runnable;

    sget-object v14, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_CLEAN_PIC_CACHE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    goto/16 :goto_0

    .line 352
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->mCleanPushMsgTask:Ljava/lang/Runnable;

    sget-object v14, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_CLEAN_PUSH_MSG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->doNetOp(Ljava/lang/Runnable;Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)Z

    goto/16 :goto_0

    .line 355
    :pswitch_10
    const-string v13, "extra_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 356
    .local v8, opType:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 358
    :try_start_0
    invoke-static {v8}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->cancelScheduled(Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 359
    :catch_0
    move-exception v3

    .line 360
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v13, "AdiScheduledNetworkService"

    const-string v14, "unable to stop op, \'%s\' is not a valid type"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_5
        :pswitch_e
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method
