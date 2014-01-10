.class Lcom/taobao/statistic/core/b/a/b;
.super Lorg/usertrack/android/library/c/c;
.source "CommitInitEvent.java"


# instance fields
.field private iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "runtime"

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/usertrack/android/library/c/c;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/b/a/b;->iF:Lcom/taobao/statistic/core/i;

    .line 20
    iput-object p1, p0, Lcom/taobao/statistic/core/b/a/b;->iF:Lcom/taobao/statistic/core/i;

    .line 21
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 25
    iget-object v1, p0, Lcom/taobao/statistic/core/b/a/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/g;->bt()V

    .line 26
    iget-object v1, p0, Lcom/taobao/statistic/core/b/a/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cP()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/taobao/statistic/core/b/a/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v1

    const-string v2, "Page_UsertrackInit"

    const/16 v3, 0x3f1

    invoke-virtual {v1, v2, v3}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;I)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/statistic/core/b/a/b;->er()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/statistic/TBS$OnInitFinishListener;

    .line 31
    .local v0, listener:Lcom/taobao/statistic/TBS$OnInitFinishListener;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/taobao/statistic/TBS$OnInitFinishListener;->onFinish(I)V

    .line 32
    return-void
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/taobao/statistic/TBS$OnInitFinishListener;

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
