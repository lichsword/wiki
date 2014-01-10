.class public Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;
.super Landroid/widget/FrameLayout;
.source "MyRelativeLayout.java"


# instance fields
.field private AttributeSetBottomMargin:I

.field private AttributeSetLeftMargin:I

.field private AttributeSetTopMargin:I

.field private firstObtainPams:Z

.field private isFirst:Z

.field private isRememberLayout:Z

.field private isSetParams:Z

.field private marginLeft:I

.field private marginTop:I

.field private previousBottom:I

.field private previousLeft:I

.field private previousRight:I

.field private previousTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, -0x2710

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginLeft:I

    .line 28
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    .line 29
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousTop:I

    .line 30
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousBottom:I

    .line 31
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousLeft:I

    .line 32
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousRight:I

    .line 33
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isFirst:Z

    .line 34
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isRememberLayout:Z

    .line 36
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetLeftMargin:I

    .line 37
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetTopMargin:I

    .line 38
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetBottomMargin:I

    .line 44
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->firstObtainPams:Z

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isSetParams:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, -0x2710

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginLeft:I

    .line 28
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    .line 29
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousTop:I

    .line 30
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousBottom:I

    .line 31
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousLeft:I

    .line 32
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousRight:I

    .line 33
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isFirst:Z

    .line 34
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isRememberLayout:Z

    .line 36
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetLeftMargin:I

    .line 37
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetTopMargin:I

    .line 38
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetBottomMargin:I

    .line 44
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->firstObtainPams:Z

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isSetParams:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, -0x2710

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginLeft:I

    .line 28
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    .line 29
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousTop:I

    .line 30
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousBottom:I

    .line 31
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousLeft:I

    .line 32
    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousRight:I

    .line 33
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isFirst:Z

    .line 34
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isRememberLayout:Z

    .line 36
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetLeftMargin:I

    .line 37
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetTopMargin:I

    .line 38
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetBottomMargin:I

    .line 44
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->firstObtainPams:Z

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isSetParams:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/high16 v11, 0x4000

    const/16 v10, -0x2710

    const/4 v9, 0x0

    .line 169
    iget-boolean v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->firstObtainPams:Z

    if-eqz v7, :cond_0

    .line 171
    const-string v7, "msg"

    const-string v8, "1\u53d1\u8d77\u8c03\u7528"

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v7, :cond_1

    .line 173
    const-string v7, "msg"

    const-string v8, "2\u53d1\u8d77\u8c03\u7528"

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 175
    .local v2, pams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetLeftMargin:I

    .line 176
    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetTopMargin:I

    .line 177
    iget v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetBottomMargin:I

    .line 178
    iput-boolean v9, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->firstObtainPams:Z

    .line 191
    .end local v2           #pams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    iget v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousBottom:I

    iget v8, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousTop:I

    sub-int v3, v7, v8

    .line 194
    .local v3, previousHeight:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v3, v7, :cond_2

    iget v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousTop:I

    if-eq v7, v10, :cond_2

    iget-boolean v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isFirst:Z

    if-eqz v7, :cond_2

    .line 195
    iget v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    if-eq v7, v10, :cond_2

    .line 196
    iget v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousRight:I

    iget v8, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousLeft:I

    sub-int v4, v7, v8

    .line 197
    .local v4, previousWidth:I
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 198
    .local v0, heightMeasureSpec:I
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 199
    .local v6, widthMeasureSpec:I
    iput-boolean v9, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isFirst:Z

    .line 200
    invoke-virtual {p0, v6, v0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->measure(II)V

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getLeft()I

    move-result v1

    .line 204
    .local v1, left:I
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getTop()I

    move-result v5

    .line 205
    .local v5, top:I
    add-int v7, v1, v4

    add-int v8, v5, v3

    invoke-super {p0, v1, v5, v7, v8}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 223
    .end local v0           #heightMeasureSpec:I
    .end local v1           #left:I
    .end local v4           #previousWidth:I
    .end local v5           #top:I
    .end local v6           #widthMeasureSpec:I
    :goto_1
    return-void

    .line 179
    .end local v3           #previousHeight:I
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_0

    .line 180
    const-string v7, "msg"

    const-string v8, "3\u53d1\u8d77\u8c03\u7528"

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 182
    .local v2, pams:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetLeftMargin:I

    .line 183
    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetTopMargin:I

    .line 184
    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetBottomMargin:I

    .line 185
    iput-boolean v9, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->firstObtainPams:Z

    goto :goto_0

    .line 210
    .end local v2           #pams:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3       #previousHeight:I
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isFirst:Z

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getTop()I

    move-result v7

    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousTop:I

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getBottom()I

    move-result v7

    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousBottom:I

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getRight()I

    move-result v7

    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousRight:I

    .line 214
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getLeft()I

    move-result v7

    iput v7, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->previousLeft:I

    .line 219
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->firstObtainPams:Z

    if-eqz v1, :cond_1

    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_3

    .line 63
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginLeft:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 67
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 70
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginLeft:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 74
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 86
    .end local v0           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isSetParams:Z

    if-nez v1, :cond_5

    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_4

    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 92
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 93
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetLeftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 94
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetBottomMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 97
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetTopMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 101
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetLeftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 102
    iget v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->AttributeSetBottomMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 121
    .end local v0           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public final layout(IIIIZ)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "isRemeberLayout"

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isSetParams:Z

    .line 147
    iput-boolean p5, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isRememberLayout:Z

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 150
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 228
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 233
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isRememberLayout:Z

    if-eqz v0, :cond_0

    .line 236
    iput p2, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginLeft:I

    .line 237
    iput p3, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isRememberLayout:Z

    .line 243
    :cond_0
    return-void
.end method

.method public reCountViewSize()V
    .locals 1

    .prologue
    .line 154
    const/16 v0, -0x2710

    iput v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    .line 155
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    const/16 v1, -0x2710

    .line 135
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isRememberLayout:Z

    .line 138
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->isSetParams:Z

    .line 139
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->firstObtainPams:Z

    .line 140
    iget v0, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    if-eq v0, v1, :cond_0

    .line 141
    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    .line 143
    :cond_0
    return-void
.end method

.method public setMarginTop(I)V
    .locals 0
    .parameter "top"

    .prologue
    .line 41
    iput p1, p0, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->marginTop:I

    .line 42
    return-void
.end method
