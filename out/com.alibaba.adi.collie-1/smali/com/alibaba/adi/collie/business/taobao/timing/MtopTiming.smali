.class public Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;
.super Ljava/lang/Object;
.source "MtopTiming.java"


# static fields
.field private static sInstance:Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDeltaInSeconds()J
    .locals 3

    .prologue
    .line 52
    const-string v0, "mtop_timing_deltaInSec"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->sInstance:Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->sInstance:Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;-><init>()V

    sput-object v0, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->sInstance:Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->sInstance:Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setDeltaInSeconds(J)V
    .locals 1
    .parameter "deltaInSec"

    .prologue
    .line 56
    const-string v0, "mtop_timing_deltaInSec"

    invoke-static {v0, p1, p2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;J)V

    .line 57
    return-void
.end method


# virtual methods
.method public getMtopCorrectedTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 29
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 30
    .local v0, clientTimeInSec:J
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->getDeltaInSeconds()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public syncServerTime()V
    .locals 13

    .prologue
    .line 37
    new-instance v3, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTimingConnectHelper;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTimingConnectHelper;-><init>()V

    .line 38
    .local v3, connectHelper:Lcom/alibaba/adi/collie/business/taobao/timing/MtopTimingConnectHelper;
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 39
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 40
    .local v1, clientTime:J
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v9

    invoke-virtual {v9, v3, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v6

    .line 41
    .local v6, ret:Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v9, v6, Ljava/lang/Long;

    if-eqz v9, :cond_0

    .line 42
    check-cast v6, Ljava/lang/Long;

    .end local v6           #ret:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 43
    .local v7, serverTime:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_0

    .line 45
    sub-long v9, v7, v1

    const-wide/16 v11, 0x3e8

    div-long v4, v9, v11

    .line 46
    .local v4, deltaInSec:J
    invoke-direct {p0, v4, v5}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->setDeltaInSeconds(J)V

    .line 49
    .end local v4           #deltaInSec:J
    .end local v7           #serverTime:J
    :cond_0
    return-void
.end method
