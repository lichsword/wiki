.class public Lcom/taobao/statistic/TBS$Ext;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ext"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitEvent(I)V
    .locals 6
    .parameter "eventID"

    .prologue
    const/4 v2, 0x0

    .line 528
    const-string v0, "Page_Extend"

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    move v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public static commitEvent(ILjava/lang/Object;)V
    .locals 6
    .parameter "eventID"
    .parameter "arg"

    .prologue
    const/4 v3, 0x0

    .line 541
    const-string v0, "Page_Extend"

    move-object v5, v3

    check-cast v5, [Ljava/lang/String;

    move v1, p0

    move-object v2, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public static commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    .line 556
    const-string v0, "Page_Extend"

    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public static commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 574
    const-string v0, "Page_Extend"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public static varargs commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 594
    const-string v0, "Page_Extend"

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public static commitEvent(Ljava/lang/String;I)V
    .locals 6
    .parameter "pageName"
    .parameter "eventID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 437
    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public static commitEvent(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 452
    move-object v5, v3

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public static commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 470
    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public static commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 490
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public static varargs commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 8
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 513
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 514
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 515
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 518
    :cond_0
    monitor-exit v7

    .line 519
    return-void

    .line 518
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static commitEvent(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .parameter "eventID"
    .parameter "properties"

    .prologue
    .line 384
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 385
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 386
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;Ljava/util/Properties;)V

    .line 389
    :cond_0
    monitor-exit v2

    .line 390
    return-void

    .line 389
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static commitEventBegin(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .parameter "eventID"
    .parameter "properties"

    .prologue
    .line 402
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 403
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 404
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->commitEventBegin(Ljava/lang/String;Ljava/util/Properties;)V

    .line 407
    :cond_0
    monitor-exit v2

    .line 408
    return-void

    .line 407
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static commitEventEnd(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .parameter "eventID"
    .parameter "properties"

    .prologue
    .line 419
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 420
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 421
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->commitEventEnd(Ljava/lang/String;Ljava/util/Properties;)V

    .line 424
    :cond_0
    monitor-exit v2

    .line 425
    return-void

    .line 424
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static trade(Ljava/lang/String;)V
    .locals 3
    .parameter "bizOrderID"

    .prologue
    .line 607
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 608
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 609
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0, p0}, Lcom/taobao/statistic/core/b;->trade(Ljava/lang/String;)V

    .line 612
    :cond_0
    monitor-exit v2

    .line 613
    return-void

    .line 612
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
