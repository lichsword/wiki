.class Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TaobaoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;-><init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " received"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const-string v1, "com.adi.collie.TAOBAO_NUM_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mActive:Z
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$2(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    const/4 v2, 0x0

    #calls: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->setTaoTrackingView(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$3(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Ljava/util/List;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #setter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNeedRefreshTbtrackingWhenResume:Z
    invoke-static {v1, v4}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$4(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Z)V

    goto :goto_0

    .line 372
    :cond_2
    const-string v1, "com.adi.collie.YUEBAO_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mActive:Z
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$2(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->initYuebao()V

    goto :goto_0

    .line 376
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #setter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mNeedRefreshYuebaoWhenResume:Z
    invoke-static {v1, v4}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$5(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Z)V

    goto :goto_0
.end method

.method public register()V
    .locals 2

    .prologue
    .line 383
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 384
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.adi.collie.TAOBAO_NUM_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v1, "com.adi.collie.TAOBAO_TRACKING_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v1, "com.adi.collie.YUEBAO_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/adi/collie/CoreApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/CoreApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    return-void
.end method
