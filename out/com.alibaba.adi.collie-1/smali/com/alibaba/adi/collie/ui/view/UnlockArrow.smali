.class public Lcom/alibaba/adi/collie/ui/view/UnlockArrow;
.super Landroid/widget/ImageView;
.source "UnlockArrow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 31
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/view/UnlockArrow;->setVisibility(I)V

    .line 32
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 33
    .local v0, putAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/UnlockArrow;->setAnimation(Landroid/view/animation/Animation;)V

    .line 35
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 41
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/view/UnlockArrow;->setVisibility(I)V

    .line 42
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 43
    .local v0, popAm:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/view/UnlockArrow;->setAnimation(Landroid/view/animation/Animation;)V

    .line 45
    return-void
.end method
