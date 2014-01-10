.class public Lcom/taobao/statistic/module/g/a;
.super Lcom/taobao/statistic/module/g/b;
.source "DelayEventIDStrategier.java"


# instance fields
.field private oL:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/taobao/statistic/module/g/b;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/module/g/a;->oL:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public U(I)Lcom/taobao/statistic/module/g/c;
    .locals 6
    .parameter "pEventId"

    .prologue
    .line 70
    iget-object v4, p0, Lcom/taobao/statistic/module/g/a;->oL:Ljava/lang/Object;

    monitor-enter v4

    .line 71
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, lKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/statistic/module/g/a;->oN:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/statistic/module/g/a;->oN:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    new-instance v1, Lcom/taobao/statistic/module/g/c;

    invoke-direct {v1}, Lcom/taobao/statistic/module/g/c;-><init>()V

    .line 75
    .local v1, lResult:Lcom/taobao/statistic/module/g/c;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/taobao/statistic/module/g/c;->z(Z)V

    .line 76
    monitor-exit v4

    move-object v2, v1

    .line 84
    .end local v1           #lResult:Lcom/taobao/statistic/module/g/c;
    .local v2, lResult:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 79
    .end local v2           #lResult:Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/statistic/module/g/b;->U(I)Lcom/taobao/statistic/module/g/c;

    move-result-object v1

    .line 81
    .restart local v1       #lResult:Lcom/taobao/statistic/module/g/c;
    invoke-virtual {v1}, Lcom/taobao/statistic/module/g/c;->dS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/taobao/statistic/module/g/c;->z(Z)V

    .line 84
    :cond_1
    monitor-exit v4

    move-object v2, v1

    .restart local v2       #lResult:Ljava/lang/Object;
    goto :goto_0

    .line 85
    .end local v0           #lKey:Ljava/lang/String;
    .end local v1           #lResult:Lcom/taobao/statistic/module/g/c;
    .end local v2           #lResult:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public c(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pStrategyArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, -0x3

    .line 14
    iget-object v7, p0, Lcom/taobao/statistic/module/g/a;->oL:Ljava/lang/Object;

    monitor-enter v7

    .line 15
    if-eqz p1, :cond_6

    .line 17
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .local v1, lDict:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .local v5, strategy:Ljava/lang/Integer;
    :try_start_1
    invoke-interface {v1, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    move-exception v6

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v6

    :try_start_2
    throw v6

    .line 66
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lDict:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5           #strategy:Ljava/lang/Integer;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 28
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #lDict:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 30
    .local v4, lKeys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 34
    .local v3, lKey:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 36
    .local v2, lEventID:I
    if-eq v10, v2, :cond_1

    if-eq v9, v2, :cond_1

    if-ne v8, v2, :cond_2

    .line 37
    :cond_1
    const/16 v6, 0x64

    invoke-super {p0, v2, v6}, Lcom/taobao/statistic/module/g/b;->k(II)V

    goto :goto_1

    .line 41
    :cond_2
    const/16 v6, 0x4e20

    if-le v2, v6, :cond_3

    .line 43
    const/4 v6, -0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 44
    const/4 v6, 0x0

    invoke-super {p0, v2, v6}, Lcom/taobao/statistic/module/g/b;->k(II)V

    goto :goto_1

    .line 49
    :cond_3
    const/16 v6, 0x2710

    if-le v2, v6, :cond_4

    .line 51
    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 52
    const/4 v6, 0x0

    invoke-super {p0, v2, v6}, Lcom/taobao/statistic/module/g/b;->k(II)V

    goto :goto_1

    .line 58
    :cond_4
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 59
    const/4 v6, 0x0

    invoke-super {p0, v2, v6}, Lcom/taobao/statistic/module/g/b;->k(II)V

    goto :goto_1

    .line 63
    :cond_5
    const/16 v6, 0x64

    invoke-super {p0, v2, v6}, Lcom/taobao/statistic/module/g/b;->k(II)V

    goto :goto_1

    .line 66
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lDict:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2           #lEventID:I
    .end local v3           #lKey:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4           #lKeys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_6
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    return-void
.end method
