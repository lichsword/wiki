.class Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;
.super Ljava/lang/Object;
.source "TaobaoActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->lazyInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .prologue
    .line 284
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->getStatus()Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;->BINDED:Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence$UserStatus;

    if-ne v0, v1, :cond_2

    .line 285
    sget-object v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->TAG:Ljava/lang/String;

    const-string v1, "tracking refresh"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTrankFromServiceTask:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$9(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTrankFromServiceTask:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$9(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->isRunning:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->access$2(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    new-instance v1, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;-><init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;)V

    #setter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTrankFromServiceTask:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$10(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;)V

    .line 288
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mTrankFromServiceTask:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$9(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$GetTrankFromServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    sget-object v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->TAG:Ljava/lang/String;

    const-string v1, "tracking unbinded"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    const v2, 0x7f0a00c5

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->showTips(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$8(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->mListView:Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->access$1(Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;)Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoPullDownListView;->onRefreshComplete()V

    goto :goto_0
.end method
