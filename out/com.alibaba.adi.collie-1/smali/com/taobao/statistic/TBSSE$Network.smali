.class public Lcom/taobao/statistic/TBSSE$Network;
.super Ljava/lang/Object;
.source "TBSSE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBSSE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Network"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSSE;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/TBSSE;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/taobao/statistic/TBSSE$Network;->this$0:Lcom/taobao/statistic/TBSSE;

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
    .line 725
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

    .line 728
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$Network;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 729
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 730
    invoke-virtual/range {v0 .. v9}, Lcom/taobao/statistic/core/b;->download(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    .line 734
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 9
    .parameter "category"
    .parameter "itemId"
    .parameter "size"
    .parameter "timeConsumer"
    .parameter "isContinue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 691
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/taobao/statistic/TBSSE$Network;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v0}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v8

    .line 693
    .local v8, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v8, :cond_0

    .line 694
    iget-object v0, p0, Lcom/taobao/statistic/TBSSE$Network;->this$0:Lcom/taobao/statistic/TBSSE;

    #getter for: Lcom/taobao/statistic/TBSSE;->tbsEngine:Lcom/taobao/statistic/c;
    invoke-static {v0}, Lcom/taobao/statistic/TBSSE;->access$200(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/c;->aG()Lcom/taobao/statistic/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/b;->download(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 701
    .end local v8           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public pushArrive(Ljava/lang/String;)V
    .locals 2
    .parameter "pushCategoryName"

    .prologue
    .line 636
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$Network;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 638
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/b;->pushArrive(Ljava/lang/String;)V

    .line 642
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public pushDisplay(Ljava/lang/String;)V
    .locals 2
    .parameter "pushCategoryName"

    .prologue
    .line 651
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$Network;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 653
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/b;->pushDisplay(Ljava/lang/String;)V

    .line 657
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public pushView(Ljava/lang/String;)V
    .locals 2
    .parameter "pushCategoryName"

    .prologue
    .line 666
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$Network;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 668
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/b;->pushView(Ljava/lang/String;)V

    .line 672
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
    .line 621
    .local p2, kvs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$Network;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 623
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/taobao/statistic/core/a;->updateUTCookie(Ljava/lang/String;Ljava/util/Map;)V

    .line 627
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public updateUTSIDToCookie(Ljava/lang/String;)V
    .locals 2
    .parameter "aUrl"

    .prologue
    .line 605
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$Network;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 607
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/a;->updateUTSIDToCookie(Ljava/lang/String;)V

    .line 611
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method
