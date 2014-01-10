.class public final Lcom/alibaba/adi/collie/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AnimationCheckbox:[I = null

.field public static final AnimationCheckbox_isLarge:I = 0x0

.field public static final BounceBackViewPager:[I = null

.field public static final BounceBackViewPager_overscroll_animation_duration:I = 0x1

.field public static final BounceBackViewPager_overscroll_translation:I = 0x0

.field public static final DashedLine:[I = null

.field public static final DashedLine_color:I = 0x0

.field public static final FlowLayout:[I = null

.field public static final FlowLayout_LayoutParams:[I = null

.field public static final FlowLayout_LayoutParams_layout_horizontalSpacing:I = 0x1

.field public static final FlowLayout_LayoutParams_layout_newLine:I = 0x0

.field public static final FlowLayout_LayoutParams_layout_verticalSpacing:I = 0x2

.field public static final FlowLayout_debugDraw:I = 0x3

.field public static final FlowLayout_horizontalSpacing:I = 0x0

.field public static final FlowLayout_orientation:I = 0x2

.field public static final FlowLayout_verticalSpacing:I = 0x1

.field public static final LockPatternView:[I

.field public static final LockPatternView_aspect:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2790
    new-array v0, v3, [I

    .line 2791
    const v1, 0x7f010001

    aput v1, v0, v2

    .line 2790
    sput-object v0, Lcom/alibaba/adi/collie/R$styleable;->AnimationCheckbox:[I

    .line 2820
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/adi/collie/R$styleable;->BounceBackViewPager:[I

    .line 2870
    new-array v0, v3, [I

    .line 2871
    const/high16 v1, 0x7f01

    aput v1, v0, v2

    .line 2870
    sput-object v0, Lcom/alibaba/adi/collie/R$styleable;->DashedLine:[I

    .line 2905
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/adi/collie/R$styleable;->FlowLayout:[I

    .line 2985
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alibaba/adi/collie/R$styleable;->FlowLayout_LayoutParams:[I

    .line 3045
    new-array v0, v3, [I

    .line 3046
    const v1, 0x7f010002

    aput v1, v0, v2

    .line 3045
    sput-object v0, Lcom/alibaba/adi/collie/R$styleable;->LockPatternView:[I

    .line 3066
    return-void

    .line 2820
    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data

    .line 2905
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2985
    :array_2
    .array-data 0x4
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
