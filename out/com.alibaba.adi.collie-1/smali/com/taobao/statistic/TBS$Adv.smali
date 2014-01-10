.class public Lcom/taobao/statistic/TBS$Adv;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adv"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"

    .prologue
    .line 1336
    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1337
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1338
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1339
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1340
    invoke-virtual {p0}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3, p2}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1343
    :cond_0
    monitor-exit v2

    .line 1345
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1343
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 4
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1567
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1569
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1570
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1571
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1572
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, p2, v3}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1575
    :cond_0
    monitor-exit v2

    .line 1577
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1575
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1313
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1315
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1316
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1317
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1318
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1321
    :cond_0
    monitor-exit v6

    .line 1323
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1321
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ctrlClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 4
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1594
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1596
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1597
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1598
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1599
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, p2, v3}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1602
    :cond_0
    monitor-exit v2

    .line 1604
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1602
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs ctrlClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1362
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1364
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1365
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1366
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1367
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1370
    :cond_0
    monitor-exit v6

    .line 1372
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1370
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs ctrlLongClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"

    .prologue
    .line 1413
    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1414
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1415
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1416
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p0}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3, p2}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1420
    :cond_0
    monitor-exit v2

    .line 1422
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1420
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ctrlLongClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 4
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1625
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1627
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1628
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1629
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, p2, v3}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1633
    :cond_0
    monitor-exit v2

    .line 1635
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1633
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs ctrlLongClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1389
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1391
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1392
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1393
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1394
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1397
    :cond_0
    monitor-exit v6

    .line 1399
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1397
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ctrlLongClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 4
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1652
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1654
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1655
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1656
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, p2, v3}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1660
    :cond_0
    monitor-exit v2

    .line 1662
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1660
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs ctrlLongClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1439
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1441
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1442
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1443
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1444
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1447
    :cond_0
    monitor-exit v6

    .line 1449
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1447
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs destroy(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 1219
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1220
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1221
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1222
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1225
    :cond_0
    monitor-exit v2

    .line 1227
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1225
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs enter(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 1147
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1148
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1149
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1150
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1153
    :cond_0
    monitor-exit v2

    .line 1155
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1153
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs enterWithPageName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"
    .parameter "pageName"
    .parameter "kvs"

    .prologue
    .line 1169
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1170
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1171
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1172
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1175
    :cond_0
    monitor-exit v2

    .line 1177
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1175
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static forceUpload()V
    .locals 3

    .prologue
    .line 1183
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1184
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1185
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->forceUpload()V

    .line 1188
    :cond_0
    monitor-exit v2

    .line 1189
    return-void

    .line 1188
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getUtsid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1127
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1128
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1129
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->getUtsid()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    .line 1132
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 1134
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs itemSelected(Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 7
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "kvs"

    .prologue
    .line 1494
    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz p2, :cond_1

    .line 1496
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1497
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1498
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1499
    invoke-virtual {p0}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    .line 1502
    :cond_0
    monitor-exit v6

    .line 1504
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1502
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static itemSelected(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I)V
    .locals 7
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1681
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz p3, :cond_1

    .line 1683
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1684
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1685
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1686
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1689
    :cond_0
    monitor-exit v6

    .line 1691
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1689
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs itemSelected(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 8
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1468
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz p3, :cond_1

    .line 1470
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1471
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1472
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1473
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    .line 1476
    :cond_0
    monitor-exit v7

    .line 1478
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1476
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static itemSelectedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I)V
    .locals 7
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1710
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz p3, :cond_1

    .line 1712
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1713
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1714
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1715
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1718
    :cond_0
    monitor-exit v6

    .line 1720
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1718
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs itemSelectedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 8
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1523
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz p3, :cond_1

    .line 1525
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1526
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1527
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    .line 1531
    :cond_0
    monitor-exit v7

    .line 1533
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1531
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs keepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"
    .parameter "keys"

    .prologue
    .line 1250
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1251
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1252
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1253
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->keepKvs(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1256
    :cond_0
    monitor-exit v2

    .line 1258
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1256
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs leave(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 1200
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1201
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1202
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1203
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1206
    :cond_0
    monitor-exit v2

    .line 1208
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1206
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static onCaughException(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 1542
    if-eqz p0, :cond_1

    .line 1543
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1544
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1545
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1546
    invoke-virtual {v0, p0}, Lcom/taobao/statistic/core/b;->onCaughException(Ljava/lang/Throwable;)V

    .line 1548
    :cond_0
    monitor-exit v2

    .line 1550
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1548
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static putKvs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1288
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 1289
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1290
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1291
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->putKvs(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1294
    :cond_0
    monitor-exit v2

    .line 1296
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1294
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static turnOffLogFriendly()V
    .locals 3

    .prologue
    .line 1233
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1234
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1235
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->turnOffLogFriendly()V

    .line 1238
    :cond_0
    monitor-exit v2

    .line 1239
    return-void

    .line 1238
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs unKeepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"
    .parameter "keys"

    .prologue
    .line 1269
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1270
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1271
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1272
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->unKeepKvs(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1275
    :cond_0
    monitor-exit v2

    .line 1277
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1275
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
