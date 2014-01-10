.class public Lcom/alibaba/adi/collie/ui/view/DigitCellView;
.super Landroid/view/View;
.source "DigitCellView.java"


# static fields
.field public static final CELL_POSITION_FLAG_BASE:I = 0x1

.field private static final CLEAN_EFFECT_DURATION:I = 0xfa

.field public static final DIGIT_CLEAN_VALUE:I = -0x1

.field public static final DIGIT_DISPLAY_LED:I = 0x3

.field public static final DIGIT_DISPLAY_PASSWORD:I = 0x2

.field public static final DIGIT_DISPLAY_TEXT:I = 0x1

.field private static final INPUT_EFFECT_DURATION:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mDisplayType:I

.field private mTransitionStarted:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mTransitionStarted:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mDisplayType:I

    .line 38
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->initView()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mTransitionStarted:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mDisplayType:I

    .line 43
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->initView()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mTransitionStarted:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mDisplayType:I

    .line 48
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->initView()V

    .line 49
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 53
    return-void
.end method


# virtual methods
.method public clearValue()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 99
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    if-ne v1, v2, :cond_0

    .line 112
    :goto_0
    return-void

    .line 102
    :cond_0
    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    .line 104
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_1

    .line 105
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mTransitionStarted:Z

    if-eqz v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 107
    .local v0, drawable:Landroid/graphics/drawable/TransitionDrawable;
    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mTransitionStarted:Z

    goto :goto_0

    .line 110
    .end local v0           #drawable:Landroid/graphics/drawable/TransitionDrawable;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->invalidate()V

    goto :goto_0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 90
    const-string v0, ""

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    return v0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 3
    .parameter "n"

    .prologue
    const/4 v2, 0x1

    .line 60
    if-ltz p1, :cond_1

    const/16 v1, 0x9

    if-gt p1, v1, :cond_1

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    if-eq v1, p1, :cond_1

    .line 61
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mValue:I

    .line 63
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 65
    .local v0, drawable:Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->isCrossFadeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 68
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 69
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->mTransitionStarted:Z

    .line 74
    .end local v0           #drawable:Landroid/graphics/drawable/TransitionDrawable;
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->invalidate()V

    goto :goto_0
.end method
