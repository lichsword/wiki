.class public Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;
.super Landroid/widget/SeekBar;
.source "SeekBarHasTip.java"


# instance fields
.field private TextTip:Landroid/widget/TextView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPosition:[I

.field private final mThumbWidth:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPosition:[I

    .line 38
    const/16 v0, 0x44

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mThumbWidth:I

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mView:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mView:Landroid/view/View;

    const v1, 0x7f0801db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->TextTip:Landroid/widget/TextView;

    .line 49
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 50
    return-void
.end method

.method private getViewHeight(Landroid/view/View;)I
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 89
    .local v1, w:I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 90
    .local v0, h:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    return v2
.end method

.method private getViewWidth(Landroid/view/View;)I
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 76
    .local v1, w:I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 77
    .local v0, h:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    return v2
.end method


# virtual methods
.method public hideSeekDialog()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 101
    :cond_0
    return-void
.end method

.method public setProgressWithAnim(I)V
    .locals 5
    .parameter "progress"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 58
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->getProgress()I

    move-result v1

    .line 60
    .local v1, prevProgress:I
    const-string v2, "progress"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 61
    .local v0, animator:Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 62
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 66
    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    .end local v1           #prevProgress:I
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->setProgress(I)V

    goto :goto_0
.end method

.method public showSeekDialog(Ljava/lang/String;)V
    .locals 8
    .parameter "str"

    .prologue
    .line 110
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->TextTip:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->getProgress()I

    move-result v1

    .line 113
    .local v1, progress:I
    int-to-float v4, v1

    const/high16 v5, 0x3f80

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x44

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 115
    .local v2, thumb_x:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v4, 0x1e

    .line 116
    .local v0, middle:I
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_0

    .line 122
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPosition:[I

    invoke-virtual {p0, v4}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->getLocationOnScreen([I)V

    .line 124
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPosition:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPosition:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 131
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPosition:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->getViewWidth(Landroid/view/View;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x22

    .line 133
    .local v3, x:I
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->getViewWidth(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->mView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/alibaba/adi/collie/ui/view/SeekBarHasTip;->getViewHeight(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v3           #x:I
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v4

    goto :goto_0
.end method
