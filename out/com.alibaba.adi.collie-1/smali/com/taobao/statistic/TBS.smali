.class public Lcom/taobao/statistic/TBS;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/TBS$OnInitFinishListener;,
        Lcom/taobao/statistic/TBS$Network;,
        Lcom/taobao/statistic/TBS$Adv;,
        Lcom/taobao/statistic/TBS$CrashHandler;,
        Lcom/taobao/statistic/TBS$Page;,
        Lcom/taobao/statistic/TBS$Ext;
    }
.end annotation


# static fields
.field private static hT:Lcom/taobao/statistic/c;

.field private static hU:Ljava/lang/Object;

.field private static hV:Ljava/lang/Object;

.field private static hW:Z

.field private static isUninit:Z

.field private static resourceIdentifyer:Ljava/lang/String;

.field private static tbsEngine:Lcom/taobao/statistic/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    sput-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    .line 39
    sput-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/taobao/statistic/TBS;->resourceIdentifyer:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/statistic/TBS;->hV:Ljava/lang/Object;

    .line 46
    sput-boolean v1, Lcom/taobao/statistic/TBS;->isUninit:Z

    .line 50
    sput-boolean v1, Lcom/taobao/statistic/TBS;->hW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1928
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/taobao/statistic/TBS;->hV:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/taobao/statistic/TBS;->hW:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/taobao/statistic/TBS;->isUninit:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-boolean p0, Lcom/taobao/statistic/TBS;->isUninit:Z

    return p0
.end method

.method static synthetic access$300()Lcom/taobao/statistic/c;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    return-object v0
.end method

.method static synthetic access$302(Lcom/taobao/statistic/c;)Lcom/taobao/statistic/c;
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-object p0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    return-object p0
.end method

.method static synthetic access$400()Lcom/taobao/statistic/c;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    return-object v0
.end method

.method static synthetic access$402(Lcom/taobao/statistic/c;)Lcom/taobao/statistic/c;
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-object p0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Lcom/taobao/statistic/core/b;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    return-object v0
.end method

.method private static getExecProxy()Lcom/taobao/statistic/core/b;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/statistic/TBS$1;

    invoke-direct {v1}, Lcom/taobao/statistic/TBS$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 211
    .local v0, usertrackInitThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 212
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 224
    sget-object v2, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v2

    .line 225
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 226
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/statistic/core/a;->setChannel(Ljava/lang/String;)V

    .line 229
    :cond_0
    monitor-exit v2

    .line 230
    return-void

    .line 229
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setEnvironment(Landroid/content/Context;)V
    .locals 2
    .parameter "environment"

    .prologue
    .line 304
    sget-object v1, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/taobao/statistic/TBS;->isUninit:Z

    .line 306
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    if-nez v0, :cond_0

    sget-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    .line 308
    const-string v0, ""

    invoke-static {v0}, Lcom/taobao/statistic/c;->m(Ljava/lang/String;)Lcom/taobao/statistic/c;

    move-result-object v0

    sput-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    .line 310
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    invoke-virtual {v0, p0}, Lcom/taobao/statistic/c;->setEnvironment(Landroid/content/Context;)V

    .line 312
    const-string v0, ""

    sput-object v0, Lcom/taobao/statistic/TBS;->resourceIdentifyer:Ljava/lang/String;

    .line 313
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/statistic/TBS;->hW:Z

    .line 316
    :cond_0
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setEnvironment(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "environment"
    .parameter "resourceIdentifier"

    .prologue
    .line 334
    sget-object v1, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/taobao/statistic/TBS;->isUninit:Z

    .line 336
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    if-nez v0, :cond_0

    sget-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    .line 338
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    invoke-static {p1}, Lcom/taobao/statistic/c;->m(Ljava/lang/String;)Lcom/taobao/statistic/c;

    move-result-object v0

    sput-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    .line 340
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    invoke-virtual {v0, p0}, Lcom/taobao/statistic/c;->setEnvironment(Landroid/content/Context;)V

    .line 342
    sput-object p1, Lcom/taobao/statistic/TBS;->resourceIdentifyer:Ljava/lang/String;

    .line 343
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/statistic/TBS;->hW:Z

    .line 350
    :cond_0
    :goto_0
    monitor-exit v1

    .line 351
    return-void

    .line 346
    :cond_1
    const-string v0, "SetEnvironment"

    const-string v2, "TBSEngine:ResourceIdentifier can not be empty."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setEventDispatchListener(Lcom/taobao/statistic/UTEventDispatchListener;)V
    .locals 3
    .parameter "pListener"

    .prologue
    .line 110
    sget-object v2, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 112
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/statistic/core/a;->setEventDispatchListener(Lcom/taobao/statistic/UTEventDispatchListener;)V

    .line 115
    :cond_0
    monitor-exit v2

    .line 116
    return-void

    .line 115
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "appKey"
    .parameter "appSecret"

    .prologue
    .line 255
    sget-object v2, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v2

    .line 256
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 257
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/taobao/statistic/core/a;->setKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    monitor-exit v2

    .line 261
    return-void

    .line 260
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static turnDebug()V
    .locals 3

    .prologue
    .line 154
    sget-object v2, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 156
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->turnDebug()V

    .line 159
    :cond_0
    monitor-exit v2

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static turnOnSecuritySDKSupport()V
    .locals 3

    .prologue
    .line 268
    sget-object v2, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v2

    .line 269
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 270
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->turnOnSecuritySDKSupport()V

    .line 273
    :cond_0
    monitor-exit v2

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static uninit()V
    .locals 2

    .prologue
    .line 59
    sget-object v1, Lcom/taobao/statistic/TBS;->hV:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->stop()V

    .line 64
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/statistic/TBS;->tbsEngine:Lcom/taobao/statistic/c;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    .line 66
    sget-object v0, Lcom/taobao/statistic/TBS;->resourceIdentifyer:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/statistic/c;->n(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->destroy()V

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/statistic/TBS;->hT:Lcom/taobao/statistic/c;

    .line 72
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/statistic/TBS;->isUninit:Z

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/statistic/TBS;->hW:Z

    .line 74
    monitor-exit v1

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateGPSInfo(Ljava/lang/String;DD)V
    .locals 7
    .parameter "pageKeyOrPageName"
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    .line 139
    sget-object v6, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v6

    .line 140
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 141
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->updateGPSInfo(Ljava/lang/String;DD)V

    .line 144
    :cond_0
    monitor-exit v6

    .line 145
    return-void

    .line 144
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static updateSessionProperties(Ljava/util/Properties;)V
    .locals 3
    .parameter "properties"

    .prologue
    .line 233
    sget-object v2, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    if-eqz p0, :cond_0

    .line 235
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 236
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p0}, Lcom/taobao/statistic/core/b;->updateSessionProperties(Ljava/util/Properties;)V

    .line 240
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    monitor-exit v2

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static updateUserAccount(Ljava/lang/String;)V
    .locals 3
    .parameter "userNick"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    sget-object v2, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 102
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/taobao/statistic/core/b;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    monitor-exit v2

    .line 106
    return-void

    .line 105
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "userNick"
    .parameter "userid"

    .prologue
    .line 119
    sget-object v2, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 121
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    monitor-exit v2

    .line 125
    return-void

    .line 124
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static userRegister(Ljava/lang/String;)V
    .locals 3
    .parameter "userNick"

    .prologue
    .line 286
    sget-object v2, Lcom/taobao/statistic/TBS;->hU:Ljava/lang/Object;

    monitor-enter v2

    .line 287
    :try_start_0
    invoke-static {}, Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 288
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p0}, Lcom/taobao/statistic/core/b;->userRegister(Ljava/lang/String;)V

    .line 291
    :cond_0
    monitor-exit v2

    .line 292
    return-void

    .line 291
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
