.class Lcom/etao/kakalib/CaptureCodeFragment$3$1;
.super Ljava/lang/Object;
.source "CaptureCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/CaptureCodeFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etao/kakalib/CaptureCodeFragment$3;

.field private final synthetic val$newTorchSetting:Ljava/lang/Boolean;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/CaptureCodeFragment$3;Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->this$1:Lcom/etao/kakalib/CaptureCodeFragment$3;

    iput-object p2, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->val$newTorchSetting:Ljava/lang/Boolean;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->val$newTorchSetting:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->val$newTorchSetting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->this$1:Lcom/etao/kakalib/CaptureCodeFragment$3;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment$3;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;
    invoke-static {v0}, Lcom/etao/kakalib/CaptureCodeFragment$3;->access$0(Lcom/etao/kakalib/CaptureCodeFragment$3;)Lcom/etao/kakalib/CaptureCodeFragment;

    move-result-object v0

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/etao/kakalib/CaptureCodeFragment;->access$5(Lcom/etao/kakalib/CaptureCodeFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->this$1:Lcom/etao/kakalib/CaptureCodeFragment$3;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment$3;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;
    invoke-static {v1}, Lcom/etao/kakalib/CaptureCodeFragment$3;->access$0(Lcom/etao/kakalib/CaptureCodeFragment$3;)Lcom/etao/kakalib/CaptureCodeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 297
    const-string v2, "kakalib_scan_flashlight_effect"

    .line 298
    const v3, 0x7f020049

    .line 296
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->this$1:Lcom/etao/kakalib/CaptureCodeFragment$3;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment$3;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;
    invoke-static {v0}, Lcom/etao/kakalib/CaptureCodeFragment$3;->access$0(Lcom/etao/kakalib/CaptureCodeFragment$3;)Lcom/etao/kakalib/CaptureCodeFragment;

    move-result-object v0

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->imageButtonScanTorch:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/etao/kakalib/CaptureCodeFragment;->access$5(Lcom/etao/kakalib/CaptureCodeFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$3$1;->this$1:Lcom/etao/kakalib/CaptureCodeFragment$3;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment$3;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;
    invoke-static {v1}, Lcom/etao/kakalib/CaptureCodeFragment$3;->access$0(Lcom/etao/kakalib/CaptureCodeFragment$3;)Lcom/etao/kakalib/CaptureCodeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 302
    const-string v2, "kakalib_scan_flashlight_normal"

    .line 303
    const v3, 0x7f02004a

    .line 301
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 300
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
