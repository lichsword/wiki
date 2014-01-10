.class public Lcom/taobao/statistic/TBSAE$Page;
.super Ljava/lang/Object;
.source "TBSAE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBSAE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSAE;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/TBSAE;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buttonClicked(Ljava/lang/String;)V
    .locals 1
    .parameter "controlName"

    .prologue
    .line 541
    sget-object v0, Lcom/taobao/statistic/CT;->Button:Lcom/taobao/statistic/CT;

    invoke-virtual {p0, v0, p1}, Lcom/taobao/statistic/TBSAE$Page;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public create(Ljava/lang/String;)V
    .locals 2
    .parameter "pageName"

    .prologue
    .line 701
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 703
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0, p1, p1}, Lcom/taobao/statistic/core/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "className"
    .parameter "page"

    .prologue
    .line 680
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 682
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 3
    .parameter "ct"
    .parameter "controlName"

    .prologue
    .line 526
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 528
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 532
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public ctrlLongClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 3
    .parameter "ct"
    .parameter "controlName"

    .prologue
    .line 553
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 555
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 560
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public destroy(Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"

    .prologue
    .line 658
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 660
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 661
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/statistic/core/b;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 664
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public enter(Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"

    .prologue
    .line 593
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 595
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 596
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 599
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 713
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 714
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->goBack()V

    .line 717
    :cond_0
    return-void
.end method

.method public itemSelected(Lcom/taobao/statistic/CT;Ljava/lang/String;I)V
    .locals 3
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"

    .prologue
    .line 571
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p3, :cond_0

    .line 573
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 574
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 579
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public leave(Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"

    .prologue
    .line 638
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 640
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 641
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 644
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public updatePageProperties(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .parameter "pPageKey"
    .parameter "properties"

    .prologue
    .line 614
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/taobao/statistic/TBSAE$Page;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v2}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 617
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    .line 619
    .local v1, lExec:Lcom/taobao/statistic/core/a;
    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {v1, p1, p2}, Lcom/taobao/statistic/core/a;->updatePageProperties(Ljava/lang/String;Ljava/util/Properties;)V

    .line 624
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    .end local v1           #lExec:Lcom/taobao/statistic/core/a;
    :cond_0
    return-void
.end method
