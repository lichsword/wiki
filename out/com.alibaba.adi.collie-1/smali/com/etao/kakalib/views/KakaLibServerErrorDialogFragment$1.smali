.class Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment$1;
.super Ljava/lang/Object;
.source "KakaLibServerErrorDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 76
    const-string v0, "huoyansdk_barcode_nobarcode_search"

    invoke-static {v0}, Lcom/etao/kakalib/util/UserTrackHelper;->onButtonClick(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibCallTaoBaoClientUtil;->goTaobaoClientSearchListActivity(Landroid/content/Context;Ljava/lang/String;)Z

    .line 78
    iget-object v0, p0, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment$1;->this$0:Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/views/KakaLibServerErrorDialogFragment;->dismiss()V

    .line 79
    return-void
.end method
