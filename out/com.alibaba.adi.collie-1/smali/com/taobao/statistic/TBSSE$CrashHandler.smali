.class public Lcom/taobao/statistic/TBSSE$CrashHandler;
.super Ljava/lang/Object;
.source "TBSSE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBSSE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSSE;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/TBSSE;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/taobao/statistic/TBSSE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSSE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDaemonCrashCaughtListener(Ljava/lang/String;)V
    .locals 2
    .parameter "threadName"

    .prologue
    .line 532
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 534
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/a;->removeDaemonCrashCaughtListener(Ljava/lang/String;)V

    .line 539
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public setContinueWhenDaemonThreadUncaughException()V
    .locals 2

    .prologue
    .line 545
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 546
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->setContinueWhenDaemonThreadUncaughException()V

    .line 550
    :cond_0
    return-void
.end method

.method public setOnCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 479
    if-eqz p1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 481
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/a;->setOnCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;)V

    .line 485
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public setOnDaemonCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 2
    .parameter "daemonThreadCrashCaughtListener"

    .prologue
    .line 495
    if-eqz p1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 497
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/a;->setOnDaemonCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V

    .line 502
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public setOnDaemonCrashCaughtListener(Ljava/lang/String;Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 2
    .parameter "threadName"
    .parameter "daemonThreadCrashCaughtListener"

    .prologue
    .line 515
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 517
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 518
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/taobao/statistic/core/a;->setOnDaemonCrashCaughtListener(Ljava/lang/String;Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V

    .line 523
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public turnOn()V
    .locals 2

    .prologue
    .line 463
    iget-object v1, p0, Lcom/taobao/statistic/TBSSE$CrashHandler;->this$0:Lcom/taobao/statistic/TBSSE;

    #calls: Lcom/taobao/statistic/TBSSE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSSE;->access$300(Lcom/taobao/statistic/TBSSE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 464
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->aL()V

    .line 467
    :cond_0
    return-void
.end method
