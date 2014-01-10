.class Lcom/etao/kakalib/CaptureCodeFragment$1;
.super Ljava/lang/Object;
.source "CaptureCodeFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    iput-object p1, p0, Lcom/etao/kakalib/CaptureCodeFragment$1;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 236
    const-string v0, "ScanFragment"

    const-string v1, "------ WARNING *** surfaceChanged() "

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 219
    const-string v0, "ScanFragment"

    const-string v1, "------ WARNING *** surfaceCreated() "

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-nez p1, :cond_0

    .line 221
    const-string v0, "ScanFragment"

    const-string v1, "----- WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$1;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #getter for: Lcom/etao/kakalib/CaptureCodeFragment;->hasSurface:Z
    invoke-static {v0}, Lcom/etao/kakalib/CaptureCodeFragment;->access$0(Lcom/etao/kakalib/CaptureCodeFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$1;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    const/4 v1, 0x1

    #setter for: Lcom/etao/kakalib/CaptureCodeFragment;->hasSurface:Z
    invoke-static {v0, v1}, Lcom/etao/kakalib/CaptureCodeFragment;->access$1(Lcom/etao/kakalib/CaptureCodeFragment;Z)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$1;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    #calls: Lcom/etao/kakalib/CaptureCodeFragment;->initCameraAndStartPreview()V
    invoke-static {v0}, Lcom/etao/kakalib/CaptureCodeFragment;->access$2(Lcom/etao/kakalib/CaptureCodeFragment;)V

    .line 227
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/etao/kakalib/CaptureCodeFragment$1;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    const/4 v1, 0x0

    #setter for: Lcom/etao/kakalib/CaptureCodeFragment;->hasSurface:Z
    invoke-static {v0, v1}, Lcom/etao/kakalib/CaptureCodeFragment;->access$1(Lcom/etao/kakalib/CaptureCodeFragment;Z)V

    .line 232
    return-void
.end method
