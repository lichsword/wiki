.class Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$3;
.super Ljava/lang/Object;
.source "TaobaoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$3;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 318
    const-string v0, "GotoTaobao"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$3;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    new-instance v1, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$3;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment$3;->this$1:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 320
    const v5, 0x7f0a00df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    .line 319
    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 321
    return-void
.end method
