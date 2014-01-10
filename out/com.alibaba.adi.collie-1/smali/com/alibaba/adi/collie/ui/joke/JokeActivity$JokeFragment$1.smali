.class Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$1;
.super Ljava/lang/Object;
.source "JokeActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/view/PullDownListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->initContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .prologue
    .line 199
    const-string v0, "JokeRefreshAll"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mGetJokeFromServiceTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mGetJokeFromServiceTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->isRunning:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->access$4(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    new-instance v1, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;-><init>(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)V

    #setter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mGetJokeFromServiceTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$7(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->mGetJokeFromServiceTask:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->access$6(Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;)Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment$GetJokeFromServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_1
    sget-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->TAG:Ljava/lang/String;

    const-string v1, "xhh last refresh hasn\'t finished yet"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
