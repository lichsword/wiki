.class public Lcom/taobao/statistic/core/g;
.super Ljava/lang/Object;
.source "Methods.java"

# interfaces
.implements Lcom/taobao/statistic/core/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/core/g$a;
    }
.end annotation


# instance fields
.field private bS:Ljava/lang/Object;

.field private bT:Ljava/lang/Object;

.field private iF:Lcom/taobao/statistic/core/i;

.field private lf:Z

.field private lg:I

.field private lh:Z


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 2
    .parameter "runtime"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/g;->bS:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/g;->bT:Ljava/lang/Object;

    .line 22
    iput-boolean v1, p0, Lcom/taobao/statistic/core/g;->lf:Z

    .line 23
    iput v1, p0, Lcom/taobao/statistic/core/g;->lg:I

    .line 24
    iput-boolean v1, p0, Lcom/taobao/statistic/core/g;->lh:Z

    .line 27
    iput-object p1, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    .line 29
    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/a$c;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/taobao/statistic/core/g;)Lcom/taobao/statistic/core/i;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/statistic/core/g;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/taobao/statistic/core/g;->bx()V

    return-void
.end method

.method private bv()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/taobao/statistic/core/g;->bS:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->da()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->cO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bf()V

    .line 114
    :cond_0
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bx()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->cX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/taobao/statistic/core/g;->by()V

    .line 157
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->cZ()V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public L(I)V
    .locals 2
    .parameter "pEventID"

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/taobao/statistic/core/g;->lh:Z

    if-nez v0, :cond_2

    .line 223
    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_3

    .line 225
    :cond_0
    iget v0, p0, Lcom/taobao/statistic/core/g;->lg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/statistic/core/g;->lg:I

    .line 231
    :cond_1
    :goto_0
    iget v0, p0, Lcom/taobao/statistic/core/g;->lg:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/core/g;->lf:Z

    .line 233
    invoke-virtual {p0}, Lcom/taobao/statistic/core/g;->bu()V

    .line 236
    :cond_2
    return-void

    .line 226
    :cond_3
    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_1

    .line 228
    iget v0, p0, Lcom/taobao/statistic/core/g;->lg:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/taobao/statistic/core/g;->lg:I

    goto :goto_0
.end method

.method public M(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bH()Lcom/taobao/statistic/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/h;->N(I)V

    .line 85
    invoke-virtual {p0}, Lcom/taobao/statistic/core/g;->by()V

    .line 86
    return-void
.end method

.method public bt()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 50
    const/4 v7, 0x1

    .line 51
    .local v7, isForeground:Z
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->cP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v7, 0x0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v8

    .line 56
    .local v8, ppc:Lcom/taobao/statistic/core/a/c;
    const/4 v9, 0x0

    .line 57
    .local v9, startCount:I
    const-string v4, ""

    .line 58
    .local v4, appStatus:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 59
    const-string v0, "D_START"

    invoke-virtual {v8, v0}, Lcom/taobao/statistic/core/a/c;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 60
    const-string v0, "APP_STATUS"

    invoke-virtual {v8, v0}, Lcom/taobao/statistic/core/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {v8}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 63
    :cond_1
    invoke-static {v4}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    sget-object v0, Lcom/taobao/statistic/APPSTATUS;->STOPPED:Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v0}, Lcom/taobao/statistic/APPSTATUS;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    :cond_2
    if-nez v9, :cond_4

    .line 68
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    const-string v1, "Page_UsertrackInit"

    const/16 v2, 0x3ea

    if-eqz v7, :cond_3

    const-string v3, "Foreground"

    :goto_0
    new-array v6, v6, [Ljava/lang/String;

    const-string v10, "dsc=0"

    aput-object v10, v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 79
    :goto_1
    invoke-direct {p0}, Lcom/taobao/statistic/core/g;->bv()V

    .line 80
    return-void

    .line 68
    :cond_3
    const-string v3, "Background"

    goto :goto_0

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    const-string v1, "Page_UsertrackInit"

    const/16 v2, 0x3eb

    if-eqz v7, :cond_5

    const-string v3, "Foreground"

    :goto_2
    new-array v6, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dsc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v3, "Background"

    goto :goto_2
.end method

.method public bu()V
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/taobao/statistic/core/g;->bT:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/statistic/core/g;->lf:Z

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    const-string v2, "Methods"

    const-string v3, "UrgentUpload."

    invoke-static {v0, v2, v3}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 98
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/taobao/statistic/core/g;->M(I)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/core/g;->lh:Z

    .line 102
    :cond_0
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized bw()V
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->da()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bH()Lcom/taobao/statistic/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/h;->bz()V

    .line 147
    invoke-direct {p0}, Lcom/taobao/statistic/core/g;->bv()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public by()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->dj()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cS()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cY()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance v0, Lcom/taobao/statistic/core/g$a;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/core/g$a;-><init>(Lcom/taobao/statistic/core/g;)V

    .line 172
    .local v0, uploadThread:Ljava/lang/Thread;
    const-string v1, "UploadThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public c(J)V
    .locals 4
    .parameter "timestamp"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/q;->e(J)V

    .line 124
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    new-instance v1, Lorg/usertrack/android/utils/h;

    iget-object v2, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->cK()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/usertrack/android/utils/h;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/i;->a(Lorg/usertrack/android/utils/h;)V

    .line 126
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/q;->p(Z)V

    .line 127
    invoke-direct {p0}, Lcom/taobao/statistic/core/g;->bv()V

    .line 128
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "access"
    .parameter "subAccess"

    .prologue
    .line 131
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bN()Lcom/ut/device/b;

    move-result-object v0

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Lcom/ut/device/b;->setAccess(Ljava/lang/String;)V

    .line 136
    :goto_0
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bN()Lcom/ut/device/b;

    move-result-object v0

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Lcom/ut/device/b;->aj(Ljava/lang/String;)V

    .line 141
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/statistic/core/g;->bw()V

    .line 142
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bN()Lcom/ut/device/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/device/b;->setAccess(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bN()Lcom/ut/device/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ut/device/b;->aj(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public u(Ljava/lang/String;)V
    .locals 26
    .parameter "pageName"

    .prologue
    .line 33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/usertrack/android/library/d/c;->finish()V

    .line 34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/usertrack/android/library/d/c;->et()J

    move-result-wide v10

    .line 35
    .local v10, mobileTotal:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/usertrack/android/library/d/c;->eu()J

    move-result-wide v18

    .line 36
    .local v18, wifiTotal:J
    add-long v16, v10, v18

    .line 37
    .local v16, total:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/usertrack/android/library/d/c;->ev()J

    move-result-wide v12

    .line 38
    .local v12, mobile_rx:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/usertrack/android/library/d/c;->ew()J

    move-result-wide v14

    .line 39
    .local v14, mobile_tx:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/usertrack/android/library/d/c;->ex()J

    move-result-wide v20

    .line 40
    .local v20, wifi_rx:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/usertrack/android/library/d/c;->ey()J

    move-result-wide v22

    .line 41
    .local v22, wifi_tx:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v3

    const/16 v5, 0xfa7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x4

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mobile_rx="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v9, v4

    const/4 v4, 0x1

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mobile_tx="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v9, v4

    const/4 v4, 0x2

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "wifi_rx="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v9, v4

    const/4 v4, 0x3

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "wifi_tx="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v9, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/g;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/usertrack/android/library/d/c;->reset()V

    .line 46
    return-void
.end method
