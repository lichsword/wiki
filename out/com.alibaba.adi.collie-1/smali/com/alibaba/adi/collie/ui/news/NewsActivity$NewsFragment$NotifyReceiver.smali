.class Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    const-string v3, "com.adi.collie.NEWS_NUM_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    const-string v3, "extraInteger"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 434
    .local v1, count:I
    sget-object v3, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xhh "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " received, userVisibleHint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getUserVisibleHint()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 435
    const-string v5, " adapter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 434
    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getUserVisibleHint()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getUserVisibleHint()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$3(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    .local v2, show:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 438
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$NotifyReceiver;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #calls: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->startNewsTask()V
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$5(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V

    .line 442
    .end local v1           #count:I
    .end local v2           #show:Z
    :cond_1
    return-void

    .line 436
    .restart local v1       #count:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public register()V
    .locals 2

    .prologue
    .line 445
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 446
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.adi.collie.NEWS_NUM_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/adi/collie/CoreApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/CoreApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 452
    return-void
.end method
