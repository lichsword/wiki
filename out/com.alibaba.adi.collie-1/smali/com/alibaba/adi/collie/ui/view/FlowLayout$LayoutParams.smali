.class public Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static NO_SPACING:I


# instance fields
.field private horizontalSpacing:I

.field private newLine:Z

.field private verticalSpacing:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, -0x1

    sput v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 287
    sget v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 288
    sget v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->newLine:Z

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 287
    sget v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 288
    sget v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->newLine:Z

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "layoutParams"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    sget v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 288
    sget v0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->newLine:Z

    .line 302
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->newLine:Z

    return v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 288
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I

    return v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 287
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    return v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 285
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->x:I

    return v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 286
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->y:I

    return v0
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 318
    sget-object v1, Lcom/alibaba/adi/collie/R$styleable;->FlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 320
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    :try_start_0
    sget v2, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 321
    const/4 v1, 0x2

    sget v2, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 322
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->newLine:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    return-void

    .line 323
    :catchall_0
    move-exception v1

    .line 324
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    throw v1
.end method


# virtual methods
.method public horizontalSpacingSpecified()Z
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    sget v1, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 313
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->x:I

    .line 314
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->y:I

    .line 315
    return-void
.end method

.method public verticalSpacingSpecified()Z
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->verticalSpacing:I

    sget v1, Lcom/alibaba/adi/collie/ui/view/FlowLayout$LayoutParams;->NO_SPACING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
