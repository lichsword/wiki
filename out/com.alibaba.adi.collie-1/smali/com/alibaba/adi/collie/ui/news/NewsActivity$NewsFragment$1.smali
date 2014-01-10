.class Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$1;
.super Ljava/lang/Object;
.source "NewsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->initContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    const-string v2, "news click"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/service/NewsData;

    .line 190
    .local v0, data:Lcom/alibaba/adi/collie/model/service/NewsData;
    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v1, "NewsContext"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->TAG:Ljava/lang/String;

    const-string v2, "news click, send action"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    new-instance v2, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment$1;->this$1:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/service/NewsData;->getApp_open_url()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/service/NewsData;->getToutiao_wap_url()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenToutiao;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    goto :goto_0
.end method
