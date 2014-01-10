.class Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1$1;
.super Ljava/lang/Object;
.source "KakaLibPosterTestActivity.java"

# interfaces
.implements Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1$1;->this$2:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public posterScanFailed()V
    .locals 2

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1$1;->this$2:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;->this$1:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;->access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;)Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;

    move-result-object v1

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;->access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;)Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;

    move-result-object v1

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->access$3(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;)Lcom/etao/kakalib/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etao/kakalib/camera/CameraManager;->startPreviewRetry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public posterScanResultPageHasStart()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
