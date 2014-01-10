.class Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$1;
.super Ljava/lang/Object;
.source "KakaLibPosterTestActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;
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
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$1;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 165
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$1;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->hasSurface:Z
    invoke-static {v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$1;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;

    const/4 v1, 0x1

    #setter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->hasSurface:Z
    invoke-static {v0, v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->access$1(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;Z)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$1;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;

    #calls: Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->initCameraAndStartPreview(Landroid/view/SurfaceHolder;)V
    invoke-static {v0, p1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->access$2(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;Landroid/view/SurfaceHolder;)V

    .line 156
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$1;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;

    const/4 v1, 0x0

    #setter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->hasSurface:Z
    invoke-static {v0, v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;->access$1(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;Z)V

    .line 161
    return-void
.end method
