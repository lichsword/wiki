.class Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$8;
.super Ljava/lang/Object;
.source "KakaLibBarCodeProductDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->showHasNoPriceDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

.field private final synthetic val$keyWord:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$8;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    iput-object p2, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$8;->val$keyWord:Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 182
    const-string v1, "huoyansdk_barcode_nobarcode_search"

    invoke-static {v1}, Lcom/etao/kakalib/util/UserTrackHelper;->onButtonClick(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$8;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->getmContext()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$8;->val$keyWord:Ljava/lang/String;

    .line 183
    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibCallTaoBaoClientUtil;->goTaobaoClientSearchListActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 185
    .local v0, opened:Z
    if-nez v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper$8;->this$0:Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;

    invoke-virtual {v1}, Lcom/etao/kakalib/util/dialoghelper/KakaLibBarCodeProductDialogHelper;->restartPreviewModeAndRequestOneFrame()V

    .line 188
    :cond_0
    return-void
.end method
