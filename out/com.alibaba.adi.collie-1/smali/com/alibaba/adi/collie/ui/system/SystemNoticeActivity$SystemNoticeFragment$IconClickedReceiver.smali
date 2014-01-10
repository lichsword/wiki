.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconClickedReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 802
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 806
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$10(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/widget/ListView;

    move-result-object v5

    if-nez v5, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 811
    const-string v5, "com.adi.collie.ACTION_SYSTEM_ICON_CLICKED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 812
    const-string v5, "extraInteger"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 813
    .local v4, type:I
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$8(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    move-result-object v6

    monitor-enter v6

    .line 814
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$8(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->getNoticeDataList()Ljava/util/List;

    move-result-object v2

    .line 815
    .local v2, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SystemNoticeData;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 816
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 813
    .end local v2           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SystemNoticeData;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 818
    .restart local v2       #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SystemNoticeData;>;"
    :cond_3
    packed-switch v4, :pswitch_data_0

    .line 813
    :cond_4
    :goto_1
    :pswitch_0
    :try_start_1
    monitor-exit v6

    goto :goto_0

    .line 823
    :pswitch_1
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$8(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->getSmsIndex()I

    move-result v3

    .line 824
    .local v3, smsIndex:I
    if-ltz v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 825
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$10(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 829
    .end local v3           #smsIndex:I
    :pswitch_2
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$8(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->getCallIndex()I

    move-result v1

    .line 830
    .local v1, callindex:I
    if-ltz v1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 831
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$10(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public register()V
    .locals 2

    .prologue
    .line 842
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 843
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.adi.collie.ACTION_SYSTEM_ICON_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 845
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$IconClickedReceiver;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 849
    return-void
.end method
