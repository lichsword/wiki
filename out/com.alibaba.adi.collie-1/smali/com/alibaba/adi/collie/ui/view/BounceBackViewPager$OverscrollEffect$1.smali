.class Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect$1;
.super Ljava/lang/Object;
.source "BounceBackViewPager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->onRelease()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect$1;->this$1:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 93
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect$1;->this$1:Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;

    const/4 v1, 0x0

    #calls: Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->startAnimation(F)V
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;->access$1(Lcom/alibaba/adi/collie/ui/view/BounceBackViewPager$OverscrollEffect;F)V

    .line 89
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 84
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 80
    return-void
.end method
