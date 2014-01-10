.class public Lcom/taobao/statistic/core/b/b/b;
.super Lorg/usertrack/android/library/c/c;
.source "CommitUninitEvent.java"


# instance fields
.field private iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "runtime"

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/usertrack/android/library/c/c;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    .line 14
    iput-object p1, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    .line 15
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .prologue
    const/16 v9, 0x3ec

    .line 19
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bH()Lcom/taobao/statistic/core/h;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/taobao/statistic/core/h;->N(I)V

    .line 21
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/module/c/a;->du()I

    .line 23
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v3

    const-string v4, "Page_UsertrackUninit"

    invoke-virtual {v3, v4}, Lcom/taobao/statistic/core/g;->u(Ljava/lang/String;)V

    .line 27
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/q;->cP()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/q;->de()Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v3

    const-string v4, "Page_UsertrackUninit"

    const/16 v5, 0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/statistic/core/l;->cs()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 37
    :cond_0
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/l;->ch()J

    move-result-wide v1

    .line 38
    .local v1, resident:J
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, pageName:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v9, v4}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v3, p0, Lcom/taobao/statistic/core/b/b/b;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v3

    const-string v4, "Page_Usertrack"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v9, v5}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
