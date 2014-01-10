.class public Lcom/taobao/statistic/core/n;
.super Lcom/taobao/statistic/c/b;
.source "ThingsHandler.java"

# interfaces
.implements Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;
.implements Lcom/taobao/statistic/module/a/c;
.implements Lorg/usertrack/android/library/connection/OnConnectionChangeListener;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 0
    .parameter "aRuntime"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 25
    return-void
.end method


# virtual methods
.method public OnDaemonThreadCrashCaught(Ljava/lang/Thread;)V
    .locals 2
    .parameter "thread"

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, threadName:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string v1, "ObjectDispatchThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/taobao/statistic/core/n;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/b;->bg()V

    .line 61
    .end local v0           #threadName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public cC()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/taobao/statistic/core/n;->iF:Lcom/taobao/statistic/core/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/statistic/core/n;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/taobao/statistic/core/n;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/g;->by()V

    .line 49
    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 3
    .parameter "timestamp"

    .prologue
    .line 36
    const/4 v0, 0x2

    const-string v1, "OnTimestampArrive Notify"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/taobao/statistic/core/n;->iF:Lcom/taobao/statistic/core/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/statistic/core/n;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/taobao/statistic/core/n;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/g;->c(J)V

    .line 42
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .parameter "responseText"

    .prologue
    .line 66
    return-void
.end method

.method public onConnectionChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "access"
    .parameter "access_subType"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taobao/statistic/core/n;->iF:Lcom/taobao/statistic/core/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/statistic/core/n;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/taobao/statistic/core/n;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/statistic/core/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method
