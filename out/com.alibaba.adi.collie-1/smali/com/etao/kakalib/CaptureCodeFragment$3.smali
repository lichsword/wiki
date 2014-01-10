.class Lcom/etao/kakalib/CaptureCodeFragment$3;
.super Ljava/lang/Object;
.source "CaptureCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/CaptureCodeFragment;->torchButtonClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/CaptureCodeFragment;

.field private final synthetic val$newTorchSetting:Ljava/lang/Boolean;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/CaptureCodeFragment;Ljava/lang/Boolean;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    iput-object p2, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->val$newTorchSetting:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->val$v:Landroid/view/View;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/CaptureCodeFragment$3;)Lcom/etao/kakalib/CaptureCodeFragment;
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;
    invoke-static {v0}, Lcom/etao/kakalib/CaptureCodeFragment;->access$4(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/camera/CameraManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const-string v0, "TAG"

    const-string v1, "start set flashLight"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;
    invoke-static {v0}, Lcom/etao/kakalib/CaptureCodeFragment;->access$4(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/camera/CameraManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;
    invoke-static {v0}, Lcom/etao/kakalib/CaptureCodeFragment;->access$4(Lcom/etao/kakalib/CaptureCodeFragment;)Lcom/etao/kakalib/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->val$newTorchSetting:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etao/kakalib/camera/CameraManager;->setTorch(Z)V

    .line 289
    const-string v0, "TAG"

    const-string v1, "end set flashLight"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    invoke-virtual {v0}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/etao/kakalib/CaptureCodeFragment$3$1;

    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->val$v:Landroid/view/View;

    iget-object v3, p0, Lcom/etao/kakalib/CaptureCodeFragment$3;->val$newTorchSetting:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lcom/etao/kakalib/CaptureCodeFragment$3$1;-><init>(Lcom/etao/kakalib/CaptureCodeFragment$3;Landroid/view/View;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
