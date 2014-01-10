.class Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$2;
.super Ljava/lang/Object;
.source "CameraLocateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->startAnimation(Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

.field private final synthetic val$animation:Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$2;->this$1:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    iput-object p2, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$2;->val$animation:Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$2;->this$1:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    iget-object v0, v0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->shadow1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$2;->val$animation:Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;

    iget-object v1, v1, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->shadow1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 385
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$2;->this$1:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    iget-object v0, v0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->shadow1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    return-void
.end method
