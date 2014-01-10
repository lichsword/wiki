.class public Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;
.super Landroid/view/animation/Animation;
.source "ExpandCollapseAnimation.java"


# static fields
.field public static final COLLAPSE:I = 0x1

.field public static final EXPAND:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAnimatedView:Landroid/view/View;

.field private final mEndHeight:I

.field private final mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mEndHeight:I

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    iput p2, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mType:I

    .line 50
    iget v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mType:I

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mEndHeight:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 57
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 64
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 65
    iget v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mType:I

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mEndHeight:I

    neg-int v1, v1

    iget v2, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mEndHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 70
    :goto_0
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "anim height "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 82
    :goto_1
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mEndHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mType:I

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 75
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mEndHeight:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 78
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/ExpandCollapseAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1
.end method
