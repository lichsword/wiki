.class public abstract Lorg/android/agoo/client/BaseIntentService;
.super Lorg/android/agoo/client/AgooIntentService;
.source "BaseIntentService.java"


# static fields
.field private static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field private static final LOCK:Ljava/lang/Object; = null

.field private static final MAX_BACKOFF_MS:I = 0x36ee80

.field private static final MESSAGE_IS_REPORT:Ljava/lang/String; = "report"

.field private static final MESSAGE_TIME:Ljava/lang/String; = "time"

.field private static final TAG:Ljava/lang/String; = "BaseIntentService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "AGOO_LIB"

.field private static final sRandom:Ljava/util/Random;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private volatile appKey:Ljava/lang/String;

.field private volatile appSecret:Ljava/lang/String;

.field private volatile electionService:Lorg/android/agoo/service/IElectionService;

.field private volatile isMessageServiceConnected:Z

.field private mElectionConnection:Landroid/content/ServiceConnection;

.field private mMessageConnection:Landroid/content/ServiceConnection;

.field private volatile messageService:Lorg/android/agoo/service/IMessageService;

.field private volatile synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

.field private volatile ttId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/android/agoo/client/BaseIntentService;

    sput-object v0, Lorg/android/agoo/client/BaseIntentService;->LOCK:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/android/agoo/client/BaseIntentService;->sRandom:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    const-string v0, "AgooDynamicSenderIds"

    invoke-direct {p0, v0}, Lorg/android/agoo/client/AgooIntentService;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object v1, p0, Lorg/android/agoo/client/BaseIntentService;->synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

    .line 684
    iput-object v1, p0, Lorg/android/agoo/client/BaseIntentService;->electionService:Lorg/android/agoo/service/IElectionService;

    .line 685
    new-instance v0, Lorg/android/agoo/client/BaseIntentService$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/client/BaseIntentService$1;-><init>(Lorg/android/agoo/client/BaseIntentService;)V

    iput-object v0, p0, Lorg/android/agoo/client/BaseIntentService;->mElectionConnection:Landroid/content/ServiceConnection;

    .line 816
    iput-boolean v2, p0, Lorg/android/agoo/client/BaseIntentService;->isMessageServiceConnected:Z

    .line 817
    iput-object v1, p0, Lorg/android/agoo/client/BaseIntentService;->messageService:Lorg/android/agoo/service/IMessageService;

    .line 818
    new-instance v0, Lorg/android/agoo/client/BaseIntentService$3;

    invoke-direct {v0, p0}, Lorg/android/agoo/client/BaseIntentService$3;-><init>(Lorg/android/agoo/client/BaseIntentService;)V

    iput-object v0, p0, Lorg/android/agoo/client/BaseIntentService;->mMessageConnection:Landroid/content/ServiceConnection;

    .line 69
    invoke-direct {p0}, Lorg/android/agoo/client/BaseIntentService;->initClinet()V

    .line 70
    invoke-virtual {p0, v2}, Lorg/android/agoo/client/BaseIntentService;->setIntentRedelivery(Z)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lorg/android/agoo/client/BaseIntentService;)Lorg/android/agoo/service/IElectionService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/android/agoo/client/BaseIntentService;->electionService:Lorg/android/agoo/service/IElectionService;

    return-object v0
.end method

.method static synthetic access$002(Lorg/android/agoo/client/BaseIntentService;Lorg/android/agoo/service/IElectionService;)Lorg/android/agoo/service/IElectionService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lorg/android/agoo/client/BaseIntentService;->electionService:Lorg/android/agoo/service/IElectionService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/android/agoo/client/BaseIntentService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->closeElection(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lorg/android/agoo/client/BaseIntentService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/android/agoo/client/BaseIntentService;->hasAgooSuperClass()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lorg/android/agoo/client/BaseIntentService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lorg/android/agoo/client/BaseIntentService;->isMessageServiceConnected:Z

    return p1
.end method

.method static synthetic access$402(Lorg/android/agoo/client/BaseIntentService;Lorg/android/agoo/service/IMessageService;)Lorg/android/agoo/service/IMessageService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lorg/android/agoo/client/BaseIntentService;->messageService:Lorg/android/agoo/service/IMessageService;

    return-object p1
.end method

.method static synthetic access$500(Lorg/android/agoo/client/BaseIntentService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->pingMessage(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lorg/android/agoo/client/BaseIntentService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->closePingMessage(Landroid/content/Context;)V

    return-void
.end method

.method private checkRegister(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 552
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, appKey:Ljava/lang/String;
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, ttId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    :cond_0
    :goto_0
    return v3

    .line 557
    :cond_1
    iput-object v0, p0, Lorg/android/agoo/client/BaseIntentService;->appKey:Ljava/lang/String;

    .line 558
    iput-object v2, p0, Lorg/android/agoo/client/BaseIntentService;->ttId:Ljava/lang/String;

    .line 559
    iget-object v4, p0, Lorg/android/agoo/client/BaseIntentService;->synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v4, v0}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setDefaultAppkey(Ljava/lang/String;)V

    .line 560
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, appSecret:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lorg/android/agoo/client/AgooSettings;->isAgooSoSecurityMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 564
    :cond_2
    iput-object v1, p0, Lorg/android/agoo/client/BaseIntentService;->appSecret:Ljava/lang/String;

    .line 565
    iget-object v3, p0, Lorg/android/agoo/client/BaseIntentService;->synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v3, v1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setDefaultAppSecret(Ljava/lang/String;)V

    .line 566
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private closeElection(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 768
    if-eqz p1, :cond_0

    .line 770
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/client/BaseIntentService;->mElectionConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 771
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closePingMessage(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 867
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/client/BaseIntentService;->mMessageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_0
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "BaseIntentService"

    const-string v2, "closeElection"

    invoke-static {v1, v2, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private varargs commandByChannel(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "key"
    .parameter "values"

    .prologue
    .line 173
    if-eqz p3, :cond_0

    const/4 v3, 0x2

    array-length v4, p3

    if-gt v3, v4, :cond_0

    .line 174
    const-wide/16 v1, -0x1

    .line 176
    .local v1, uptime:J
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p3, v3

    const-string v4, "multiplex"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lorg/android/agoo/config/Config;->hasMultiplex(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    const-string v3, "BaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleXCommand["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Lorg/android/agoo/config/Config;->setMultiplex(Landroid/content/Context;ZJ)V

    .line 179
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->retryElection(Landroid/content/Context;)V

    .line 199
    .end local v1           #uptime:J
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v1       #uptime:J
    :cond_1
    const/4 v3, 0x1

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 183
    const/4 v3, 0x0

    aget-object v3, p3, v3

    const-string v4, "single"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lorg/android/agoo/config/Config;->hasMultiplex(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 185
    const-string v3, "BaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleXCommand["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2}, Lorg/android/agoo/config/Config;->setMultiplex(Landroid/content/Context;ZJ)V

    .line 187
    invoke-direct {p0}, Lorg/android/agoo/client/BaseIntentService;->hasAgooSuperClass()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    const-string v3, "BaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enabledService---->["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getAgooService()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getAgooService()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/android/agoo/util/ReceiverUtil;->enabledService(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    :cond_2
    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getAgooService()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/android/agoo/util/ServiceUtil;->startAgooService(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "BaseIntentService"

    const-string v4, "commandByChannel"

    invoke-static {v3, v4, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private doRegister(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 611
    iget-object v4, p0, Lorg/android/agoo/client/BaseIntentService;->appKey:Ljava/lang/String;

    iget-object v5, p0, Lorg/android/agoo/client/BaseIntentService;->appSecret:Ljava/lang/String;

    iget-object v6, p0, Lorg/android/agoo/client/BaseIntentService;->ttId:Ljava/lang/String;

    invoke-static {p1, v4, v5, v6}, Lorg/android/agoo/client/DeviceService;->getRegistrationId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, deviceId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 613
    const-string v4, "BaseIntentService"

    const-string v5, "doRegister---deviceId---->[null]"

    invoke-static {v4, v5}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v4, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, p1, v4}, Lorg/android/agoo/client/BaseIntentService;->handleRegisterFailed(Landroid/content/Context;Ljava/lang/String;)V

    .line 642
    :goto_0
    return-void

    .line 617
    :cond_0
    new-instance v2, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v2}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 618
    .local v2, request:Lorg/android/agoo/net/mtop/MtopRequest;
    const-string v4, "mtop.push.device.register"

    invoke-virtual {v2, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 619
    const-string v4, "4.0"

    invoke-virtual {v2, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 620
    iget-object v4, p0, Lorg/android/agoo/client/BaseIntentService;->ttId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 622
    const-string v4, "device_id"

    invoke-virtual {v2, v4, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    const-string v4, "app_version"

    invoke-static {p1}, Lorg/android/agoo/util/AppUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 624
    const-string v4, "sdk_version"

    invoke-static {}, Lorg/android/agoo/client/AgooSettings;->getAgooReleaseTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 625
    iget-object v4, p0, Lorg/android/agoo/client/BaseIntentService;->synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-static {p1}, Lorg/android/agoo/client/AgooSettings;->getPullUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 626
    iget-object v4, p0, Lorg/android/agoo/client/BaseIntentService;->synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v4, p1, v2}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v3

    .line 627
    .local v3, result:Lorg/android/agoo/net/mtop/Result;
    const-string v4, "BaseIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register--->[result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {v3}, Lorg/android/agoo/net/mtop/Result;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 629
    invoke-virtual {v3}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v0, v4}, Lorg/android/agoo/client/BaseIntentService;->handleRegisterSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {v3}, Lorg/android/agoo/net/mtop/Result;->getRetCode()Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, errorId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 634
    invoke-static {p1, v1}, Lorg/android/agoo/log/UTHelper;->registerErrorLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 635
    const-string v4, "ERRCODE_AUTH_REJECT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 636
    const-string v4, "BaseIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doRegister---->["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-static {p1}, Lorg/android/agoo/config/Config;->disableApp(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 641
    :cond_2
    const-string v4, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, p1, v4}, Lorg/android/agoo/client/BaseIntentService;->handleRegisterFailed(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private doUnRegister(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 577
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->checkRegister(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, devicetoken:Ljava/lang/String;
    new-instance v1, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 580
    .local v1, request:Lorg/android/agoo/net/mtop/MtopRequest;
    const-string v3, "mtop.push.device.unregister"

    invoke-virtual {v1, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 581
    const-string v3, "4.0"

    invoke-virtual {v1, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 582
    iget-object v3, p0, Lorg/android/agoo/client/BaseIntentService;->ttId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v1, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 584
    const-string v3, "app_version"

    invoke-static {p1}, Lorg/android/agoo/util/AppUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    const-string v3, "sdk_version"

    invoke-static {}, Lorg/android/agoo/client/AgooSettings;->getAgooReleaseTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    const-string v3, "app_pack"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    iget-object v3, p0, Lorg/android/agoo/client/BaseIntentService;->synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-static {p1}, Lorg/android/agoo/client/AgooSettings;->getPullUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 588
    iget-object v3, p0, Lorg/android/agoo/client/BaseIntentService;->synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v3, p1, v1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v2

    .line 589
    .local v2, result:Lorg/android/agoo/net/mtop/Result;
    const-string v3, "BaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregister--->[server result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .end local v0           #devicetoken:Ljava/lang/String;
    .end local v1           #request:Lorg/android/agoo/net/mtop/MtopRequest;
    .end local v2           #result:Lorg/android/agoo/net/mtop/Result;
    :cond_0
    return-void
.end method

.method private doUninstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "uninstallPack"

    .prologue
    .line 595
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->checkRegister(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, devicetoken:Ljava/lang/String;
    new-instance v1, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 598
    .local v1, request:Lorg/android/agoo/net/mtop/MtopRequest;
    const-string v3, "mtop.push.device.uninstall"

    invoke-virtual {v1, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 599
    const-string v3, "4.0"

    invoke-virtual {v1, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lorg/android/agoo/client/BaseIntentService;->ttId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/android/agoo/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 602
    const-string v3, "app_version"

    invoke-static {p1}, Lorg/android/agoo/util/AppUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    const-string v3, "sdk_version"

    invoke-static {}, Lorg/android/agoo/client/AgooSettings;->getAgooReleaseTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 604
    const-string v3, "app_pack"

    invoke-virtual {v1, v3, p2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    iget-object v3, p0, Lorg/android/agoo/client/BaseIntentService;->synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-static {p1}, Lorg/android/agoo/client/AgooSettings;->getPullUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 606
    iget-object v3, p0, Lorg/android/agoo/client/BaseIntentService;->synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

    invoke-interface {v3, p1, v1}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;

    move-result-object v2

    .line 607
    .local v2, result:Lorg/android/agoo/net/mtop/Result;
    const-string v3, "BaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstall--->[result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/android/agoo/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .end local v0           #devicetoken:Ljava/lang/String;
    .end local v1           #request:Lorg/android/agoo/net/mtop/MtopRequest;
    .end local v2           #result:Lorg/android/agoo/net/mtop/Result;
    :cond_0
    return-void
.end method

.method private handleAddPackage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->checkRegister(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const-string v0, "BaseIntentService"

    const-string v1, "handleAddPackage---->[appkey or appSecret ===null]"

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    const-string v0, "BaseIntentService"

    const-string v1, "handleAddPackage---->[devicetoken ===null]"

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->retryElection(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private varargs handleCommandSwitch(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "values"

    .prologue
    .line 166
    const-string v0, "channel"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/client/BaseIntentService;->commandByChannel(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method private handleDisableCurrentPack(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 681
    invoke-static {p1}, Lorg/android/agoo/config/Config;->disableApp(Landroid/content/Context;)V

    .line 682
    return-void
.end method

.method private handleElection(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 386
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 387
    const-string v13, "BaseIntentService"

    const-string v14, "handleElection---->[devicetoken == null]"

    invoke-static {v13, v14}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/config/Config;->hasDisableApp(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 391
    const-string v13, "BaseIntentService"

    const-string v14, "handleElection--->[app:disable]"

    invoke-static {v13, v14}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :catch_0
    move-exception v13

    goto :goto_0

    .line 394
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/config/Config;->hasMultiplex(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 395
    const-string v13, "BaseIntentService"

    const-string v14, "handleElection--->[channel:single]"

    invoke-static {v13, v14}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_3
    const-string v13, "election_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, electionType:Ljava/lang/String;
    const-string v13, "election_notice"

    invoke-static {v5, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 401
    const-string v13, "election_result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/android/agoo/service/ElectionService$ElectionResult;

    .line 403
    .local v3, electionResult:Lorg/android/agoo/service/ElectionService$ElectionResult;
    invoke-virtual {v3}, Lorg/android/agoo/service/ElectionService$ElectionResult;->getSudoMap()Ljava/util/HashMap;

    move-result-object v10

    .line 404
    .local v10, sudoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Lorg/android/agoo/service/ElectionService$ElectionResult;->getTimeout()J

    move-result-wide v11

    .line 405
    .local v11, timeout:J
    invoke-virtual {v3}, Lorg/android/agoo/service/ElectionService$ElectionResult;->getElectionSource()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, electionSource:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 407
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, currentPack:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, sudo:Ljava/lang/String;
    const/4 v1, 0x0

    .line 409
    .local v1, clientPack:Ljava/lang/String;
    const/4 v6, 0x0

    .line 410
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 411
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v6, Ljava/util/Map$Entry;

    .line 412
    .restart local v6       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #clientPack:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 413
    .restart local v1       #clientPack:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #sudo:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 414
    .restart local v9       #sudo:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 415
    move-object/from16 v0, p1

    invoke-static {v0, v9, v11, v12, v4}, Lorg/android/agoo/config/Config;->setSudo(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 416
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v9}, Lorg/android/agoo/client/BaseIntentService;->restart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    .end local v1           #clientPack:Ljava/lang/String;
    .end local v2           #currentPack:Ljava/lang/String;
    .end local v3           #electionResult:Lorg/android/agoo/service/ElectionService$ElectionResult;
    .end local v4           #electionSource:Ljava/lang/String;
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9           #sudo:Ljava/lang/String;
    .end local v10           #sudoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #timeout:J
    :cond_5
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 424
    .local v8, retryIntent:Landroid/content/Intent;
    const-string v13, "org.agoo.android.intent.action.ELECTION_V2"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 426
    iget-object v13, p0, Lorg/android/agoo/client/BaseIntentService;->mElectionConnection:Landroid/content/ServiceConnection;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v13, v14}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private handleError(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 718
    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, errorId:Ljava/lang/String;
    const-string v1, "ERROR_NEED_ELECTION"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->retryElection(Landroid/content/Context;)V

    .line 744
    :goto_0
    return-void

    .line 723
    :cond_0
    const-string v1, "ERRCODE_AUTH_REJECT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->handleDisableCurrentPack(Landroid/content/Context;)V

    .line 725
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->retryElection(Landroid/content/Context;)V

    goto :goto_0

    .line 728
    :cond_1
    const-string v1, "ERROR_DEVICETOKEN_NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 729
    const-string v1, "ERROR_DEVICETOKEN_NULL"

    invoke-static {p1, v1}, Lorg/android/agoo/log/UTHelper;->sysFileErrorLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 730
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->internalRegister(Landroid/content/Context;)V

    goto :goto_0

    .line 733
    :cond_2
    const-string v1, "ERROR_NEED_REGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 734
    const-string v1, "ERROR_NEED_REGISTER"

    invoke-static {p1, v1}, Lorg/android/agoo/log/UTHelper;->sysFileErrorLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 736
    :cond_3
    const-string v1, "ERROR_APPKEY_NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ERROR_APPSECRET_NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ERROR_TTID_NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 739
    :cond_4
    const-string v1, "APPKEY_OR_SECRET_IS_NULL"

    invoke-static {p1, v1}, Lorg/android/agoo/log/UTHelper;->sysFileErrorLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/client/BaseIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :cond_5
    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/client/BaseIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleLocalMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, messageId:Ljava/lang/String;
    invoke-static {p1}, Lorg/android/agoo/client/MessageService;->getSingleton(Landroid/content/Context;)Lorg/android/agoo/client/MessageService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/android/agoo/client/MessageService;->notice(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method private handleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 305
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->shouldProcessMessage(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-static {p1}, Lorg/android/agoo/config/Config;->hasDisableApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    const-string v1, "BaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]--->[disable]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_1
    const-string v1, "local"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 313
    .local v0, hasLocal:Z
    if-eqz v0, :cond_2

    .line 314
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->handleLocalMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->handleRemoteMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleRegister(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->checkRegister(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    const-string v0, "BaseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRegister["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--->[appkey==null,appSecret==nullttid,ttid==null]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->handleDisableCurrentPack(Landroid/content/Context;)V

    .line 672
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    const-string v0, "BaseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRegister["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--->[deviceToken==null]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {p1}, Lorg/android/agoo/config/Config;->enableApp(Landroid/content/Context;)V

    .line 662
    invoke-static {p1}, Lorg/android/agoo/util/ChannelUtil;->checkOtherService(Landroid/content/Context;)V

    .line 663
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->doRegister(Landroid/content/Context;)V

    goto :goto_0

    .line 666
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/android/agoo/config/Config;->hasDisableApp(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    const-string v0, "BaseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRegister["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--->[disable]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_2
    invoke-static {p1}, Lorg/android/agoo/util/ReceiverUtil;->rebootReceiver(Landroid/content/Context;)V

    .line 671
    invoke-direct {p0}, Lorg/android/agoo/client/BaseIntentService;->onPingMessage()V

    goto :goto_0
.end method

.method private handleRegisterCall(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 570
    const-string v1, "registration"

    invoke-static {p1, v1}, Lorg/android/agoo/client/IntentHelper;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 572
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 574
    return-void
.end method

.method private handleRegisterFailed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 500
    :try_start_0
    const-string v7, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 501
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 502
    .local v4, retry:Z
    if-eqz v4, :cond_1

    .line 503
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getBackoff(Landroid/content/Context;)I

    move-result v1

    .line 504
    .local v1, backoffTimeMs:I
    div-int/lit8 v7, v1, 0x2

    sget-object v8, Lorg/android/agoo/client/BaseIntentService;->sRandom:Ljava/util/Random;

    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int v2, v7, v8

    .line 505
    .local v2, nextAttempt:I
    const-string v7, "BaseIntentService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registration retry--->[nextAttempt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|backoffTimeMs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v7, "register_retry"

    invoke-static {p1, v7}, Lorg/android/agoo/client/IntentHelper;->createComandIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 510
    .local v5, retryIntent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 514
    .local v6, retryPendingIntent:Landroid/app/PendingIntent;
    const-string v7, "alarm"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 516
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v7, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, v2

    add-long/2addr v8, v10

    invoke-virtual {v0, v7, v8, v9, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 519
    const v7, 0x36ee80

    if-ge v1, v7, :cond_0

    .line 520
    mul-int/lit8 v7, v1, 0x2

    invoke-static {p1, v7}, Lorg/android/agoo/config/Config;->setBackoff(Landroid/content/Context;I)V

    .line 533
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #backoffTimeMs:I
    .end local v2           #nextAttempt:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #retry:Z
    .end local v5           #retryIntent:Landroid/content/Intent;
    .end local v6           #retryPendingIntent:Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 524
    .restart local v4       #retry:Z
    :cond_1
    const-string v7, "BaseIntentService"

    const-string v8, "Not retrying failed operation"

    invoke-static {v7, v8}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    .end local v4           #retry:Z
    :catch_0
    move-exception v7

    goto :goto_0

    .line 528
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private handleRegisterSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "regId"
    .parameter "content"

    .prologue
    .line 537
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 538
    .local v1, json:Lorg/json/JSONObject;
    const-string v2, "BaseIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRegisterSuccess--->["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {p1}, Lorg/android/agoo/config/Config;->resetBackoff(Landroid/content/Context;)V

    .line 540
    invoke-static {p1, p2}, Lorg/android/agoo/config/Config;->setDeviceToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 541
    invoke-static {p1}, Lorg/android/agoo/config/Config;->enableApp(Landroid/content/Context;)V

    .line 542
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->handleRegisterCall(Landroid/content/Context;)V

    .line 543
    invoke-static {p1}, Lorg/android/agoo/log/UTHelper;->register(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v1           #json:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, p1, v2}, Lorg/android/agoo/client/BaseIntentService;->handleRegisterFailed(Landroid/content/Context;Ljava/lang/String;)V

    .line 547
    const-string v2, "data_parse_error"

    invoke-static {p1, v2}, Lorg/android/agoo/log/UTHelper;->registerErrorLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRemoteMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 208
    invoke-direct/range {p0 .. p1}, Lorg/android/agoo/client/BaseIntentService;->pingMessage(Landroid/content/Context;)V

    .line 209
    const-string v3, "x_command_type"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 210
    .local v24, xType:Z
    if-eqz v24, :cond_1

    .line 211
    invoke-direct/range {p0 .. p2}, Lorg/android/agoo/client/BaseIntentService;->handleXCommand(Landroid/content/Context;Landroid/content/Intent;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 215
    const-string v3, "BaseIntentService"

    const-string v9, "handleRemoteMessage[deviceToken==null]"

    invoke-static {v3, v9}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_2
    const-string v3, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, messageId:Ljava/lang/String;
    const-string v3, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, message:Ljava/lang/String;
    const-string v3, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, type:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    const-string v3, "BaseIntentService"

    const-string v9, "handleMessage--->[null]"

    invoke-static {v3, v9}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/android/agoo/log/UTHelper;->messageBodyNullErrorlog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_3
    const/16 v18, 0x0

    .line 228
    .local v18, encrypted:Ljava/lang/String;
    :try_start_0
    const-string v3, "encrypted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 229
    const-string v3, "1"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 230
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {v3, v5, v9}, Lorg/android/agoo/util/EncryptUtil;->aesDecrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/android/agoo/log/UTHelper;->messageEncryptedErrorlog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v17

    .line 257
    .local v17, e:Ljava/lang/Throwable;
    const-string v3, "BaseIntentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encrypt--aesdecrypt["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-static {v3, v9, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 236
    .end local v17           #e:Ljava/lang/Throwable;
    :cond_4
    :try_start_1
    const-string v3, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    :cond_5
    const-string v3, "2"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 239
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    invoke-static {v3, v5, v9}, Lorg/android/agoo/util/EncryptUtil;->aesDecrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 242
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/android/agoo/log/UTHelper;->messageEncryptedErrorlog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_6
    const-string v3, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    :cond_7
    const-string v3, "3"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 248
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x2

    invoke-static {v3, v5, v9}, Lorg/android/agoo/util/EncryptUtil;->aesDecrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 251
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/android/agoo/log/UTHelper;->messageEncryptedErrorlog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_8
    const-string v3, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :cond_9
    const/16 v23, 0x0

    .line 262
    .local v23, taskId:Ljava/lang/String;
    :try_start_2
    const-string v3, "task_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v23

    .line 266
    :goto_1
    :try_start_3
    const-string v3, "message_source"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 267
    .local v20, source:Ljava/lang/String;
    const-string v3, "report"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 268
    .local v19, report:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/MessageService;->getSingleton(Landroid/content/Context;)Lorg/android/agoo/client/MessageService;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v3, v4, v0, v1, v2}, Lorg/android/agoo/client/MessageService;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 270
    .local v15, bf1:Z
    if-eqz v15, :cond_a

    .line 271
    const-string v3, "report"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 276
    .end local v15           #bf1:Z
    .end local v19           #report:Ljava/lang/String;
    .end local v20           #source:Ljava/lang/String;
    :cond_a
    :goto_2
    const-string v3, "BaseIntentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage--->["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/android/agoo/log/UTHelper;->messageLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    .line 279
    .local v16, bodyHashCode:I
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/MessageService;->getSingleton(Landroid/content/Context;)Lorg/android/agoo/client/MessageService;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lorg/android/agoo/client/MessageService;->hasMessageDuplicate(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    const/4 v8, -0x1

    .line 284
    .local v8, notify:I
    :try_start_4
    const-string v3, "notify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v8

    .line 287
    :goto_3
    const-string v3, "time"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, time:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 289
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/MessageService;->getSingleton(Landroid/content/Context;)Lorg/android/agoo/client/MessageService;

    move-result-object v3

    invoke-virtual/range {v3 .. v8}, Lorg/android/agoo/client/MessageService;->handleMessageAtTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 293
    :cond_b
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/AgooSettings;->getTargetTime(Landroid/content/Context;)J

    move-result-wide v21

    .line 294
    .local v21, targetTime:J
    const-wide/16 v9, -0x1

    cmp-long v3, v21, v9

    if-eqz v3, :cond_c

    .line 295
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/MessageService;->getSingleton(Landroid/content/Context;)Lorg/android/agoo/client/MessageService;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "_30"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lorg/android/agoo/client/MessageService;->handleMessageAtTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 300
    :cond_c
    invoke-static/range {p1 .. p1}, Lorg/android/agoo/client/MessageService;->getSingleton(Landroid/content/Context;)Lorg/android/agoo/client/MessageService;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v6, v8}, Lorg/android/agoo/client/MessageService;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    invoke-virtual/range {p0 .. p2}, Lorg/android/agoo/client/BaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 285
    .end local v7           #time:Ljava/lang/String;
    .end local v21           #targetTime:J
    :catch_1
    move-exception v3

    goto :goto_3

    .line 273
    .end local v8           #notify:I
    .end local v16           #bodyHashCode:I
    :catch_2
    move-exception v3

    goto/16 :goto_2

    .line 263
    :catch_3
    move-exception v3

    goto/16 :goto_1
.end method

.method private handleRemovePackage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 333
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 337
    const-string v3, "BaseIntentService"

    const-string v4, "handleRemovePackage---->[devicetoken ===null]"

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_2
    const/4 v1, 0x0

    .line 341
    .local v1, uninstallPack:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 342
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_3

    .line 343
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 345
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getCurrentSudo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, currentSudoPack:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 351
    invoke-direct {p0, p1, v1}, Lorg/android/agoo/client/BaseIntentService;->doUninstall(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->handleElection(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleRetry(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 674
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->internalRegister(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private handleUnRegister(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 747
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, removePack:Ljava/lang/String;
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getCurrentSudo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, sudoPack:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 750
    :cond_0
    const-string v3, "BaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleUnRegister---->[currentPack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][currentSudoPack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:[retryElection]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-direct {p0}, Lorg/android/agoo/client/BaseIntentService;->hasAgooSuperClass()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 754
    const-string v3, "BaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableService---->["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getAgooService()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getAgooService()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/android/agoo/util/ReceiverUtil;->disableService(Landroid/content/Context;Ljava/lang/Class;)V

    .line 757
    :cond_1
    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getAgooService()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/android/agoo/util/ServiceUtil;->stopAgooService(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->retryElection(Landroid/content/Context;)V

    .line 760
    :cond_2
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->doUnRegister(Landroid/content/Context;)V

    .line 761
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, oldRegistrationId:Ljava/lang/String;
    invoke-static {p1}, Lorg/android/agoo/config/Config;->resetBackoff(Landroid/content/Context;)V

    .line 763
    invoke-static {p1}, Lorg/android/agoo/config/Config;->clear(Landroid/content/Context;)V

    .line 764
    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/client/BaseIntentService;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method private handleWake(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 107
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    const-string v2, "BaseIntentService"

    const-string v3, "deviceToken is null--->[re-registration]"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->handleRetry(Landroid/content/Context;Landroid/content/Intent;)V

    .line 129
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {p1}, Lorg/android/agoo/net/ConnectManager;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    const-string v2, "BaseIntentService"

    const-string v3, "connectManager[network connectedOrConnecting failed]"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {p1}, Lorg/android/agoo/client/MessageService;->getSingleton(Landroid/content/Context;)Lorg/android/agoo/client/MessageService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/android/agoo/client/MessageService;->reloadMessageAtTime()V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, currentPack:Ljava/lang/String;
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getCurrentSudo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, currentSudoPack:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lorg/android/agoo/client/BaseIntentService;->restart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->pingMessage(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private handleXCommand(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 139
    const-string v8, "x_command"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, xcommand:Ljava/lang/String;
    const-string v8, "BaseIntentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleXCommand["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, commands:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 143
    .local v1, command:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const-string v8, "="

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, str:[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 150
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 153
    aget-object v8, v5, v11

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    aget-object v8, v5, v12

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 156
    aget-object v8, v5, v12

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, values:[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 160
    aget-object v8, v5, v11

    invoke-direct {p0, p1, v8, v6}, Lorg/android/agoo/client/BaseIntentService;->handleCommandSwitch(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 163
    .end local v1           #command:Ljava/lang/String;
    .end local v5           #str:[Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private hasAgooSuperClass()Z
    .locals 4

    .prologue
    .line 777
    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getAgooService()Ljava/lang/Class;

    move-result-object v0

    .line 778
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getAgooService()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 780
    .local v1, tmpClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/android/agoo/service/AgooService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    const/4 v2, 0x1

    .line 784
    .end local v1           #tmpClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initClinet()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lorg/android/agoo/net/mtop/MtopSyncClientV3;

    invoke-direct {v0}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/client/BaseIntentService;->synClient:Lorg/android/agoo/net/mtop/IMtopSynClient;

    .line 75
    return-void
.end method

.method private final onCommand(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 359
    const-string v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, command:Ljava/lang/String;
    const-string v1, "BaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command --->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v1, "registration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-static {p1}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/android/agoo/client/BaseIntentService;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->handleAddPackage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 382
    :goto_0
    return-void

    .line 366
    :cond_0
    const-string v1, "unregister"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->handleUnRegister(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 369
    :cond_1
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->handleError(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    :cond_2
    const-string v1, "register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->handleRegister(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 375
    :cond_3
    const-string v1, "register_retry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 376
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->handleRetry(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/client/BaseIntentService;->onUserCommand(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onPingMessage()V
    .locals 6

    .prologue
    .line 834
    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 835
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lorg/android/agoo/config/Config;->getCurrentSudo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, currentPack:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    const-string v4, "BaseIntentService"

    const-string v5, "onPingMessage:[currentPack==null][retry election]"

    invoke-static {v4, v5}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-direct {p0, v0}, Lorg/android/agoo/client/BaseIntentService;->retryElection(Landroid/content/Context;)V

    .line 849
    :goto_0
    return-void

    .line 842
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 843
    .local v3, messageIntent:Landroid/content/Intent;
    const-string v4, "org.agoo.android.intent.action.PING"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    iget-object v4, p0, Lorg/android/agoo/client/BaseIntentService;->mMessageConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    .end local v3           #messageIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 847
    .local v2, e:Ljava/lang/Throwable;
    const-string v4, "BaseIntentService"

    const-string v5, "onPingMessage"

    invoke-static {v4, v5, v2}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private pingMessage(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 852
    iget-boolean v2, p0, Lorg/android/agoo/client/BaseIntentService;->isMessageServiceConnected:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/android/agoo/client/BaseIntentService;->messageService:Lorg/android/agoo/service/IMessageService;

    if-eqz v2, :cond_1

    .line 854
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/client/BaseIntentService;->messageService:Lorg/android/agoo/service/IMessageService;

    invoke-interface {v2}, Lorg/android/agoo/service/IMessageService;->ping()Z

    move-result v1

    .line 855
    .local v1, ping:Z
    if-nez v1, :cond_0

    .line 856
    invoke-direct {p0, p1}, Lorg/android/agoo/client/BaseIntentService;->retryElection(Landroid/content/Context;)V

    .line 858
    :cond_0
    const-string v2, "BaseIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pingMessage[ping:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    .end local v1           #ping:Z
    :cond_1
    :goto_0
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "BaseIntentService"

    const-string v3, "pingMessage"

    invoke-static {v2, v3, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized restart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "currentPack"
    .parameter "currentsudo"

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/android/agoo/client/BaseIntentService$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/android/agoo/client/BaseIntentService$2;-><init>(Lorg/android/agoo/client/BaseIntentService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lorg/android/agoo/util/ThreadUtil;->startRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    monitor-exit p0

    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private retryElection(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 709
    const-string v1, "BaseIntentService"

    const-string v2, "retry election"

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 711
    .local v0, electionIntent:Landroid/content/Intent;
    const-string v1, "org.agoo.android.intent.action.RE_ELECTION_V2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 713
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 715
    return-void
.end method

.method static runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "className"

    .prologue
    .line 483
    :try_start_0
    sget-object v3, Lorg/android/agoo/client/BaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :try_start_1
    sget-object v2, Lorg/android/agoo/client/BaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 485
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 487
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "AGOO_LIB"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lorg/android/agoo/client/BaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 489
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :try_start_2
    sget-object v2, Lorg/android/agoo/client/BaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 491
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 496
    :goto_0
    return-void

    .line 489
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "BaseIntentService"

    const-string v3, "runIntentInService--Throwable"

    invoke-static {v2, v3, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getAgooService()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDeletedMessages(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "total"

    .prologue
    .line 100
    return-void
.end method

.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 440
    :try_start_0
    invoke-virtual {p0}, Lorg/android/agoo/client/BaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 441
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lorg/android/agoo/log/AgooLog;->startLog(Landroid/content/Context;)V

    .line 442
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, action:Ljava/lang/String;
    invoke-static {v2}, Lorg/android/agoo/client/IntentHelper;->getAgooCommand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, command:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 445
    invoke-direct {p0, v2, p1}, Lorg/android/agoo/client/BaseIntentService;->onCommand(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    :try_start_1
    sget-object v5, Lorg/android/agoo/client/BaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 471
    :try_start_2
    sget-object v4, Lorg/android/agoo/client/BaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_0

    .line 472
    sget-object v4, Lorg/android/agoo/client/BaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 474
    :cond_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 479
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #command:Ljava/lang/String;
    .end local v2           #context:Landroid/content/Context;
    :goto_1
    return-void

    .line 447
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #command:Ljava/lang/String;
    .restart local v2       #context:Landroid/content/Context;
    :cond_1
    :try_start_3
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 448
    invoke-direct {p0, v2, p1}, Lorg/android/agoo/client/BaseIntentService;->handleRemovePackage(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 466
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #command:Ljava/lang/String;
    .end local v2           #context:Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 467
    .local v3, e:Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "BaseIntentService"

    const-string v5, "onHandleIntent"

    invoke-static {v4, v5, v3}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 470
    :try_start_5
    sget-object v5, Lorg/android/agoo/client/BaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 471
    :try_start_6
    sget-object v4, Lorg/android/agoo/client/BaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_2

    .line 472
    sget-object v4, Lorg/android/agoo/client/BaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 474
    :cond_2
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 475
    :catch_1
    move-exception v3

    .line 476
    const-string v4, "BaseIntentService"

    const-string v5, "wakeLock.release()"

    invoke-static {v4, v5, v3}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 450
    .end local v3           #e:Ljava/lang/Throwable;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #command:Ljava/lang/String;
    .restart local v2       #context:Landroid/content/Context;
    :cond_3
    :try_start_8
    const-string v4, "org.agoo.android.intent.action.RECEIVE"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 451
    invoke-direct {p0, v2, p1}, Lorg/android/agoo/client/BaseIntentService;->handleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    .line 469
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #command:Ljava/lang/String;
    .end local v2           #context:Landroid/content/Context;
    :catchall_1
    move-exception v4

    .line 470
    :try_start_9
    sget-object v6, Lorg/android/agoo/client/BaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 471
    :try_start_a
    sget-object v5, Lorg/android/agoo/client/BaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_4

    .line 472
    sget-object v5, Lorg/android/agoo/client/BaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 474
    :cond_4
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 477
    :goto_2
    throw v4

    .line 453
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #command:Ljava/lang/String;
    .restart local v2       #context:Landroid/content/Context;
    :cond_5
    :try_start_b
    const-string v4, "org.agoo.android.intent.action.RE_ELECTION_V2"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 454
    invoke-direct {p0, v2, p1}, Lorg/android/agoo/client/BaseIntentService;->handleElection(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 456
    :cond_6
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 461
    :cond_7
    invoke-direct {p0, v2, p1}, Lorg/android/agoo/client/BaseIntentService;->handleWake(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 464
    :cond_8
    invoke-virtual {p0, v2, p1}, Lorg/android/agoo/client/BaseIntentService;->onUserHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 474
    :catchall_2
    move-exception v4

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v4
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    .line 475
    :catch_2
    move-exception v3

    .line 476
    .restart local v3       #e:Ljava/lang/Throwable;
    const-string v4, "BaseIntentService"

    const-string v5, "wakeLock.release()"

    invoke-static {v4, v5, v3}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 474
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #command:Ljava/lang/String;
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #e:Ljava/lang/Throwable;
    :catchall_3
    move-exception v5

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v5
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 475
    :catch_3
    move-exception v3

    .line 476
    .restart local v3       #e:Ljava/lang/Throwable;
    const-string v5, "BaseIntentService"

    const-string v6, "wakeLock.release()"

    invoke-static {v5, v6, v3}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected onUserCommand(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    return-void
.end method

.method protected onUserHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    return-void
.end method

.method protected shouldProcessMessage(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
