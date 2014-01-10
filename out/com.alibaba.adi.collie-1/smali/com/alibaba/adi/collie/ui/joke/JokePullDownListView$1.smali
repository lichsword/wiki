.class Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView$1;
.super Ljava/lang/Object;
.source "JokePullDownListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView$1;->this$0:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 42
    const-string v0, "JokeRefreshFromFooter"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView$1;->this$0:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->setSelection(I)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView$1;->this$0:Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;

    #calls: Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->onDirectRefresh()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;->access$0(Lcom/alibaba/adi/collie/ui/joke/JokePullDownListView;)V

    .line 45
    return-void
.end method
