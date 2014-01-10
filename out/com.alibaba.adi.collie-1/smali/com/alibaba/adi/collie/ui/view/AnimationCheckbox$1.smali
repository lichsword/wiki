.class Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;
.super Ljava/lang/Object;
.source "AnimationCheckbox.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setChecked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

.field private final synthetic val$pointX:I

.field private final synthetic val$pointY:I


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->val$pointX:I

    iput p3, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->val$pointY:I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10
    .parameter "animation"

    .prologue
    const/4 v5, 0x0

    const v2, 0x3f851eb8

    const/high16 v1, 0x3f80

    .line 120
    iget-object v9, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->val$pointX:I

    int-to-float v6, v3

    .line 121
    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->val$pointY:I

    int-to-float v8, v3

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 120
    #setter for: Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;
    invoke-static {v9, v0}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->access$0(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;Landroid/view/animation/Animation;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->access$1(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->access$2(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;)Landroid/content/Context;

    move-result-object v1

    .line 123
    const v2, 0x10a000c

    .line 122
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->access$1(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->access$3(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;)Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->access$1(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 115
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 111
    return-void
.end method
