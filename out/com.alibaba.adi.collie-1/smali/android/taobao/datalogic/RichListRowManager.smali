.class public Landroid/taobao/datalogic/RichListRowManager;
.super Ljava/lang/Object;
.source "RichListRowManager.java"


# static fields
.field public static final COLOUMNS_ADJUST_MODE:I = 0x2

.field public static final COLOUMNS_FIXED_MODE:I = 0x1


# instance fields
.field public coloumnMode:I

.field private horizontalPadding:I

.field private horizontalSpacing:I

.field private init:Z

.field private mFinishFlag:Z

.field private mItemCountOfRow:I

.field private mItemHeight:I

.field private mListWidth:I

.field private mRealItemHeight:I

.field private mRealItemWidth:I

.field private targetItemWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    .line 15
    iput v2, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalSpacing:I

    .line 16
    iput v2, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalPadding:I

    .line 19
    iput-boolean v1, p0, Landroid/taobao/datalogic/RichListRowManager;->mFinishFlag:Z

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Landroid/taobao/datalogic/RichListRowManager;->coloumnMode:I

    .line 21
    iput-boolean v1, p0, Landroid/taobao/datalogic/RichListRowManager;->init:Z

    return-void
.end method


# virtual methods
.method public getColumnSpacing()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalSpacing:I

    return v0
.end method

.method public getItemHeight()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemHeight:I

    return v0
.end method

.method public getListItemCountOfRow()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    return v0
.end method

.method public getListRowCount(I)I
    .locals 2
    .parameter "rawCount"

    .prologue
    .line 104
    iget-boolean v1, p0, Landroid/taobao/datalogic/RichListRowManager;->mFinishFlag:Z

    if-nez v1, :cond_0

    .line 106
    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    div-int v1, p1, v1

    .line 110
    :goto_0
    return v1

    .line 109
    :cond_0
    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    rem-int v1, p1, v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 110
    .local v0, tair:I
    :goto_1
    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    div-int v1, p1, v1

    add-int/2addr v1, v0

    goto :goto_0

    .line 109
    .end local v0           #tair:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getRawPosition(I)I
    .locals 1
    .parameter "rowPosition"

    .prologue
    .line 157
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getRealItemWidth()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemWidth:I

    return v0
.end method

.method public getRealRowPadding()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalPadding:I

    return v0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/taobao/datalogic/RichListRowManager;->init:Z

    return v0
.end method

.method public setColoumnNum(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 58
    iput p1, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Landroid/taobao/datalogic/RichListRowManager;->coloumnMode:I

    .line 60
    return-void
.end method

.method public setColumnWidth(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 29
    iput p1, p0, Landroid/taobao/datalogic/RichListRowManager;->targetItemWidth:I

    .line 30
    iput p2, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemHeight:I

    .line 32
    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 0
    .parameter "horizontalPadding"

    .prologue
    .line 53
    iput p1, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalPadding:I

    .line 54
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 44
    iput p1, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalSpacing:I

    .line 45
    return-void
.end method

.method public setStateFinish(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 166
    iput-boolean p1, p0, Landroid/taobao/datalogic/RichListRowManager;->mFinishFlag:Z

    .line 167
    return-void
.end method

.method public startProcessRealSize(I)V
    .locals 5
    .parameter "listWidth"

    .prologue
    const-wide/high16 v3, 0x3ff0

    .line 68
    iput p1, p0, Landroid/taobao/datalogic/RichListRowManager;->mListWidth:I

    .line 69
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->coloumnMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 71
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mListWidth:I

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalSpacing:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->targetItemWidth:I

    iget v2, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalSpacing:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    iput v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    .line 72
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mListWidth:I

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalSpacing:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemWidth:I

    .line 75
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemHeight:I

    int-to-double v0, v0

    div-double/2addr v0, v3

    iget v2, p0, Landroid/taobao/datalogic/RichListRowManager;->targetItemWidth:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemWidth:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemHeight:I

    .line 78
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemHeight:I

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemHeight:I

    if-le v0, v1, :cond_0

    .line 79
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemHeight:I

    iput v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemHeight:I

    .line 93
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/datalogic/RichListRowManager;->init:Z

    .line 95
    return-void

    .line 82
    :cond_1
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mListWidth:I

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalSpacing:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemCountOfRow:I

    div-int/2addr v0, v1

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->horizontalSpacing:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemWidth:I

    .line 83
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemHeight:I

    int-to-double v0, v0

    div-double/2addr v0, v3

    iget v2, p0, Landroid/taobao/datalogic/RichListRowManager;->targetItemWidth:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemWidth:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemHeight:I

    .line 88
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemHeight:I

    iget v1, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemHeight:I

    if-le v0, v1, :cond_0

    .line 89
    iget v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mItemHeight:I

    iput v0, p0, Landroid/taobao/datalogic/RichListRowManager;->mRealItemHeight:I

    goto :goto_0
.end method
