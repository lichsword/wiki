.class public Lorg/android/agoo/message/MessagePush;
.super Lorg/android/agoo/message/AbsMessage;
.source "MessagePush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/message/MessagePush$Reconnect;,
        Lorg/android/agoo/message/MessagePush$Heart;
    }
.end annotation


# static fields
.field private static final CONNECT_REQUEST_CODE:I = 0x6f5cb

.field private static final DYE:Ljava/lang/String; = "Dye"

.field private static final ERROR_CONNECT:Ljava/lang/String; = "error_connect"

.field private static final HB:Ljava/lang/String; = "Hb"

.field private static final HEART_CONNECT:Ljava/lang/String; = "heart_connect"

.field private static final HEART_REQUEST_CODE:I = 0x6f5be

.field private static final HOST_ERROR_CONNECT:Ljava/lang/String; = "host_error_connect"

.field private static final INIT_CONNECT:Ljava/lang/String; = "init_connect"

.field private static final NETWORK_CHANGE_CONNECT:Ljava/lang/String; = "network_change_connect"

.field private static final NETWORK_ERROR_CONNECT:Ljava/lang/String; = "network_error_connect"

.field private static final SCREEN_ON_CONNECT:Ljava/lang/String; = "screen_on_connect"

.field private static final TAG:Ljava/lang/String; = "MessagePush"

.field private static final X_AT:Ljava/lang/String; = "X-AT"

.field private static final X_COMMAND:Ljava/lang/String; = "X-COMMAND"


# instance fields
.field private volatile alarmManager:Landroid/app/AlarmManager;

.field private volatile checkHeartInterval:J

.field private volatile conntectTimeout:J

.field private volatile electionSource:Ljava/lang/String;

.field private volatile errorConnectInterval:J

.field private volatile heart:Lorg/android/agoo/message/MessagePush$Heart;

.field private volatile heartInterval:J

.field private volatile heartMinInterval:J

.field private volatile heartTimeoutConnectInterval:J

.field private volatile hostClient:Lorg/android/agoo/helper/HostClient;

.field private volatile hostConnectInterval:J

.field private volatile httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

.field private volatile initConnectInterval:J

.field private volatile isStarted:Z

.field private volatile lastHeartTime:J

.field private volatile mCId:I

.field private volatile messageTime:Lorg/android/agoo/message/MessageTime;

.field private volatile networkChangeInterval:J

.field private volatile networkErrorConnectInterval:J

.field private volatile networkErrorMaxConnectInterval:J

.field private volatile pack:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private volatile reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

.field private volatile screenOnInterval:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/android/agoo/message/MessageHandler;)V
    .locals 4
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/message/AbsMessage;-><init>(Landroid/content/Context;Lorg/android/agoo/message/MessageHandler;)V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->lastHeartTime:J

    .line 76
    iput-boolean v3, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z

    .line 79
    iput-object v2, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/agoo/message/MessagePush;->mCId:I

    .line 84
    iput-object v2, p0, Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;

    .line 85
    iput-object v2, p0, Lorg/android/agoo/message/MessagePush;->electionSource:Ljava/lang/String;

    .line 91
    new-instance v0, Lorg/android/agoo/message/MessagePush$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/message/MessagePush$1;-><init>(Lorg/android/agoo/message/MessagePush;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush;->receiver:Landroid/content/BroadcastReceiver;

    .line 146
    iput-boolean v3, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z

    .line 147
    invoke-static {p1}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 148
    new-instance v0, Lorg/android/agoo/message/MessageTime;

    invoke-static {p1}, Lorg/android/agoo/client/AgooSettings;->isAgooTestMode(Landroid/content/Context;)Z

    move-result v1

    invoke-super {p0}, Lorg/android/agoo/message/AbsMessage;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/message/MessageTime;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    .line 149
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getInitConnectInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->initConnectInterval:J

    .line 150
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getErrorConnectInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    .line 151
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getScreenOnInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->screenOnInterval:J

    .line 152
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getNetworkChanageConnectInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkChangeInterval:J

    .line 153
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getHostConnectInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->hostConnectInterval:J

    .line 154
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getHeartTimeoutConnectInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartTimeoutConnectInterval:J

    .line 155
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getNetworkErrorConnectInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkErrorConnectInterval:J

    .line 156
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getNetworkErrorMaxConnectInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkErrorMaxConnectInterval:J

    .line 157
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getConnectTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->conntectTimeout:J

    .line 158
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getCheckHeartInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->checkHeartInterval:J

    .line 159
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getHeartMinInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartMinInterval:J

    .line 160
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getHeartInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartInterval:J

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush;->pack:Ljava/lang/String;

    .line 162
    invoke-static {p1}, Lorg/android/agoo/config/Config;->getElectionSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush;->electionSource:Ljava/lang/String;

    .line 163
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;

    .line 164
    new-instance v0, Lorg/android/agoo/helper/HostClient;

    invoke-virtual {p0}, Lorg/android/agoo/message/MessagePush;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/android/agoo/helper/HostClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush;->hostClient:Lorg/android/agoo/helper/HostClient;

    .line 165
    new-instance v0, Lorg/android/agoo/net/mtop/MtopHttpChunked;

    invoke-direct {v0}, Lorg/android/agoo/net/mtop/MtopHttpChunked;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    .line 166
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->setDefaultAppkey(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->appSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->setDefaultAppSecret(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lorg/android/agoo/message/MessagePush$Heart;

    invoke-direct {v0, p0}, Lorg/android/agoo/message/MessagePush$Heart;-><init>(Lorg/android/agoo/message/MessagePush;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush;->heart:Lorg/android/agoo/message/MessagePush$Heart;

    .line 169
    new-instance v0, Lorg/android/agoo/message/MessagePush$Reconnect;

    invoke-direct {v0, p0}, Lorg/android/agoo/message/MessagePush$Reconnect;-><init>(Lorg/android/agoo/message/MessagePush;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush;->reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lorg/android/agoo/message/MessagePush;)Lorg/android/agoo/net/mtop/MtopHttpChunked;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    return-object v0
.end method

.method static synthetic access$100(Lorg/android/agoo/message/MessagePush;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->screenOnInterval:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/android/agoo/message/MessagePush;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/android/agoo/message/MessagePush;->handleXCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/android/agoo/message/MessagePush;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/message/MessagePush;->setDye(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/android/agoo/message/MessagePush;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->stopHeart()V

    return-void
.end method

.method static synthetic access$1300(Lorg/android/agoo/message/MessagePush;ILjava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/message/MessagePush;->handlerError(ILjava/util/Map;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/android/agoo/message/MessagePush;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/android/agoo/message/MessagePush;[CJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/message/MessagePush;->handlerSys([CJ)V

    return-void
.end method

.method static synthetic access$1600(Lorg/android/agoo/message/MessagePush;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->connect()V

    return-void
.end method

.method static synthetic access$1700(Lorg/android/agoo/message/MessagePush;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->nextErrorInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lorg/android/agoo/message/MessagePush;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->hostConnectInterval:J

    return-wide v0
.end method

.method static synthetic access$1900(Lorg/android/agoo/message/MessagePush;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/android/agoo/message/MessagePush;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/message/MessagePush;->tryReConnect(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/android/agoo/message/MessagePush;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->pack:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/android/agoo/message/MessagePush;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartTimeoutConnectInterval:J

    return-wide v0
.end method

.method static synthetic access$2500(Lorg/android/agoo/message/MessagePush;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->alarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/android/agoo/message/MessagePush;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/android/agoo/message/MessagePush;->connect(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/android/agoo/message/MessagePush;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkChangeInterval:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/android/agoo/message/MessagePush;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lorg/android/agoo/message/MessagePush;->mCId:I

    return v0
.end method

.method static synthetic access$502(Lorg/android/agoo/message/MessagePush;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lorg/android/agoo/message/MessagePush;->mCId:I

    return p1
.end method

.method static synthetic access$600(Lorg/android/agoo/message/MessagePush;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->reloadNetworkErrorConnectInterval()V

    return-void
.end method

.method static synthetic access$700(Lorg/android/agoo/message/MessagePush;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->lastHeartTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/android/agoo/message/MessagePush;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-wide p1, p0, Lorg/android/agoo/message/MessagePush;->lastHeartTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/android/agoo/message/MessagePush;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/message/MessagePush;->startHeart(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/android/agoo/message/MessagePush;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/android/agoo/message/MessagePush;->setXToken(Ljava/lang/String;)V

    return-void
.end method

.method private checkNetwork()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/net/ConnectManager;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    const-string v2, "MessagePush"

    const-string v3, "connectManager[network connectedOrConnecting failed]"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_0
    return v1

    .line 356
    :cond_0
    new-instance v0, Lorg/android/agoo/net/ConnectManager;

    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/android/agoo/net/ConnectManager;-><init>(Landroid/content/Context;)V

    .line 357
    .local v0, connectManager:Lorg/android/agoo/net/ConnectManager;
    invoke-virtual {v0}, Lorg/android/agoo/net/ConnectManager;->isWapNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    const-string v2, "MessagePush"

    const-string v3, "current network [*wap]"

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized closeConnect()V
    .locals 3

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 546
    :goto_0
    monitor-exit p0

    return-void

    .line 530
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z

    .line 531
    const-string v1, "MessagePush"

    const-string v2, "[stopping]"

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->reloadNetworkErrorConnectInterval()V

    .line 533
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    if-eqz v1, :cond_2

    .line 534
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->readyState()Lorg/android/agoo/net/chunked/ChunkedState;

    move-result-object v0

    .line 535
    .local v0, readyState:Lorg/android/agoo/net/chunked/ChunkedState;
    sget-object v1, Lorg/android/agoo/net/chunked/ChunkedState;->OPEN:Lorg/android/agoo/net/chunked/ChunkedState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/android/agoo/net/chunked/ChunkedState;->CONNECTING:Lorg/android/agoo/net/chunked/ChunkedState;

    if-ne v0, v1, :cond_2

    .line 536
    :cond_1
    const-string v1, "MessagePush"

    const-string v2, "[stop]:[close http chunked]"

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->close()V

    .line 538
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    .line 541
    .end local v0           #readyState:Lorg/android/agoo/net/chunked/ChunkedState;
    :cond_2
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

    if-eqz v1, :cond_3

    .line 542
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

    invoke-virtual {v1}, Lorg/android/agoo/message/MessagePush$Reconnect;->stop()V

    .line 543
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/android/agoo/message/MessagePush;->reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

    .line 545
    :cond_3
    const-string v1, "MessagePush"

    const-string v2, "[stoped]"

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private connect()V
    .locals 6

    .prologue
    .line 276
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/message/MessagePush;->setSmartHeart(Landroid/content/Context;)V

    .line 277
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/android/agoo/message/MessagePush;->setElectionSource(Landroid/content/Context;)V

    .line 278
    new-instance v2, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v2}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 279
    .local v2, request:Lorg/android/agoo/net/mtop/MtopRequest;
    const-string v0, "mtop.push.msg.new"

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 280
    const-string v0, "6.0"

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 281
    invoke-super {p0}, Lorg/android/agoo/message/AbsMessage;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setAppKey(Ljava/lang/String;)V

    .line 282
    invoke-super {p0}, Lorg/android/agoo/message/AbsMessage;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setAppSecret(Ljava/lang/String;)V

    .line 283
    invoke-super {p0}, Lorg/android/agoo/message/AbsMessage;->getTtId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setTtId(Ljava/lang/String;)V

    .line 284
    invoke-super {p0}, Lorg/android/agoo/message/AbsMessage;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 285
    const-string v0, "appPackage"

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    const-string v0, "agooSdkVersion"

    invoke-static {}, Lorg/android/agoo/client/AgooSettings;->getAgooReleaseTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const-string v0, "deviceId"

    invoke-super {p0}, Lorg/android/agoo/message/AbsMessage;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    const-string v0, "vote"

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->electionSource:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    iget-wide v3, p0, Lorg/android/agoo/message/MessagePush;->conntectTimeout:J

    new-instance v5, Lorg/android/agoo/message/MessagePush$2;

    invoke-direct {v5, p0}, Lorg/android/agoo/message/MessagePush$2;-><init>(Lorg/android/agoo/message/MessagePush;)V

    invoke-virtual/range {v0 .. v5}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->connect(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;JLorg/android/agoo/net/chunked/IChunkedHandler;)V

    .line 344
    return-void
.end method

.method private declared-synchronized connect(Z)V
    .locals 3
    .parameter "isRefreshHost"

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->checkNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->nextErrorInterval()J

    move-result-wide v0

    const-string v2, "network_error_connect"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :goto_0
    monitor-exit p0

    return-void

    .line 371
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->hostClient:Lorg/android/agoo/helper/HostClient;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->hostClient:Lorg/android/agoo/helper/HostClient;

    new-instance v1, Lorg/android/agoo/message/MessagePush$3;

    invoke-direct {v1, p0}, Lorg/android/agoo/message/MessagePush$3;-><init>(Lorg/android/agoo/message/MessagePush;)V

    invoke-virtual {v0, v1}, Lorg/android/agoo/helper/HostClient;->next(Lorg/android/agoo/helper/HostClient$IHostHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 396
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->connect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private destroyHeart()V
    .locals 1

    .prologue
    .line 560
    :try_start_0
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->stopHeart()V

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/message/MessagePush;->heart:Lorg/android/agoo/message/MessagePush$Heart;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized forceConnect(JLjava/lang/String;)V
    .locals 1
    .parameter "interval"
    .parameter "state"

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

    invoke-virtual {v0, p1, p2, p3}, Lorg/android/agoo/message/MessagePush$Reconnect;->forceConnect(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :cond_0
    monitor-exit p0

    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleMtop(Ljava/util/Map;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 508
    const-string v1, "MTOP-ST"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 509
    .local v0, errorId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    const-string v1, "MessagePush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlerError---->[MTOP-ST_ERROR_CODE]["

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

    .line 513
    const-string v1, "ERRCODE_AUTH_REJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 514
    const/4 v1, 0x1

    .line 520
    .end local v0           #errorId:Ljava/lang/String;
    :goto_0
    return v1

    .line 516
    .restart local v0       #errorId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 520
    .end local v0           #errorId:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleXCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "xcommand"

    .prologue
    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "org.agoo.android.intent.action.RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "x_command_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const-string v1, "x_command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final handlerError(ILjava/util/Map;)V
    .locals 4
    .parameter "httpStatusCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    .line 484
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    iget-wide v2, p0, Lorg/android/agoo/message/MessagePush;->networkErrorMaxConnectInterval:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 485
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkErrorMaxConnectInterval:J

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    .line 487
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 498
    invoke-direct {p0, p2}, Lorg/android/agoo/message/MessagePush;->handleMtop(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    const-string v0, "ERRCODE_AUTH_REJECT"

    invoke-virtual {p0, v0}, Lorg/android/agoo/message/MessagePush;->handlerError(Ljava/lang/String;)V

    .line 504
    :goto_0
    return-void

    .line 489
    :sswitch_0
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V

    goto :goto_0

    .line 492
    :sswitch_1
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V

    goto :goto_0

    .line 495
    :sswitch_2
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V

    goto :goto_0

    .line 487
    :sswitch_data_0
    .sparse-switch
        0x194 -> :sswitch_0
        0x198 -> :sswitch_1
        0x1f8 -> :sswitch_2
    .end sparse-switch
.end method

.method private handlerSys([CJ)V
    .locals 6
    .parameter "cs"
    .parameter "startTime"

    .prologue
    const/4 v3, 0x1

    .line 403
    :try_start_0
    array-length v2, p1

    if-ne v2, v3, :cond_1

    .line 404
    const-string v2, "MessagePush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/android/agoo/message/MessagePush;->mCId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]--->[onHeart()]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/android/agoo/message/MessagePush;->lastHeartTime:J

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    array-length v2, p1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 409
    const-string v2, "MessagePush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cs[1]:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-char v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]cs[2]:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-char v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]|cs[3]:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-char v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]|cs[4]:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    aget-char v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->stopHeart()V

    .line 412
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 413
    .local v0, str:Ljava/lang/String;
    const/4 v2, 0x2

    aget-char v2, p1, v2

    mul-int/lit16 v2, v2, 0x3e8

    const/4 v3, 0x3

    aget-char v3, p1, v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    const/4 v3, 0x4

    aget-char v3, p1, v3

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    const/4 v3, 0x5

    aget-char v3, p1, v3

    add-int/2addr v2, v3

    mul-int/lit16 v1, v2, 0x3e8

    .line 414
    .local v1, time:I
    const/4 v2, 0x1

    aget-char v2, p1, v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 417
    :sswitch_0
    const-string v2, "MessagePush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/android/agoo/message/MessagePush;->mCId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][nginx_lease_timeout]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][random time conntect][httpchunked connect time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    const-string v3, "onNginxError"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[nginx_lease_timeout]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, p3, v3, v4}, Lorg/android/agoo/log/UTHelper;->connectlog(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-wide v2, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    const-string v4, "error_connect"

    invoke-direct {p0, v2, v3, v4}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 477
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #time:I
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 426
    .restart local v0       #str:Ljava/lang/String;
    .restart local v1       #time:I
    :sswitch_1
    const-string v2, "MessagePush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/android/agoo/message/MessagePush;->mCId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][nginx_connect_mtop_error]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][delay time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms connect]--httpchunked connect time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    const-string v3, "onNginxError"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[nginx_connect_mtop_error]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, p3, v3, v4}, Lorg/android/agoo/log/UTHelper;->connectlog(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lorg/android/agoo/message/MessageTime;->getRandomConnectInterval(J)J

    move-result-wide v2

    const-string v4, "error_connect"

    invoke-direct {p0, v2, v3, v4}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 439
    :sswitch_2
    const-string v2, "MessagePush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/android/agoo/message/MessagePush;->mCId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][nginx_connect_mtop_error]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [random time conntect][httpchunked connect time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    const-string v3, "onNginxError"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[nginx_connect_mtop_error]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, p3, v3, v4}, Lorg/android/agoo/log/UTHelper;->connectlog(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-wide v2, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-string v4, "error_connect"

    invoke-direct {p0, v2, v3, v4}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :sswitch_3
    const-string v2, "MessagePush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/android/agoo/message/MessagePush;->mCId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][nginx_connect_mtop_error]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][delay time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms connect][httpchunked connect time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    const-string v3, "onNginxError"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[nginx_config_update]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, p3, v3, v4}, Lorg/android/agoo/log/UTHelper;->connectlog(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lorg/android/agoo/message/MessageTime;->getRandomConnectInterval(J)J

    move-result-wide v2

    const-string v4, "error_connect"

    invoke-direct {p0, v2, v3, v4}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :sswitch_4
    const-string v2, "MessagePush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/android/agoo/message/MessagePush;->mCId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][nginx_config_update]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][random time conntect connect][httpchunked connect time=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    const-string v3, "onNginxError"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[nginx_config_update]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, p3, v3, v4}, Lorg/android/agoo/log/UTHelper;->connectlog(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-wide v2, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-string v4, "error_connect"

    invoke-direct {p0, v2, v3, v4}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 414
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x82 -> :sswitch_2
        0x83 -> :sswitch_4
    .end sparse-switch
.end method

.method private initPush()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

    #calls: Lorg/android/agoo/message/MessagePush$Reconnect;->initReconnectReceiver()V
    invoke-static {v0}, Lorg/android/agoo/message/MessagePush$Reconnect;->access$400(Lorg/android/agoo/message/MessagePush$Reconnect;)V

    .line 189
    :cond_0
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->initReceiver()V

    .line 190
    return-void
.end method

.method private initReceiver()V
    .locals 4

    .prologue
    .line 122
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/android/agoo/message/MessagePush;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "MessagePush"

    const-string v3, "initReceiver"

    invoke-static {v2, v3, v1}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private nextErrorInterval()J
    .locals 4

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkErrorConnectInterval:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkErrorConnectInterval:J

    .line 179
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkErrorConnectInterval:J

    iget-wide v2, p0, Lorg/android/agoo/message/MessagePush;->networkErrorMaxConnectInterval:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 180
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkErrorMaxConnectInterval:J

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkErrorConnectInterval:J

    .line 182
    :cond_0
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkErrorConnectInterval:J

    return-wide v0
.end method

.method private reloadNetworkErrorConnectInterval()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getNetworkErrorConnectInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->networkErrorConnectInterval:J

    .line 174
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getErrorConnectInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->errorConnectInterval:J

    .line 175
    return-void
.end method

.method private setDye(JLjava/lang/String;)V
    .locals 5
    .parameter "connectTime"
    .parameter "dye"

    .prologue
    .line 235
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 238
    .local v1, interval:I
    if-lez v1, :cond_0

    .line 239
    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-static {v2, p1, p2, v1}, Lorg/android/agoo/config/Config;->setDye(Landroid/content/Context;JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1           #interval:I
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "MessagePush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlerDye("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setElectionSource(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 259
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    const-string v1, "X-COMMAND"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vote="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/android/agoo/message/MessagePush;->electionSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private setSmartHeart(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 254
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->messageTime:Lorg/android/agoo/message/MessageTime;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageTime;->getHeartInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartInterval:J

    .line 255
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    const-string v1, "Hb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/android/agoo/message/MessagePush;->heartInterval:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private setXToken(Ljava/lang/String;)V
    .locals 2
    .parameter "xToken"

    .prologue
    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    const-string v1, "X-AT"

    invoke-virtual {v0, v1, p1}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method private startHeart(JLjava/lang/String;)V
    .locals 11
    .parameter "connectTime"
    .parameter "hb"

    .prologue
    const-wide/16 v9, 0x2

    .line 204
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->heart:Lorg/android/agoo/message/MessagePush$Heart;

    if-nez v0, :cond_0

    .line 205
    const-string v0, "MessagePush"

    const-string v1, "open heart==[null]"

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 208
    :cond_0
    const-wide/16 v3, -0x1

    .line 209
    .local v3, maxHeartInterval:J
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 212
    .local v8, interval:I
    const/16 v0, 0x14

    if-lt v8, v0, :cond_1

    .line 213
    mul-int/lit16 v0, v8, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartInterval:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v8           #interval:I
    :cond_1
    :goto_1
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartInterval:J

    iget-wide v5, p0, Lorg/android/agoo/message/MessagePush;->heartMinInterval:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_2

    .line 220
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartInterval:J

    mul-long v3, v0, v9

    .line 221
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartInterval:J

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->checkHeartInterval:J

    .line 227
    :goto_2
    const-string v0, "MessagePush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "heart["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/android/agoo/message/MessagePush;->mCId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]heart--->[start checktime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Lorg/android/agoo/message/MessagePush;->checkHeartInterval:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms][current-thread-name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->heart:Lorg/android/agoo/message/MessagePush$Heart;

    iget-wide v1, p0, Lorg/android/agoo/message/MessagePush;->checkHeartInterval:J

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/android/agoo/message/MessagePush$Heart;->start(JJJ)V

    goto :goto_0

    .line 215
    :catch_0
    move-exception v7

    .line 216
    .local v7, e:Ljava/lang/Throwable;
    const-string v0, "MessagePush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHeart("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 224
    .end local v7           #e:Ljava/lang/Throwable;
    :cond_2
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartInterval:J

    div-long/2addr v0, v9

    iput-wide v0, p0, Lorg/android/agoo/message/MessagePush;->checkHeartInterval:J

    .line 225
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->heartInterval:J

    long-to-double v0, v0

    const-wide v5, 0x3ff199999999999aL

    mul-double/2addr v0, v5

    double-to-long v3, v0

    goto :goto_2
.end method

.method private stopHeart()V
    .locals 1

    .prologue
    .line 550
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->heart:Lorg/android/agoo/message/MessagePush$Heart;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->heart:Lorg/android/agoo/message/MessagePush$Heart;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessagePush$Heart;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized tryReConnect(JLjava/lang/String;)V
    .locals 1
    .parameter "interval"
    .parameter "state"

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->reconnect:Lorg/android/agoo/message/MessagePush$Reconnect;

    invoke-virtual {v0, p1, p2, p3}, Lorg/android/agoo/message/MessagePush$Reconnect;->tryConnect(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :cond_0
    monitor-exit p0

    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterReceiver()V
    .locals 3

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/android/agoo/message/MessagePush;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MessagePush"

    const-string v2, "unregisterReceiver"

    invoke-static {v1, v2, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 585
    :goto_0
    monitor-exit p0

    return-void

    .line 574
    :cond_0
    :try_start_1
    const-string v0, "MessagePush"

    const-string v1, "[destroying]"

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->destroyHeart()V

    .line 576
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->closeConnect()V

    .line 577
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->unregisterReceiver()V

    .line 578
    iget-object v0, p0, Lorg/android/agoo/message/MessagePush;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/log/UTHelper;->stopLog(Landroid/content/Context;)V

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z

    .line 580
    const-string v0, "MessagePush"

    const-string v1, "[destroyed]"

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Z
    .locals 2

    .prologue
    .line 891
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/message/MessagePush;->httpChunked:Lorg/android/agoo/net/mtop/MtopHttpChunked;

    invoke-virtual {v1}, Lorg/android/agoo/net/mtop/MtopHttpChunked;->readyState()Lorg/android/agoo/net/chunked/ChunkedState;

    move-result-object v0

    .line 892
    .local v0, state:Lorg/android/agoo/net/chunked/ChunkedState;
    sget-object v1, Lorg/android/agoo/net/chunked/ChunkedState;->CONNECTING:Lorg/android/agoo/net/chunked/ChunkedState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/android/agoo/net/chunked/ChunkedState;->OPEN:Lorg/android/agoo/net/chunked/ChunkedState;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_1

    .line 893
    :cond_0
    const/4 v1, 0x1

    .line 898
    .end local v0           #state:Lorg/android/agoo/net/chunked/ChunkedState;
    :goto_0
    return v1

    .line 895
    :catch_0
    move-exception v1

    .line 898
    :cond_1
    iget-boolean v1, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/android/agoo/message/MessagePush;->isStarted:Z

    .line 198
    const-string v0, "MessagePush"

    const-string v1, "MessagePush [starting]"

    invoke-static {v0, v1}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lorg/android/agoo/message/MessagePush;->initPush()V

    .line 200
    iget-wide v0, p0, Lorg/android/agoo/message/MessagePush;->initConnectInterval:J

    const-string v2, "init_connect"

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/message/MessagePush;->forceConnect(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
