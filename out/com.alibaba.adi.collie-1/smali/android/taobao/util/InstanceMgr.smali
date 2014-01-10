.class public abstract Landroid/taobao/util/InstanceMgr;
.super Ljava/lang/Object;
.source "InstanceMgr.java"


# instance fields
.field protected InstPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/util/InstanceMgr;->InstPool:Ljava/util/HashMap;

    .line 16
    return-void
.end method

.method private addRef(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 32
    iget-object v1, p0, Landroid/taobao/util/InstanceMgr;->InstPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 34
    .local v0, objects:[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method private mapCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "url"

    .prologue
    .line 20
    const-string v1, "InstanceMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapCache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Landroid/taobao/util/InstanceMgr;->InstPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 23
    .local v0, objects:[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 26
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "url"
    .parameter "creater"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    const-string v3, "InstanceMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createInstance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1}, Landroid/taobao/util/InstanceMgr;->mapCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, ret:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, p1}, Landroid/taobao/util/InstanceMgr;->addRef(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    .line 114
    .end local v1           #ret:Ljava/lang/Object;
    .local v2, ret:Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 104
    .end local v2           #ret:Ljava/lang/Object;
    .restart local v1       #ret:Ljava/lang/Object;
    :cond_0
    :try_start_1
    const-string v3, "InstanceMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newInstance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/taobao/util/InstanceMgr;->instance(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_1

    .line 109
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    .line 110
    .local v0, objects:[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 111
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 112
    iget-object v3, p0, Landroid/taobao/util/InstanceMgr;->InstPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0           #objects:[Ljava/lang/Object;
    :cond_1
    move-object v2, v1

    .line 114
    .end local v1           #ret:Ljava/lang/Object;
    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 97
    .end local v2           #ret:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected decreaseRef(Ljava/lang/String;)I
    .locals 4
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 43
    iget-object v2, p0, Landroid/taobao/util/InstanceMgr;->InstPool:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 45
    .local v0, objects:[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 46
    const/4 v2, -0x1

    .line 53
    :goto_0
    return v2

    .line 48
    :cond_0
    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 49
    .local v1, ref:I
    if-nez v1, :cond_1

    .line 50
    const/4 v2, 0x0

    goto :goto_0

    .line 52
    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 53
    add-int/lit8 v2, v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "url"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    const-string v0, "InstanceMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p1}, Landroid/taobao/util/InstanceMgr;->mapCache(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract instance(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public declared-synchronized release(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/taobao/util/InstanceMgr;->decreaseRef(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, result:I
    if-nez v0, :cond_0

    .line 65
    iget-object v1, p0, Landroid/taobao/util/InstanceMgr;->InstPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    const/4 v1, 0x1

    .line 68
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 62
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized releaseAll()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/taobao/util/InstanceMgr;->InstPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
