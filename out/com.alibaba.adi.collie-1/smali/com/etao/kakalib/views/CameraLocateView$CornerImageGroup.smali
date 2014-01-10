.class Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;
.super Ljava/lang/Object;
.source "CameraLocateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/views/CameraLocateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CornerImageGroup"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field shadow0:Landroid/widget/ImageView;

.field shadow1:Landroid/widget/ImageView;

.field shadow2:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/etao/kakalib/views/CameraLocateView;


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/views/CameraLocateView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "img"
    .parameter "shadow0"
    .parameter "shadow1"
    .parameter "shadow2"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->this$0:Lcom/etao/kakalib/views/CameraLocateView;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->img:Landroid/widget/ImageView;

    .line 352
    iput-object p3, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->shadow0:Landroid/widget/ImageView;

    .line 353
    iput-object p4, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->shadow1:Landroid/widget/ImageView;

    .line 354
    iput-object p5, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->shadow2:Landroid/widget/ImageView;

    .line 356
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->shadow0:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->shadow1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->shadow2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    return-void
.end method

.method public startAnimation(Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 366
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->img:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->img:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->img:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 371
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->this$0:Lcom/etao/kakalib/views/CameraLocateView;

    iget-object v1, v1, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 372
    .local v0, ha:Landroid/os/Handler;
    new-instance v1, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$1;

    invoke-direct {v1, p0, p1}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$1;-><init>(Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;)V

    .line 379
    const-wide/16 v2, 0x64

    .line 372
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    new-instance v1, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$2;

    invoke-direct {v1, p0, p1}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$2;-><init>(Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;)V

    .line 388
    const-wide/16 v2, 0xc8

    .line 380
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    new-instance v1, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$3;

    invoke-direct {v1, p0, p1}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup$3;-><init>(Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;)V

    .line 396
    const-wide/16 v2, 0x190

    .line 389
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 398
    return-void
.end method
