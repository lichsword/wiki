.class public Lcom/alibaba/adi/collie/ui/view/TipsBox;
.super Ljava/lang/Object;
.source "TipsBox.java"


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 6
    .parameter "containerView"
    .parameter "contentText"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v1, p1

    .line 18
    .local v1, layoutView:Landroid/view/ViewGroup;
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 19
    const v4, 0x7f030097

    const/4 v5, 0x0

    .line 18
    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 20
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const v4, 0x3f666666

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 24
    .local v0, firstAnimation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 25
    new-instance v3, Lcom/alibaba/adi/collie/ui/view/TipsBox$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/alibaba/adi/collie/ui/view/TipsBox$1;-><init>(Lcom/alibaba/adi/collie/ui/view/TipsBox;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 71
    return-void
.end method
