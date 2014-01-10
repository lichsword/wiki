.class public Lcom/taobao/statistic/b/a/b;
.super Lcom/taobao/statistic/module/a/a;
.source "NetworkTimestampBusiness.java"


# static fields
.field private static iA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private iB:Z

.field private iC:Lcom/taobao/statistic/core/q;

.field private iD:Lcom/taobao/statistic/core/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/taobao/statistic/b/a/b$1;

    invoke-direct {v0}, Lcom/taobao/statistic/b/a/b$1;-><init>()V

    sput-object v0, Lcom/taobao/statistic/b/a/b;->iA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 7
    .parameter "aRuntime"

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/taobao/statistic/module/a/a;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 30
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/taobao/statistic/b/a/b;->iB:Z

    .line 31
    iput-object v6, p0, Lcom/taobao/statistic/b/a/b;->iC:Lcom/taobao/statistic/core/q;

    .line 32
    iput-object v6, p0, Lcom/taobao/statistic/b/a/b;->iD:Lcom/taobao/statistic/core/c;

    .line 46
    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/statistic/b/a/b;->iC:Lcom/taobao/statistic/core/q;

    .line 48
    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/statistic/b/a/b;->iD:Lcom/taobao/statistic/core/c;

    .line 49
    iget-object v5, p0, Lcom/taobao/statistic/b/a/b;->iD:Lcom/taobao/statistic/core/c;

    if-eqz v5, :cond_0

    .line 50
    iget-object v5, p0, Lcom/taobao/statistic/b/a/b;->iD:Lcom/taobao/statistic/core/c;

    invoke-virtual {v5}, Lcom/taobao/statistic/core/c;->bj()Lcom/taobao/statistic/core/a/c;

    move-result-object v4

    .line 52
    .local v4, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v4, :cond_0

    .line 53
    const-string v5, "LastTimestamp"

    invoke-virtual {v4, v5}, Lcom/taobao/statistic/core/a/c;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 54
    .local v0, lastTimestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v0

    .line 55
    .local v2, mistiming:J
    const-wide/32 v5, -0x927c0

    cmp-long v5, v5, v2

    if-gtz v5, :cond_0

    const-wide/32 v5, 0x927c0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/taobao/statistic/b/a/b;->aE()Z

    .line 61
    .end local v0           #lastTimestamp:J
    .end local v2           #mistiming:J
    .end local v4           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 3
    .parameter "pTimestamp"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/taobao/statistic/b/a/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bI()Lcom/taobao/statistic/core/n;

    move-result-object v0

    .line 71
    .local v0, handler:Lcom/taobao/statistic/core/n;
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/n;->d(J)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/taobao/statistic/b/a/b;->iC:Lcom/taobao/statistic/core/q;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/taobao/statistic/b/a/b;->iC:Lcom/taobao/statistic/core/q;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/core/q;->p(Z)V

    .line 77
    iget-object v1, p0, Lcom/taobao/statistic/b/a/b;->iC:Lcom/taobao/statistic/core/q;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/statistic/core/q;->e(J)V

    goto :goto_0
.end method

.method private declared-synchronized a(JZ)V
    .locals 4
    .parameter "pTimestamp"
    .parameter "pIsFromLocal"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/b/a/b;->iC:Lcom/taobao/statistic/core/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/statistic/b/a/b;->iC:Lcom/taobao/statistic/core/q;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cO()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-boolean v1, p0, Lcom/taobao/statistic/b/a/b;->iB:Z

    if-nez v1, :cond_0

    const-wide v1, 0x133d350aa33L

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/taobao/statistic/b/a/b;->a(J)V

    .line 97
    if-nez p3, :cond_0

    .line 98
    iget-object v1, p0, Lcom/taobao/statistic/b/a/b;->iD:Lcom/taobao/statistic/core/c;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/taobao/statistic/b/a/b;->iD:Lcom/taobao/statistic/core/c;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/c;->bj()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 101
    .local v0, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_0

    .line 102
    const-string v1, "LastTimestamp"

    invoke-virtual {v0, v1, p1, p2}, Lcom/taobao/statistic/core/a/c;->putLong(Ljava/lang/String;J)V

    .line 103
    iget-object v1, p0, Lcom/taobao/statistic/b/a/b;->iC:Lcom/taobao/statistic/core/q;

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "Mistiming"

    iget-object v2, p0, Lcom/taobao/statistic/b/a/b;->iC:Lcom/taobao/statistic/core/q;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->cK()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a/c;->putLong(Ljava/lang/String;J)V

    .line 109
    :goto_0
    const-string v1, "Date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a/c;->putLong(Ljava/lang/String;J)V

    .line 110
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a/c;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    .restart local v0       #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_1
    :try_start_1
    const-string v1, "Mistiming"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a/c;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v0           #ppc:Lcom/taobao/statistic/core/a/c;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized aE()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 140
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Lcom/taobao/statistic/b/a/b;->iB:Z

    if-nez v8, :cond_2

    .line 141
    iget-object v8, p0, Lcom/taobao/statistic/b/a/b;->iD:Lcom/taobao/statistic/core/c;

    if-eqz v8, :cond_2

    .line 142
    iget-object v8, p0, Lcom/taobao/statistic/b/a/b;->iD:Lcom/taobao/statistic/core/c;

    invoke-virtual {v8}, Lcom/taobao/statistic/core/c;->bj()Lcom/taobao/statistic/core/a/c;

    move-result-object v6

    .line 144
    .local v6, ppc:Lcom/taobao/statistic/core/a/c;
    const-wide/16 v0, -0x1

    .line 145
    .local v0, lastTimestamp:J
    if-eqz v6, :cond_0

    .line 146
    const-string v8, "LastTimestamp"

    invoke-virtual {v6, v8}, Lcom/taobao/statistic/core/a/c;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 148
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 150
    .local v4, nowTimestamp:J
    const-wide/32 v8, 0x5265c00

    add-long/2addr v8, v4

    cmp-long v8, v8, v0

    if-lez v8, :cond_2

    const-wide v8, 0x133d350aa33L

    cmp-long v8, v0, v8

    if-lez v8, :cond_2

    .line 152
    const-wide/16 v2, 0x0

    .line 153
    .local v2, mistiming:J
    if-eqz v6, :cond_1

    .line 154
    const-string v8, "Mistiming"

    invoke-virtual {v6, v8}, Lcom/taobao/statistic/core/a/c;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 156
    :cond_1
    add-long v8, v4, v2

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/taobao/statistic/b/a/b;->a(JZ)V

    .line 157
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/taobao/statistic/b/a/b;->iB:Z

    .line 158
    const/4 v8, 0x1

    const-string v9, "Use old timestamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 160
    const/4 v8, 0x1

    const-string v9, "Mistiming"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v0           #lastTimestamp:J
    .end local v2           #mistiming:J
    .end local v4           #nowTimestamp:J
    .end local v6           #ppc:Lcom/taobao/statistic/core/a/c;
    :goto_0
    monitor-exit p0

    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public aC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    sget-object v0, Lcom/taobao/statistic/b/a/b;->iA:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized aD()V
    .locals 5

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/taobao/statistic/b/a/b;->aE()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    .local v0, timestamp:J
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/taobao/statistic/b/a/b;->a(JZ)V

    .line 132
    const/4 v2, 0x1

    const-string v3, "Use Local Timestamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v0           #timestamp:J
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "configurationName"
    .parameter "aConfiguration"

    .prologue
    .line 182
    const-wide/16 v2, 0x0

    .line 184
    .local v2, v:J
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, lJson:Lorg/json/JSONObject;
    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 190
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 191
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/taobao/statistic/b/a/b;->a(JZ)V

    .line 193
    .end local v1           #lJson:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/taobao/statistic/b/a/b;->iC:Lcom/taobao/statistic/core/q;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->cO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/taobao/statistic/b/a/b;->aD()V

    .line 123
    :cond_0
    return-void
.end method
