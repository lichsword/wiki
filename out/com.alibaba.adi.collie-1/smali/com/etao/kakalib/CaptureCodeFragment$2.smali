.class Lcom/etao/kakalib/CaptureCodeFragment$2;
.super Ljava/lang/Object;
.source "CaptureCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/CaptureCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/CaptureCodeFragment;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/CaptureCodeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/CaptureCodeFragment$2;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 251
    .local v0, id:I
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$2;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    invoke-virtual {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "imageButtonScanTorch"

    .line 252
    const v3, 0x7f0a0007

    .line 251
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$2;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #calls: Lcom/etao/kakalib/CaptureCodeFragment;->torchButtonClick(Landroid/view/View;)V
    invoke-static {v1, p1}, Lcom/etao/kakalib/CaptureCodeFragment;->access$3(Lcom/etao/kakalib/CaptureCodeFragment;Landroid/view/View;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$2;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    invoke-virtual {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 261
    const-string v2, "buttonQRDecodeGetPhotoFromAlbum"

    const v3, 0x7f0a0009

    .line 260
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$2;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    invoke-virtual {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->decodeQRFromAlbum()V

    goto :goto_0
.end method
