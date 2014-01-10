.class Lcom/taobao/statistic/core/b/a/c;
.super Lorg/usertrack/android/library/c/c;
.source "RuntimeSettings.java"


# instance fields
.field private iF:Lcom/taobao/statistic/core/i;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 1
    .parameter "runtime"

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/usertrack/android/library/c/c;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    .line 17
    iput-object p1, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    .line 18
    return-void
.end method

.method private c(Landroid/content/Context;)Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;
    .locals 5
    .parameter "context"

    .prologue
    .line 38
    iget-object v3, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/q;->cQ()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 40
    .local v2, uid:I
    iget-object v3, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/taobao/statistic/core/q;->Q(I)V

    .line 41
    iget-object v3, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/usertrack/android/library/d/c;->Q(I)V

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;

    invoke-direct {v1}, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;-><init>()V

    .line 45
    .local v1, mReceiver:Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;
    iget-object v3, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bI()Lcom/taobao/statistic/core/n;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->addListener(Lorg/usertrack/android/library/connection/OnConnectionChangeListener;)Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;

    .line 46
    iget-object v3, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->addListener(Lorg/usertrack/android/library/connection/OnConnectionChangeListener;)Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;

    .line 47
    invoke-virtual {v1, p1}, Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;->init(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    iget-object v3, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/taobao/statistic/core/q;->a(Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;)V

    .line 50
    iget-object v3, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/taobao/statistic/core/q;->r(Z)V

    .line 53
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #mReceiver:Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;
    .end local v2           #uid:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 22
    iget-object v1, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v0

    .line 23
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b/a/c;->c(Landroid/content/Context;)Lorg/usertrack/android/library/connection/ConnectionChangeReceiver;

    .line 25
    iget-object v1, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/l;->ck()V

    .line 27
    iget-object v1, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bX()Lcom/taobao/statistic/module/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bI()Lcom/taobao/statistic/core/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/module/a/b;->a(Lcom/taobao/statistic/module/a/c;)V

    .line 31
    iget-object v1, p0, Lcom/taobao/statistic/core/b/a/c;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bX()Lcom/taobao/statistic/module/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/module/a/b;->dq()V

    .line 32
    invoke-virtual {p0}, Lcom/taobao/statistic/core/b/a/c;->er()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/statistic/core/b/a/c;->p(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 58
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/taobao/statistic/TBS$OnInitFinishListener;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
