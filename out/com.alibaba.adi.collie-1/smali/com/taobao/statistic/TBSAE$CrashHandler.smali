.class public Lcom/taobao/statistic/TBSAE$CrashHandler;
.super Ljava/lang/Object;
.source "TBSAE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBSAE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSAE;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/TBSAE;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableEffect()V
    .locals 2

    .prologue
    .line 754
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 755
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->aJ()V

    .line 758
    :cond_0
    return-void
.end method

.method public removeDaemonCrashCaughtListener(Ljava/lang/String;)V
    .locals 2
    .parameter "threadName"

    .prologue
    .line 878
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 880
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/a;->removeDaemonCrashCaughtListener(Ljava/lang/String;)V

    .line 885
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public setContinueWhenDaemonThreadUncaughException()V
    .locals 2

    .prologue
    .line 891
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 892
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->setContinueWhenDaemonThreadUncaughException()V

    .line 896
    :cond_0
    return-void
.end method

.method public setOnCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 825
    if-eqz p1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 827
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/a;->setOnCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;)V

    .line 831
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public setOnDaemonCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 2
    .parameter "daemonThreadCrashCaughtListener"

    .prologue
    .line 841
    if-eqz p1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 843
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/a;->setOnDaemonCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V

    .line 848
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public setOnDaemonCrashCaughtListener(Ljava/lang/String;Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 2
    .parameter "threadName"
    .parameter "daemonThreadCrashCaughtListener"

    .prologue
    .line 861
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 863
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 864
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/taobao/statistic/core/a;->setOnDaemonCrashCaughtListener(Ljava/lang/String;Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V

    .line 869
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public setSubmitToSystemFlag()V
    .locals 2

    .prologue
    .line 764
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 765
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->aK()V

    .line 768
    :cond_0
    return-void
.end method

.method public setToastStyle(ILjava/lang/String;)V
    .locals 2
    .parameter "howLongToastShow"
    .parameter "toastString"

    .prologue
    .line 806
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 808
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/taobao/statistic/core/a;->a(ILjava/lang/String;)V

    .line 813
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public turnOn()V
    .locals 2

    .prologue
    .line 744
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 745
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->aL()V

    .line 748
    :cond_0
    return-void
.end method

.method public withRestart(Landroid/app/Activity;II)V
    .locals 2
    .parameter "mainActivityForRestart"
    .parameter "howLongAppRestart"
    .parameter "howManyTimes"

    .prologue
    .line 786
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 788
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 789
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/taobao/statistic/core/a;->a(Landroid/app/Activity;II)V

    .line 795
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method
