.class public Lcom/taobao/statistic/TBSAE$Network;
.super Ljava/lang/Object;
.source "TBSAE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBSAE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Network"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSAE;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/TBSAE;)V
    .locals 0
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/taobao/statistic/TBSAE$Network;->this$0:Lcom/taobao/statistic/TBSAE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "category"
    .parameter "itemId"
    .parameter "size"
    .parameter "timeConsumer"
    .parameter "start"
    .parameter "finish"
    .parameter "isContinue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1614
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p7 .. p7}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p8 .. p8}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1617
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Network;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1618
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 1619
    invoke-virtual/range {v0 .. v9}, Lcom/taobao/statistic/core/b;->download(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    .line 1623
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 8
    .parameter "category"
    .parameter "itemId"
    .parameter "size"
    .parameter "timeConsumer"
    .parameter "isContinue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1583
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1584
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Network;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1585
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    .line 1586
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/b;->download(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 1590
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public pushArrive(Ljava/lang/String;)V
    .locals 2
    .parameter "pushCategoryName"

    .prologue
    .line 1461
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1462
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Network;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1463
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1464
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/b;->pushArrive(Ljava/lang/String;)V

    .line 1467
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public pushDisplay(Ljava/lang/String;)V
    .locals 2
    .parameter "pushCategoryName"

    .prologue
    .line 1476
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1477
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Network;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1478
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1479
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/b;->pushDisplay(Ljava/lang/String;)V

    .line 1482
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public pushView(Ljava/lang/String;)V
    .locals 2
    .parameter "pushCategoryName"

    .prologue
    .line 1491
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1492
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Network;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1493
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/b;->pushView(Ljava/lang/String;)V

    .line 1497
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public searchKeyword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "keywordCategory"
    .parameter "keyword"

    .prologue
    .line 1508
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1510
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Network;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1511
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1512
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->searchKeyword(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public updateUTCookie(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "aUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1540
    .local p2, kvs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1541
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Network;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1542
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/taobao/statistic/core/a;->updateUTCookie(Ljava/lang/String;Ljava/util/Map;)V

    .line 1546
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public updateUTSIDToCookie(Ljava/lang/String;)V
    .locals 2
    .parameter "aUrl"

    .prologue
    .line 1524
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1525
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Network;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1526
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1527
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/a;->updateUTSIDToCookie(Ljava/lang/String;)V

    .line 1530
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public weiboShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "weiboType"
    .parameter "shareContent"

    .prologue
    .line 1557
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1559
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Network;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1560
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1561
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->weiboShare(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method
