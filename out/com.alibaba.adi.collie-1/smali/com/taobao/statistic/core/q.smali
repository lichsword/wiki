.class public Lcom/taobao/statistic/core/q;
.super Ljava/lang/Object;
.source "Variables.java"


# instance fields
.field private jO:Ljava/lang/String;

.field private mS:Ljava/lang/String;

.field private mT:Ljava/lang/String;

.field private mU:Ljava/lang/String;

.field private mV:J

.field private mW:Z

.field private mX:Z

.field private mY:Z

.field private mZ:Z

.field private na:Z

.field private nb:Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;

.field private nc:Z

.field private nd:Ljava/lang/Object;

.field private ne:Z

.field private nf:Z

.field private ng:Ljava/lang/Object;

.field private nh:Z

.field private ni:Ljava/lang/String;

.field private nj:Z

.field private nk:Z

.field private nl:Z

.field private nm:Z

.field private nn:Z

.field private no:Z

.field private np:Ljava/lang/String;

.field private nq:Ljava/lang/String;

.field private nr:Ljava/lang/String;

.field private ns:Z

.field private nt:Z

.field private nu:Ljava/lang/String;

.field private timestamp:J

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "5.0.1"

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->mS:Ljava/lang/String;

    .line 17
    const-string v0, "Android"

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->mT:Ljava/lang/String;

    .line 18
    const-string v0, "1.3.6"

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->mU:Ljava/lang/String;

    .line 19
    iput-wide v3, p0, Lcom/taobao/statistic/core/q;->mV:J

    .line 20
    iput v1, p0, Lcom/taobao/statistic/core/q;->uid:I

    .line 21
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->mW:Z

    .line 22
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->mX:Z

    .line 23
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->mY:Z

    .line 24
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->mZ:Z

    .line 25
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->na:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->nb:Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;

    .line 27
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->nc:Z

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->nd:Ljava/lang/Object;

    .line 29
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->ne:Z

    .line 30
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->nf:Z

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->ng:Ljava/lang/Object;

    .line 32
    iput-boolean v2, p0, Lcom/taobao/statistic/core/q;->nh:Z

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->ni:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->nj:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->jO:Ljava/lang/String;

    .line 36
    iput-boolean v2, p0, Lcom/taobao/statistic/core/q;->nk:Z

    .line 37
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->nl:Z

    .line 38
    iput-wide v3, p0, Lcom/taobao/statistic/core/q;->timestamp:J

    .line 39
    iput-boolean v2, p0, Lcom/taobao/statistic/core/q;->nm:Z

    .line 40
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->nn:Z

    .line 41
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->no:Z

    .line 42
    const-string v0, "http://adash.m.taobao.com/rest/ur"

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->np:Ljava/lang/String;

    .line 43
    const-string v0, "http://adash.m.taobao.com/rest/gc"

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->nq:Ljava/lang/String;

    .line 44
    const-string v0, "http://adash.m.taobao.com/rest/er"

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->nr:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->ns:Z

    .line 46
    iput-boolean v1, p0, Lcom/taobao/statistic/core/q;->nt:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/q;->nu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public L(Ljava/lang/String;)V
    .locals 0
    .parameter "privatePersistentConfigDir"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/taobao/statistic/core/q;->ni:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0
    .parameter "resourceIdentifier"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/taobao/statistic/core/q;->jO:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 1
    .parameter "pUploadRecordUrl"

    .prologue
    .line 260
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iput-object p1, p0, Lcom/taobao/statistic/core/q;->np:Ljava/lang/String;

    .line 263
    :cond_0
    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 1
    .parameter "pGetConfigUrl"

    .prologue
    .line 270
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iput-object p1, p0, Lcom/taobao/statistic/core/q;->nq:Ljava/lang/String;

    .line 273
    :cond_0
    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 1
    .parameter "pExceptionReportUrl"

    .prologue
    .line 280
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iput-object p1, p0, Lcom/taobao/statistic/core/q;->nr:Ljava/lang/String;

    .line 283
    :cond_0
    return-void
.end method

.method public Q(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 127
    iput p1, p0, Lcom/taobao/statistic/core/q;->uid:I

    .line 128
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0
    .parameter "pRealTimeDebugUploadServerUrl"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/taobao/statistic/core/q;->nu:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public a(Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;)V
    .locals 0
    .parameter "mReceiver"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/taobao/statistic/core/q;->nb:Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;

    .line 120
    return-void
.end method

.method public cJ()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->ns:Z

    return v0
.end method

.method public cK()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/taobao/statistic/core/q;->mV:J

    return-wide v0
.end method

.method public cL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taobao/statistic/core/q;->mS:Ljava/lang/String;

    return-object v0
.end method

.method public cM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/taobao/statistic/core/q;->mT:Ljava/lang/String;

    return-object v0
.end method

.method public cN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taobao/statistic/core/q;->mU:Ljava/lang/String;

    return-object v0
.end method

.method public cO()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->mW:Z

    return v0
.end method

.method public cP()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->mX:Z

    return v0
.end method

.method public cQ()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->mZ:Z

    return v0
.end method

.method public cR()Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/taobao/statistic/core/q;->nb:Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;

    return-object v0
.end method

.method public cS()Z
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/taobao/statistic/core/q;->nd:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->nc:Z

    monitor-exit v1

    return v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cT()V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/taobao/statistic/core/q;->nd:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/statistic/core/q;->nc:Z

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cU()V
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/taobao/statistic/core/q;->nd:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/statistic/core/q;->nc:Z

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cV()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->ne:Z

    return v0
.end method

.method public cW()V
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/taobao/statistic/core/q;->nd:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/statistic/core/q;->ne:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/core/q;->nm:Z

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cX()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->nf:Z

    return v0
.end method

.method public cY()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/core/q;->nf:Z

    .line 169
    return-void
.end method

.method public cZ()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/core/q;->nf:Z

    .line 173
    return-void
.end method

.method public da()Z
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/taobao/statistic/core/q;->ng:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->na:Z

    monitor-exit v1

    return v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public db()V
    .locals 2

    .prologue
    .line 182
    iget-object v1, p0, Lcom/taobao/statistic/core/q;->ng:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/statistic/core/q;->na:Z

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dc()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->nh:Z

    return v0
.end method

.method public dd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/taobao/statistic/core/q;->ni:Ljava/lang/String;

    return-object v0
.end method

.method public de()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->nj:Z

    return v0
.end method

.method public df()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/taobao/statistic/core/q;->jO:Ljava/lang/String;

    return-object v0
.end method

.method public dg()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->nk:Z

    return v0
.end method

.method public dh()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->nl:Z

    return v0
.end method

.method public di()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/taobao/statistic/core/q;->timestamp:J

    return-wide v0
.end method

.method public dj()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->nm:Z

    return v0
.end method

.method public dk()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->nn:Z

    return v0
.end method

.method public dl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/taobao/statistic/core/q;->np:Ljava/lang/String;

    return-object v0
.end method

.method public dm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/taobao/statistic/core/q;->nq:Ljava/lang/String;

    return-object v0
.end method

.method public dn()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/taobao/statistic/core/q;->nt:Z

    return v0
.end method

.method public do()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/taobao/statistic/core/q;->nu:Ljava/lang/String;

    return-object v0
.end method

.method public e(J)V
    .locals 2
    .parameter "timestamp"

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/taobao/statistic/core/q;->mV:J

    .line 67
    iput-wide p1, p0, Lcom/taobao/statistic/core/q;->timestamp:J

    .line 68
    return-void
.end method

.method public o(Z)V
    .locals 0
    .parameter "pIsTnsDelay"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/taobao/statistic/core/q;->ns:Z

    .line 55
    return-void
.end method

.method public p(Z)V
    .locals 0
    .parameter "timestampStatus"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/taobao/statistic/core/q;->mW:Z

    .line 88
    return-void
.end method

.method public q(Z)V
    .locals 0
    .parameter "isRunningBackground"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/taobao/statistic/core/q;->mX:Z

    .line 96
    return-void
.end method

.method public r(Z)V
    .locals 0
    .parameter "isConnectionReceiverRunning"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/taobao/statistic/core/q;->mZ:Z

    .line 112
    return-void
.end method

.method public s(Z)V
    .locals 0
    .parameter "isFirstPageEnter"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/taobao/statistic/core/q;->nh:Z

    .line 193
    return-void
.end method

.method public t(Z)V
    .locals 0
    .parameter "isSwitchBackground"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/taobao/statistic/core/q;->nj:Z

    .line 209
    return-void
.end method

.method public u(Z)V
    .locals 0
    .parameter "isOk"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/taobao/statistic/core/q;->nk:Z

    .line 225
    return-void
.end method

.method public v(Z)V
    .locals 0
    .parameter "isCrashed"

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/taobao/statistic/core/q;->nl:Z

    .line 233
    return-void
.end method

.method public w(Z)V
    .locals 0
    .parameter "aIsTBSAE"

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/taobao/statistic/core/q;->nn:Z

    .line 249
    return-void
.end method

.method public x(Z)V
    .locals 0
    .parameter "pRealTimeDebug"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/taobao/statistic/core/q;->nt:Z

    .line 295
    return-void
.end method
