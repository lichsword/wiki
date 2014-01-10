.class public Lorg/usertrack/android/library/d/a;
.super Ljava/lang/Object;
.source "PhoneTraffic.java"


# instance fields
.field private qE:Lorg/usertrack/android/library/d/b;

.field private qF:Lorg/usertrack/android/library/d/b;

.field private qG:Lorg/usertrack/android/library/d/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    .line 5
    iput-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    .line 6
    iput-object v0, p0, Lorg/usertrack/android/library/d/a;->qG:Lorg/usertrack/android/library/d/b;

    .line 9
    new-instance v0, Lorg/usertrack/android/library/d/b;

    invoke-direct {v0}, Lorg/usertrack/android/library/d/b;-><init>()V

    iput-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    .line 10
    new-instance v0, Lorg/usertrack/android/library/d/b;

    invoke-direct {v0}, Lorg/usertrack/android/library/d/b;-><init>()V

    iput-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lorg/usertrack/android/library/d/b;)V
    .locals 10
    .parameter "pTrafficItem"

    .prologue
    const-wide/16 v8, 0x0

    .line 64
    monitor-enter p0

    .line 65
    if-eqz p1, :cond_1

    .line 66
    :try_start_0
    iget-object v4, p0, Lorg/usertrack/android/library/d/a;->qG:Lorg/usertrack/android/library/d/b;

    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {p1}, Lorg/usertrack/android/library/d/b;->eA()J

    move-result-wide v4

    iget-object v6, p0, Lorg/usertrack/android/library/d/a;->qG:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v6}, Lorg/usertrack/android/library/d/b;->eA()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 68
    .local v0, rx:J
    invoke-virtual {p1}, Lorg/usertrack/android/library/d/b;->ez()J

    move-result-wide v4

    iget-object v6, p0, Lorg/usertrack/android/library/d/a;->qG:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v6}, Lorg/usertrack/android/library/d/b;->ez()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 69
    .local v2, tx:J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    .line 70
    iget-object v4, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v4, v0, v1}, Lorg/usertrack/android/library/d/b;->i(J)V

    .line 71
    iget-object v4, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v4, v2, v3}, Lorg/usertrack/android/library/d/b;->h(J)V

    .line 74
    .end local v0           #rx:J
    .end local v2           #tx:J
    :cond_0
    iput-object p1, p0, Lorg/usertrack/android/library/d/a;->qG:Lorg/usertrack/android/library/d/b;

    .line 64
    :cond_1
    monitor-exit p0

    .line 77
    return-void

    .line 64
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public b(Lorg/usertrack/android/library/d/b;)V
    .locals 10
    .parameter "pTrafficItem"

    .prologue
    const-wide/16 v8, 0x0

    .line 80
    monitor-enter p0

    .line 81
    if-eqz p1, :cond_1

    .line 82
    :try_start_0
    iget-object v4, p0, Lorg/usertrack/android/library/d/a;->qG:Lorg/usertrack/android/library/d/b;

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {p1}, Lorg/usertrack/android/library/d/b;->eA()J

    move-result-wide v4

    iget-object v6, p0, Lorg/usertrack/android/library/d/a;->qG:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v6}, Lorg/usertrack/android/library/d/b;->eA()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 84
    .local v0, rx:J
    invoke-virtual {p1}, Lorg/usertrack/android/library/d/b;->ez()J

    move-result-wide v4

    iget-object v6, p0, Lorg/usertrack/android/library/d/a;->qG:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v6}, Lorg/usertrack/android/library/d/b;->ez()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 85
    .local v2, tx:J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    .line 86
    iget-object v4, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v4, v0, v1}, Lorg/usertrack/android/library/d/b;->i(J)V

    .line 87
    iget-object v4, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v4, v2, v3}, Lorg/usertrack/android/library/d/b;->h(J)V

    .line 90
    .end local v0           #rx:J
    .end local v2           #tx:J
    :cond_0
    iput-object p1, p0, Lorg/usertrack/android/library/d/a;->qG:Lorg/usertrack/android/library/d/b;

    .line 80
    :cond_1
    monitor-exit p0

    .line 93
    return-void

    .line 80
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/usertrack/android/library/d/b;->i(J)V

    .line 99
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/usertrack/android/library/d/b;->h(J)V

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/usertrack/android/library/d/b;->i(J)V

    .line 103
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/usertrack/android/library/d/b;->h(J)V

    .line 105
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/usertrack/android/library/d/a;->qG:Lorg/usertrack/android/library/d/b;

    .line 96
    monitor-exit p0

    .line 107
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized et()J
    .locals 2

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/b;->eB()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 17
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized eu()J
    .locals 2

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/b;->eB()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 24
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ev()J
    .locals 2

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/b;->eA()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 31
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ew()J
    .locals 2

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qE:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/b;->ez()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 38
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ex()J
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/b;->eA()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 45
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ey()J
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/usertrack/android/library/d/a;->qF:Lorg/usertrack/android/library/d/b;

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/b;->ez()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 52
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
