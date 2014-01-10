.class Lcom/alibaba/adi/collie/ui/view/TipsBox$1;
.super Ljava/lang/Object;
.source "TipsBox.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/TipsBox;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/TipsBox;

.field private final synthetic val$layoutView:Landroid/view/ViewGroup;

.field private final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/TipsBox;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1;->this$0:Lcom/alibaba/adi/collie/ui/view/TipsBox;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1;->val$layoutView:Landroid/view/ViewGroup;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 39
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f666666

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 40
    .local v0, secondAnimation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 41
    new-instance v1, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1;->val$layoutView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/adi/collie/ui/view/TipsBox$1$1;-><init>(Lcom/alibaba/adi/collie/ui/view/TipsBox$1;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 66
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/TipsBox$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 67
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 35
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 30
    return-void
.end method
