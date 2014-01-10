.class Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;
.super Ljava/lang/Object;
.source "CameraLocateView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/views/CameraLocateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageGroupAnimation"
.end annotation


# instance fields
.field endCount:I

.field imageGroup:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

.field img:Landroid/view/animation/Animation;

.field isStart:Z

.field listener:Landroid/view/animation/Animation$AnimationListener;

.field shadow0:Landroid/view/animation/Animation;

.field shadow1:Landroid/view/animation/Animation;

.field shadow2:Landroid/view/animation/Animation;

.field final synthetic this$0:Lcom/etao/kakalib/views/CameraLocateView;


# direct methods
.method public constructor <init>(Lcom/etao/kakalib/views/CameraLocateView;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;)V
    .locals 1
    .parameter
    .parameter "img"
    .parameter "shadow0"
    .parameter "shadow1"
    .parameter "shadow2"
    .parameter "imageGroup"

    .prologue
    const/4 v0, 0x0

    .line 298
    iput-object p1, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->this$0:Lcom/etao/kakalib/views/CameraLocateView;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-boolean v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->isStart:Z

    .line 294
    iput v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->endCount:I

    .line 299
    iput-object p2, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->img:Landroid/view/animation/Animation;

    .line 300
    iput-object p3, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->shadow0:Landroid/view/animation/Animation;

    .line 301
    iput-object p4, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->shadow1:Landroid/view/animation/Animation;

    .line 302
    iput-object p5, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->shadow2:Landroid/view/animation/Animation;

    .line 303
    iput-object p6, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->imageGroup:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    .line 304
    invoke-direct {p0}, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->init()V

    .line 305
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->img:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 309
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->shadow0:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 310
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->shadow1:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 311
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->shadow2:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 312
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 320
    iget v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->endCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->endCount:I

    .line 321
    iget v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->endCount:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->listener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 326
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 330
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->isStart:Z

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->listener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 339
    :cond_0
    return-void
.end method

.method public setAnimationlistener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->listener:Landroid/view/animation/Animation$AnimationListener;

    .line 316
    return-void
.end method
