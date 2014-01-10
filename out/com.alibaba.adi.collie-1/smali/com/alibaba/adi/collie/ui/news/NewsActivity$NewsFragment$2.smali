.class Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$2;
.super Ljava/lang/Object;
.source "NewsActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->initContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .prologue
    .line 203
    const-string v0, "NewsRefreshAll"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mGetNewsFromServiceTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mGetNewsFromServiceTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->isRunning:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->access$4(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    new-instance v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)V

    #setter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mGetNewsFromServiceTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$7(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$2;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->mGetNewsFromServiceTask:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->access$6(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$GetNewsFromServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    :cond_1
    return-void
.end method
