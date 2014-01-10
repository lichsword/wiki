.class Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/taskmanager/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReceiver"
.end annotation


# instance fields
.field mIsConnected:Z

.field final synthetic this$0:Landroid/taobao/taskmanager/TaskManager;


# direct methods
.method private constructor <init>(Landroid/taobao/taskmanager/TaskManager;)V
    .locals 1
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;->this$0:Landroid/taobao/taskmanager/TaskManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;->mIsConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/taobao/taskmanager/TaskManager;Landroid/taobao/taskmanager/TaskManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 489
    invoke-direct {p0, p1}, Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;-><init>(Landroid/taobao/taskmanager/TaskManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 494
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, action:Ljava/lang/String;
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, reason:Ljava/lang/String;
    const-string v7, "TaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetworkChangeListener action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 502
    .local v1, connManager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 528
    :goto_0
    return-void

    .line 505
    :cond_0
    const/4 v3, 0x0

    .line 506
    .local v3, info:Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 508
    .local v2, connected:Z
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 509
    if-eqz v3, :cond_1

    .line 510
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    .line 511
    .local v6, wifiState:Landroid/net/NetworkInfo$DetailedState;
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v6, :cond_1

    .line 512
    const/4 v2, 0x1

    .line 516
    .end local v6           #wifiState:Landroid/net/NetworkInfo$DetailedState;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 517
    if-eqz v3, :cond_2

    .line 518
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    .line 519
    .local v4, mobileState:Landroid/net/NetworkInfo$DetailedState;
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v4, :cond_2

    .line 520
    const/4 v2, 0x1

    .line 524
    .end local v4           #mobileState:Landroid/net/NetworkInfo$DetailedState;
    :cond_2
    if-eqz v2, :cond_3

    .line 525
    iget-object v7, p0, Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;->this$0:Landroid/taobao/taskmanager/TaskManager;

    #calls: Landroid/taobao/taskmanager/TaskManager;->schedule()V
    invoke-static {v7}, Landroid/taobao/taskmanager/TaskManager;->access$600(Landroid/taobao/taskmanager/TaskManager;)V

    .line 527
    :cond_3
    iput-boolean v2, p0, Landroid/taobao/taskmanager/TaskManager$NetworkReceiver;->mIsConnected:Z

    goto :goto_0
.end method
