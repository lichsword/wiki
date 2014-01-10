.class public Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;
.super Landroid/widget/LinearLayout;
.source "DigitKeypadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;
    }
.end annotation


# static fields
.field public static final DIGIT_MAX_PLACES:I = 0xff

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCursorPlaces:I

.field private mDigitCellArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/view/DigitCellView;",
            ">;"
        }
    .end annotation
.end field

.field private mDigitSize:I

.field private mInputCallback:Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;

.field private mInputValues:[I

.field private mOverflowValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    .line 51
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mOverflowValues:Ljava/util/ArrayList;

    .line 53
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitSize:I

    .line 58
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    .line 62
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitCellArray:Ljava/util/ArrayList;

    .line 70
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->initView()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    .line 51
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mOverflowValues:Ljava/util/ArrayList;

    .line 53
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitSize:I

    .line 58
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    .line 62
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitCellArray:Ljava/util/ArrayList;

    .line 75
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->initView()V

    .line 76
    return-void
.end method

.method private initDigitItems()V
    .locals 7

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->getChildCount()I

    move-result v1

    .line 113
    .local v1, childCount:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitCellArray:Ljava/util/ArrayList;

    .line 114
    const/4 v4, 0x0

    .line 116
    .local v4, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 126
    iput v4, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitSize:I

    .line 127
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    .line 128
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 129
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mOverflowValues:Ljava/util/ArrayList;

    .line 130
    iput v4, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    .line 131
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    if-eqz v5, :cond_1

    move-object v2, v0

    .line 120
    check-cast v2, Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 121
    .local v2, digitCell:Lcom/alibaba/adi/collie/ui/view/DigitCellView;
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitCellArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 116
    .end local v2           #digitCell:Lcom/alibaba/adi/collie/ui/view/DigitCellView;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    .line 84
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->initDigitItems()V

    .line 85
    return-void
.end method

.method private outOfDigitBounds(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mOverflowValues:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mOverflowValues:Ljava/util/ArrayList;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mOverflowValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputCallback:Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputCallback:Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;

    const-string v1, ""

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mOverflowValues:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitSize:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;->onOutOfDigitBounds(Ljava/lang/String;I)V

    .line 146
    :cond_1
    return-void
.end method


# virtual methods
.method public backSpace()Z
    .locals 4

    .prologue
    .line 189
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitSize:I

    if-ne v1, v2, :cond_0

    .line 190
    const/4 v1, 0x0

    .line 199
    :goto_0
    return v1

    .line 192
    :cond_0
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    .line 193
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitCellArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 194
    .local v0, cell:Lcom/alibaba/adi/collie/ui/view/DigitCellView;
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->clearValue()V

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 199
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public clearValue()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 242
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitCellArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 244
    .local v1, cells:[Lcom/alibaba/adi/collie/ui/view/DigitCellView;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 248
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitSize:I

    iput v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    .line 249
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mOverflowValues:Ljava/util/ArrayList;

    .line 250
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 252
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputCallback:Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputCallback:Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;

    invoke-interface {v2, v4}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;->onDigitValueChange(I)V

    .line 255
    :cond_0
    return-void

    .line 244
    :cond_1
    aget-object v0, v1, v2

    .line 245
    .local v0, cell:Lcom/alibaba/adi/collie/ui/view/DigitCellView;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->clearValue()V

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getDigitSize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitSize:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->getValue()I

    move-result v0

    .line 231
    .local v0, value:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 232
    const-string v1, ""

    .line 235
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()I
    .locals 12

    .prologue
    .line 207
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    if-eqz v4, :cond_2

    .line 208
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    array-length v1, v4

    .line 209
    .local v1, len:I
    const/4 v2, 0x0

    .line 211
    .local v2, total:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 221
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #total:I
    :goto_1
    return v2

    .line 212
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #total:I
    :cond_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    aget v3, v4, v0

    .line 213
    .local v3, val:I
    if-ltz v3, :cond_1

    const/16 v4, 0x9

    if-gt v3, v4, :cond_1

    .line 214
    int-to-double v4, v2

    int-to-double v6, v3

    const-wide/high16 v8, 0x4024

    int-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #total:I
    .end local v3           #val:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getValueBitSize()I
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public inputValue(I)V
    .locals 4
    .parameter "n"

    .prologue
    .line 153
    if-ltz p1, :cond_0

    const/16 v1, 0x9

    if-le p1, v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    if-gez v1, :cond_2

    .line 158
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->outOfDigitBounds(I)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    if-eqz v1, :cond_3

    .line 163
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputValues:[I

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    aput p1, v1, v2

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitCellArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 167
    .local v0, digitCell:Lcom/alibaba/adi/collie/ui/view/DigitCellView;
    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {v0, p1}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->setValue(I)V

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputCallback:Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;

    if-eqz v1, :cond_6

    .line 173
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    if-nez v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputCallback:Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mDigitSize:I

    invoke-interface {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;->onFilledDigitBounds(Ljava/lang/String;I)V

    .line 177
    :cond_5
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputCallback:Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->getValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;->onDigitValueChange(I)V

    .line 180
    :cond_6
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mCursorPlaces:I

    goto :goto_0
.end method

.method public setDigitInputListener(Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;->mInputCallback:Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;

    .line 263
    return-void
.end method
