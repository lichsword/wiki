.class Lcom/taobao/statistic/core/b/a/a;
.super Lorg/usertrack/android/library/c/c;
.source "CheckCondition.java"


# instance fields
.field private iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "runtime"

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/usertrack/android/library/c/c;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    .line 15
    iput-object p1, p0, Lcom/taobao/statistic/core/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    .line 16
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/taobao/statistic/core/b/a/a;->er()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/statistic/TBS$OnInitFinishListener;

    .line 21
    .local v2, listener:Lcom/taobao/statistic/TBS$OnInitFinishListener;
    iget-object v3, p0, Lcom/taobao/statistic/core/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/m;->cy()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, appkey:Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/statistic/core/b/a/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/m;->cz()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, appSecret:Ljava/lang/String;
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    :cond_0
    const/4 v3, 0x1

    const-string v4, "CheckCondition"

    const-string v5, "Appkey or AppSecret can not be empty."

    invoke-static {v3, v4, v5}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 29
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/taobao/statistic/TBS$OnInitFinishListener;->onFinish(I)V

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/statistic/core/b/a/a;->er()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/taobao/statistic/core/b/a/a;->p(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 37
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/taobao/statistic/TBS$OnInitFinishListener;

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
