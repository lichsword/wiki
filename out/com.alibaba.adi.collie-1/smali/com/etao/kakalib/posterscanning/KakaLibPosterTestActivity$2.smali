.class Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;
.super Ljava/lang/Object;
.source "KakaLibPosterTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;)Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->cameraManager:Lcom/etao/kakalib/camera/CameraManager;
    invoke-static {v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->access$3(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;)Lcom/etao/kakalib/camera/CameraManager;

    move-result-object v0

    new-instance v1, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;

    invoke-direct {v1, p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;)V

    invoke-virtual {v0, v2, v2, v1}, Lcom/etao/kakalib/camera/CameraManager;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 72
    return-void
.end method
