.class public Lcom/taobao/statistic/core/h;
.super Lcom/taobao/statistic/c/b;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/core/h$a;
    }
.end annotation


# instance fields
.field private lj:Lcom/taobao/statistic/core/h$a;

.field private lk:Lcom/taobao/statistic/core/h$a;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 2
    .parameter "aRuntime"

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 257
    iput-object v0, p0, Lcom/taobao/statistic/core/h;->lj:Lcom/taobao/statistic/core/h$a;

    .line 258
    iput-object v0, p0, Lcom/taobao/statistic/core/h;->lk:Lcom/taobao/statistic/core/h$a;

    .line 262
    new-instance v0, Lcom/taobao/statistic/core/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/statistic/core/h$a;-><init>(Lcom/taobao/statistic/core/h;Z)V

    iput-object v0, p0, Lcom/taobao/statistic/core/h;->lj:Lcom/taobao/statistic/core/h$a;

    .line 263
    new-instance v0, Lcom/taobao/statistic/core/h$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/taobao/statistic/core/h$a;-><init>(Lcom/taobao/statistic/core/h;Z)V

    iput-object v0, p0, Lcom/taobao/statistic/core/h;->lk:Lcom/taobao/statistic/core/h$a;

    .line 264
    return-void
.end method

.method static synthetic a(Lcom/taobao/statistic/core/h;)Lcom/taobao/statistic/core/i;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/taobao/statistic/core/h;->iF:Lcom/taobao/statistic/core/i;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/statistic/core/h;)Lcom/taobao/statistic/core/i;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/taobao/statistic/core/h;->iF:Lcom/taobao/statistic/core/i;

    return-object v0
.end method

.method static synthetic c(Lcom/taobao/statistic/core/h;)Lcom/taobao/statistic/core/i;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/taobao/statistic/core/h;->iF:Lcom/taobao/statistic/core/i;

    return-object v0
.end method

.method static synthetic d(Lcom/taobao/statistic/core/h;)Lcom/taobao/statistic/core/i;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/taobao/statistic/core/h;->iF:Lcom/taobao/statistic/core/i;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized N(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/core/h;->lj:Lcom/taobao/statistic/core/h$a;

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/h$a;->N(I)V

    .line 296
    iget-object v0, p0, Lcom/taobao/statistic/core/h;->lk:Lcom/taobao/statistic/core/h$a;

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/h$a;->N(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized bz()V
    .locals 4

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/taobao/statistic/core/h;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->da()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/taobao/statistic/core/h;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->ct()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, sessionData:Ljava/lang/String;
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    const/4 v2, 0x1

    const-string v3, "SessionData"

    invoke-static {v2, v3, v1}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/taobao/statistic/core/h;->c([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .end local v1           #sessionData:Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    .restart local v1       #sessionData:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 270
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #sessionData:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized c([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/core/h;->lj:Lcom/taobao/statistic/core/h$a;

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/h$a;->f([B)Z

    .line 285
    iget-object v0, p0, Lcom/taobao/statistic/core/h;->lk:Lcom/taobao/statistic/core/h$a;

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/h$a;->f([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/core/h;->lj:Lcom/taobao/statistic/core/h$a;

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/h$a;->g([B)Z

    move-result v0

    .line 307
    .local v0, lResult:Z
    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/taobao/statistic/core/h;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bI()Lcom/taobao/statistic/core/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/n;->cC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_0
    monitor-exit p0

    return-void

    .line 306
    .end local v0           #lResult:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized e([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/core/h;->lk:Lcom/taobao/statistic/core/h$a;

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/h$a;->g([B)Z

    move-result v0

    .line 314
    .local v0, lResult:Z
    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/taobao/statistic/core/h;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bI()Lcom/taobao/statistic/core/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/n;->cC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_0
    monitor-exit p0

    return-void

    .line 313
    .end local v0           #lResult:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
