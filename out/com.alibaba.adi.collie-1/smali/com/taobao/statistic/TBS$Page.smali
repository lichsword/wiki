.class public Lcom/taobao/statistic/TBS$Page;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buttonClicked(Ljava/lang/String;)V
    .locals 1
    .parameter "controlName"

    .prologue
    .line 658
    sget-object v0, Lcom/taobao/statistic/CT;->Button:Lcom/taobao/statistic/CT;

    invoke-static {v0, p0}, Lcom/taobao/statistic/TBS$Page;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public static create(Ljava/lang/String;)V
    .locals 3
    .parameter "pageName"

    .prologue
    .line 834
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 835
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 836
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 837
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {v0, p0, p0}, Lcom/taobao/statistic/core/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_0
    monitor-exit v2

    .line 842
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "className"
    .parameter "page"

    .prologue
    .line 811
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 812
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 813
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 814
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0, p0, p1}, Lcom/taobao/statistic/core/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_0
    monitor-exit v2

    .line 819
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 817
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 4
    .parameter "ct"
    .parameter "controlName"

    .prologue
    .line 640
    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 641
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 642
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 643
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 647
    :cond_0
    monitor-exit v2

    .line 649
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ctrlLongClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 4
    .parameter "ct"
    .parameter "controlName"

    .prologue
    .line 670
    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 671
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 672
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 673
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 677
    :cond_0
    monitor-exit v2

    .line 679
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 677
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static destroy(Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"

    .prologue
    .line 787
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 788
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 789
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 790
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 791
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/taobao/statistic/core/b;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 793
    :cond_0
    monitor-exit v2

    .line 795
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static enter(Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"

    .prologue
    .line 715
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 716
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 717
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 718
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 719
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 721
    :cond_0
    monitor-exit v2

    .line 723
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static goBack()V
    .locals 3

    .prologue
    .line 848
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 849
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 850
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->goBack()V

    .line 853
    :cond_0
    monitor-exit v2

    .line 854
    return-void

    .line 853
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static itemSelected(Lcom/taobao/statistic/CT;Ljava/lang/String;I)V
    .locals 4
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"

    .prologue
    .line 691
    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz p2, :cond_1

    .line 693
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 694
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 695
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 699
    :cond_0
    monitor-exit v2

    .line 701
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 699
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static leave(Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"

    .prologue
    .line 737
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 738
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 739
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 740
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 741
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 743
    :cond_0
    monitor-exit v2

    .line 745
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 743
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static updatePageProperties(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 4
    .parameter "pPageKey"
    .parameter "properties"

    .prologue
    .line 761
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 763
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 764
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 765
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    .line 767
    .local v1, lExec:Lcom/taobao/statistic/core/a;
    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v1, p0, p1}, Lcom/taobao/statistic/core/a;->updatePageProperties(Ljava/lang/String;Ljava/util/Properties;)V

    .line 771
    .end local v1           #lExec:Lcom/taobao/statistic/core/a;
    :cond_0
    monitor-exit v3

    .line 773
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 771
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
