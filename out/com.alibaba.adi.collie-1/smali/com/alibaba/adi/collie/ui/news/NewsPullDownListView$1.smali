.class Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView$1;
.super Ljava/lang/Object;
.source "NewsPullDownListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView$1;->this$0:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 41
    const-string v0, "NewsRefreshFromFooter"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView$1;->this$0:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->setSelection(I)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView$1;->this$0:Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;

    #calls: Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->onDirectRefresh()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;->access$0(Lcom/alibaba/adi/collie/ui/news/NewsPullDownListView;)V

    .line 44
    return-void
.end method
