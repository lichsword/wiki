.class Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;
.super Ljava/lang/Object;
.source "KakaLibPosterTestActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;->this$1:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;)Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;->this$1:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 43
    new-instance v2, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1$1;

    invoke-direct {v2, p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1$1;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;)V

    .line 60
    .local v2, posterCallback:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;
    :try_start_0
    new-instance v1, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    .line 61
    iget-object v3, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2$1;->this$1:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;
    invoke-static {v3}, Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;->access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity$2;)Lcom/etao/kakalib/posterscanning/KakaLibPosterTestActivity;

    move-result-object v3

    .line 60
    invoke-direct {v1, v3, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;)V

    .line 63
    .local v1, kakaLibPosterDecodeManager:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    .line 64
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    .line 62
    invoke-virtual {v1, p1, v3, v4}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->decodePoster([BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1           #kakaLibPosterDecodeManager:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
