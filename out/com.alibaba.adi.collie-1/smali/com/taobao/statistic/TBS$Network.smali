.class public Lcom/taobao/statistic/TBS$Network;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Network"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 11
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
    .line 1907
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static/range {p6 .. p6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static/range {p7 .. p7}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1910
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1911
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1912
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 1913
    invoke-virtual/range {v0 .. v9}, Lcom/taobao/statistic/core/b;->download(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    .line 1916
    :cond_0
    monitor-exit v10

    .line 1918
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1916
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 9
    .parameter "category"
    .parameter "itemId"
    .parameter "size"
    .parameter "timeConsumer"
    .parameter "isContinue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1874
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1875
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1876
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1877
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    .line 1878
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/b;->download(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 1881
    :cond_0
    monitor-exit v8

    .line 1883
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1881
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static pushArrive(Ljava/lang/String;)V
    .locals 3
    .parameter "pushCategoryName"

    .prologue
    .line 1742
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1743
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1744
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1745
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1746
    invoke-virtual {v0, p0}, Lcom/taobao/statistic/core/b;->pushArrive(Ljava/lang/String;)V

    .line 1748
    :cond_0
    monitor-exit v2

    .line 1750
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1748
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static pushDisplay(Ljava/lang/String;)V
    .locals 3
    .parameter "pushCategoryName"

    .prologue
    .line 1759
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1760
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1761
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1762
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1763
    invoke-virtual {v0, p0}, Lcom/taobao/statistic/core/b;->pushDisplay(Ljava/lang/String;)V

    .line 1765
    :cond_0
    monitor-exit v2

    .line 1767
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1765
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static pushView(Ljava/lang/String;)V
    .locals 3
    .parameter "pushCategoryName"

    .prologue
    .line 1776
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1777
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1778
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1779
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1780
    invoke-virtual {v0, p0}, Lcom/taobao/statistic/core/b;->pushView(Ljava/lang/String;)V

    .line 1782
    :cond_0
    monitor-exit v2

    .line 1784
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1782
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static searchKeyword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "keywordCategory"
    .parameter "keyword"

    .prologue
    .line 1795
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1797
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1798
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1799
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1800
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->searchKeyword(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    :cond_0
    monitor-exit v2

    .line 1804
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1802
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static updateUTCookie(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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
    .line 1829
    .local p1, kvs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1830
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1831
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1832
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/taobao/statistic/core/a;->updateUTCookie(Ljava/lang/String;Ljava/util/Map;)V

    .line 1834
    :cond_0
    monitor-exit v2

    .line 1835
    return-void

    .line 1834
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static updateUTSIDToCookie(Ljava/lang/String;)V
    .locals 3
    .parameter "aUrl"

    .prologue
    .line 1813
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1814
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1815
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1816
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/statistic/core/a;->updateUTSIDToCookie(Ljava/lang/String;)V

    .line 1818
    :cond_0
    monitor-exit v2

    .line 1819
    return-void

    .line 1818
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static weiboShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "weiboType"
    .parameter "shareContent"

    .prologue
    .line 1846
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1848
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1849
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1850
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1851
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->weiboShare(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    :cond_0
    monitor-exit v2

    .line 1855
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1853
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
