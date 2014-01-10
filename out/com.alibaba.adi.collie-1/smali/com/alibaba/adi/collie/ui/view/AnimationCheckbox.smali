.class public Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;
.super Landroid/widget/CheckBox;
.source "AnimationCheckbox.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static bitmapChecked:Landroid/graphics/Bitmap;

.field private static bitmapUnchecked:Landroid/graphics/Bitmap;


# instance fields
.field public backgroundStatus:Ljava/lang/String;

.field private checkboxHeight:I

.field private checkboxWith:I

.field private mChecked:Z

.field private mPaint:Landroid/graphics/Paint;

.field private scale_animation_check:Landroid/view/animation/Animation;

.field private thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

.field private thisContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->backgroundStatus:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mChecked:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->backgroundStatus:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mChecked:Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->backgroundStatus:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mChecked:Z

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;)Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    return-object v0
.end method

.method private initBitmapResources(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v3, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapChecked:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapUnchecked:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 65
    .local v2, resources:Landroid/content/res/Resources;
    sget-object v3, Lcom/alibaba/adi/collie/R$styleable;->AnimationCheckbox:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 67
    .local v1, isLarge:Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    const-class v4, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    monitor-enter v4

    .line 70
    :try_start_0
    sget-object v3, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapChecked:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapUnchecked:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 71
    :cond_1
    if-eqz v1, :cond_4

    const v3, 0x7f020084

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    sput-object v3, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapChecked:Landroid/graphics/Bitmap;

    .line 73
    if-eqz v1, :cond_5

    const v3, 0x7f020085

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    sput-object v3, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapUnchecked:Landroid/graphics/Bitmap;

    .line 69
    :cond_2
    monitor-exit v4

    .line 78
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #isLarge:Z
    .end local v2           #resources:Landroid/content/res/Resources;
    :cond_3
    return-void

    .line 72
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #isLarge:Z
    .restart local v2       #resources:Landroid/content/res/Resources;
    :cond_4
    const v3, 0x7f020038

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 74
    :cond_5
    const v3, 0x7f020039

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisContext:Landroid/content/Context;

    .line 53
    iput-object p0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->initBitmapResources(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapChecked:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->checkboxWith:I

    .line 56
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapChecked:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->checkboxHeight:I

    .line 57
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->checkboxWith:I

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setWidth(I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->checkboxHeight:I

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->setHeight(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mChecked:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v3, -0x1

    .line 186
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->getPaddingLeft()I

    move-result v0

    .line 187
    .local v0, pointX:I
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->getPaddingTop()I

    move-result v1

    .line 189
    .local v1, pointY:I
    iget-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mChecked:Z

    if-eqz v2, :cond_0

    .line 190
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mPaint:Landroid/graphics/Paint;

    .line 191
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    sget-object v2, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapChecked:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mPaint:Landroid/graphics/Paint;

    .line 196
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    sget-object v2, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapUnchecked:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 11
    .parameter "checked"

    .prologue
    const v2, 0x3f99999a

    const v7, 0x3f333333

    const/4 v5, 0x0

    const/high16 v1, 0x3f80

    .line 92
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 97
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mChecked:Z

    .line 98
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapChecked:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->getPaddingLeft()I

    move-result v3

    add-int v9, v0, v3

    .line 99
    .local v9, pointX:I
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->bitmapChecked:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->getPaddingTop()I

    move-result v3

    add-int v10, v0, v3

    .line 100
    .local v10, pointY:I
    if-eqz p1, :cond_1

    .line 101
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    int-to-float v6, v9

    .line 102
    int-to-float v8, v10

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 101
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    .line 103
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisContext:Landroid/content/Context;

    .line 104
    const v2, 0x10a000c

    .line 103
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;

    invoke-direct {v1, p0, v9, v10}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$1;-><init>(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;II)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->TAG:Ljava/lang/String;

    const-string v1, "zhixingset--true"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->postInvalidate()V

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    int-to-float v6, v9

    .line 132
    int-to-float v8, v10

    move v2, v7

    move v3, v1

    move v4, v7

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 131
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    .line 133
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisContext:Landroid/content/Context;

    .line 134
    const v2, 0x10a0006

    .line 133
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$2;

    invoke-direct {v1, p0, v9, v10}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox$2;-><init>(Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;II)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->thisCheckbox:Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->scale_animation_check:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    sget-object v0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->TAG:Ljava/lang/String;

    const-string v1, "zhixingset--false"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setChecked(ZZ)V
    .locals 0
    .parameter "checked"
    .parameter "noPlayAnimation"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/view/AnimationCheckbox;->mChecked:Z

    .line 88
    return-void
.end method
