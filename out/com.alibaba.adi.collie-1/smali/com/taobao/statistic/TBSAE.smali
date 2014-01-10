.class public Lcom/taobao/statistic/TBSAE;
.super Ljava/lang/Object;
.source "TBSAE.java"

# interfaces
.implements Lcom/taobao/statistic/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/TBSAE$Network;,
        Lcom/taobao/statistic/TBSAE$Adv;,
        Lcom/taobao/statistic/TBSAE$CrashHandler;,
        Lcom/taobao/statistic/TBSAE$Page;,
        Lcom/taobao/statistic/TBSAE$Ext;
    }
.end annotation


# static fields
.field private static mCallInitLock:Ljava/lang/Object;


# instance fields
.field public adv:Lcom/taobao/statistic/TBSAE$Adv;

.field public crashHandler:Lcom/taobao/statistic/TBSAE$CrashHandler;

.field public ext:Lcom/taobao/statistic/TBSAE$Ext;

.field private isUninit:Z

.field public network:Lcom/taobao/statistic/TBSAE$Network;

.field public page:Lcom/taobao/statistic/TBSAE$Page;

.field private resourceIdentifyer:Ljava/lang/String;

.field private tbsEngine:Lcom/taobao/statistic/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/statistic/TBSAE;->mCallInitLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "resourceIdentifier"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/TBSAE;->resourceIdentifyer:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    .line 29
    new-instance v0, Lcom/taobao/statistic/TBSAE$Adv;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/TBSAE$Adv;-><init>(Lcom/taobao/statistic/TBSAE;)V

    iput-object v0, p0, Lcom/taobao/statistic/TBSAE;->adv:Lcom/taobao/statistic/TBSAE$Adv;

    .line 30
    new-instance v0, Lcom/taobao/statistic/TBSAE$Ext;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/TBSAE$Ext;-><init>(Lcom/taobao/statistic/TBSAE;)V

    iput-object v0, p0, Lcom/taobao/statistic/TBSAE;->ext:Lcom/taobao/statistic/TBSAE$Ext;

    .line 31
    new-instance v0, Lcom/taobao/statistic/TBSAE$Page;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/TBSAE$Page;-><init>(Lcom/taobao/statistic/TBSAE;)V

    iput-object v0, p0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    .line 32
    new-instance v0, Lcom/taobao/statistic/TBSAE$CrashHandler;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/TBSAE$CrashHandler;-><init>(Lcom/taobao/statistic/TBSAE;)V

    iput-object v0, p0, Lcom/taobao/statistic/TBSAE;->crashHandler:Lcom/taobao/statistic/TBSAE$CrashHandler;

    .line 33
    new-instance v0, Lcom/taobao/statistic/TBSAE$Network;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/TBSAE$Network;-><init>(Lcom/taobao/statistic/TBSAE;)V

    iput-object v0, p0, Lcom/taobao/statistic/TBSAE;->network:Lcom/taobao/statistic/TBSAE$Network;

    .line 34
    iput-boolean v1, p0, Lcom/taobao/statistic/TBSAE;->isUninit:Z

    .line 49
    iput-object v2, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    .line 50
    iput-boolean v1, p0, Lcom/taobao/statistic/TBSAE;->isUninit:Z

    .line 51
    if-eqz p1, :cond_1

    .line 52
    invoke-static {p2}, Lcom/taobao/statistic/c;->m(Ljava/lang/String;)Lcom/taobao/statistic/c;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    .line 53
    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/c;->setEnvironment(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/q;->w(Z)V

    .line 57
    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/statistic/module/c/a;->a(Lcom/taobao/statistic/b;)V

    .line 58
    iput-object p2, p0, Lcom/taobao/statistic/TBSAE;->resourceIdentifyer:Ljava/lang/String;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const-string v0, "TBSAE"

    const-string v1, "TBSEngine:Context is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "TBSAE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TBSEngine("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):Context is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/taobao/statistic/TBSAE;->mCallInitLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/statistic/TBSAE;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/taobao/statistic/TBSAE;->isUninit:Z

    return v0
.end method

.method static synthetic access$102(Lcom/taobao/statistic/TBSAE;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/taobao/statistic/TBSAE;->isUninit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/c;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    return-object v0
.end method

.method private getExecProxy()Lcom/taobao/statistic/core/b;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    .line 72
    .local v0, tEngine:Lcom/taobao/statistic/c;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/statistic/TBSAE$1;

    invoke-direct {v1, p0}, Lcom/taobao/statistic/TBSAE$1;-><init>(Lcom/taobao/statistic/TBSAE;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 214
    .local v0, usertrackInitThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 215
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 227
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 229
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/a;->setChannel(Ljava/lang/String;)V

    .line 233
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public setKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "appKey"
    .parameter "appSecret"

    .prologue
    .line 90
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 92
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/taobao/statistic/core/a;->setKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public turnDebug()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 106
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->turnDebug()V

    .line 109
    :cond_0
    return-void
.end method

.method public uninit()V
    .locals 2

    .prologue
    .line 119
    sget-object v1, Lcom/taobao/statistic/TBSAE;->mCallInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->stop()V

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/TBSAE;->tbsEngine:Lcom/taobao/statistic/c;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/TBSAE;->isUninit:Z

    .line 126
    iget-object v0, p0, Lcom/taobao/statistic/TBSAE;->resourceIdentifyer:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/statistic/c;->n(Ljava/lang/String;)V

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateGPSInfo(Ljava/lang/String;DD)V
    .locals 6
    .parameter "pageKeyOrPageName"
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    .line 168
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 170
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->updateGPSInfo(Ljava/lang/String;DD)V

    .line 174
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "userNick"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 144
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/taobao/statistic/core/b;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "userNick"
    .parameter "userid"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 151
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method

.method public userRegister(Ljava/lang/String;)V
    .locals 2
    .parameter "userNick"

    .prologue
    .line 245
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 247
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/b;->userRegister(Ljava/lang/String;)V

    .line 251
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method
