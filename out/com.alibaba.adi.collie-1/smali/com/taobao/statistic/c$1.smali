.class Lcom/taobao/statistic/c$1;
.super Ljava/lang/Object;
.source "TBSEngine.java"

# interfaces
.implements Lcom/taobao/statistic/TBS$OnInitFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/statistic/c;->aF()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iK:Lcom/taobao/statistic/c;


# direct methods
.method constructor <init>(Lcom/taobao/statistic/c;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/taobao/statistic/c$1;->iK:Lcom/taobao/statistic/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 7
    .parameter "resultCode"

    .prologue
    const/4 v6, 0x1

    .line 68
    iget-object v1, p0, Lcom/taobao/statistic/c$1;->iK:Lcom/taobao/statistic/c;

    invoke-static {v1}, Lcom/taobao/statistic/c;->a(Lcom/taobao/statistic/c;)Lcom/taobao/statistic/core/i;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/taobao/statistic/c$1;->iK:Lcom/taobao/statistic/c;

    invoke-static {v1}, Lcom/taobao/statistic/c;->a(Lcom/taobao/statistic/c;)Lcom/taobao/statistic/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 72
    .local v0, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_0

    .line 73
    const-string v1, "APP_STATUS"

    const-string v2, "%s(%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/taobao/statistic/APPSTATUS;->INIT_USERTRACK_SDK_FAIL:Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v5}, Lcom/taobao/statistic/APPSTATUS;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 80
    .end local v0           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_0
    iget-object v1, p0, Lcom/taobao/statistic/c$1;->iK:Lcom/taobao/statistic/c;

    invoke-static {v1}, Lcom/taobao/statistic/c;->a(Lcom/taobao/statistic/c;)Lcom/taobao/statistic/core/i;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/statistic/c$1;->iK:Lcom/taobao/statistic/c;

    invoke-static {v1}, Lcom/taobao/statistic/c;->a(Lcom/taobao/statistic/c;)Lcom/taobao/statistic/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    if-nez p1, :cond_2

    .line 82
    const-string v1, "TBSEngine(init)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    const-string v1, "TBSEngine(init)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
