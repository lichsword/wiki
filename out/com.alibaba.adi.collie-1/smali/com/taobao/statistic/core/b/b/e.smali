.class public Lcom/taobao/statistic/core/b/b/e;
.super Lorg/usertrack/android/library/c/c;
.source "ResetSettings.java"


# instance fields
.field private iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "runtime"

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/usertrack/android/library/c/c;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/b/b/e;->iF:Lcom/taobao/statistic/core/i;

    .line 11
    iput-object p1, p0, Lcom/taobao/statistic/core/b/b/e;->iF:Lcom/taobao/statistic/core/i;

    .line 12
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    iget-object v1, p0, Lcom/taobao/statistic/core/b/b/e;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cQ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/statistic/core/b/b/e;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cR()Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/core/b/b/e;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/q;->cR()Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    iget-object v1, p0, Lcom/taobao/statistic/core/b/b/e;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/core/q;->r(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/taobao/statistic/core/b/b/e;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b/b/e;->d(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method
