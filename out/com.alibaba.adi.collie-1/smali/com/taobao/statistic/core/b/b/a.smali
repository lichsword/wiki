.class public Lcom/taobao/statistic/core/b/b/a;
.super Lorg/usertrack/android/library/c/c;
.source "CommitUnCompletePageEvent.java"


# instance fields
.field private iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "runtime"

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/usertrack/android/library/c/c;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/b/b/a;->iF:Lcom/taobao/statistic/core/i;

    .line 13
    iput-object p1, p0, Lcom/taobao/statistic/core/b/b/a;->iF:Lcom/taobao/statistic/core/i;

    .line 14
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 18
    iget-object v2, p0, Lcom/taobao/statistic/core/b/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->dh()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    iget-object v2, p0, Lcom/taobao/statistic/core/b/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cn()I

    move-result v0

    .line 21
    .local v0, pageEventStatus:I
    if-eqz v0, :cond_3

    .line 22
    iget-object v2, p0, Lcom/taobao/statistic/core/b/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cr()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, pageKey:Ljava/lang/String;
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 24
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/taobao/statistic/core/b/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    sget-object v3, Lcom/taobao/statistic/a;->ix:[Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    :cond_0
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    .line 29
    iget-object v2, p0, Lcom/taobao/statistic/core/b/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    sget-object v3, Lcom/taobao/statistic/a;->ix:[Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    :cond_1
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_2

    .line 33
    iget-object v2, p0, Lcom/taobao/statistic/core/b/b/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    sget-object v3, Lcom/taobao/statistic/a;->ix:[Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/statistic/core/b;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    :cond_2
    const/4 v2, 0x2

    const-string v3, "CommitUnCompletePageEvent"

    const-string v4, "Flush"

    invoke-static {v2, v3, v4}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 41
    .end local v0           #pageEventStatus:I
    .end local v1           #pageKey:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
