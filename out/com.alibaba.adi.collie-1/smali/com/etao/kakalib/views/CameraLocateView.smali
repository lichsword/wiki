.class public Lcom/etao/kakalib/views/CameraLocateView;
.super Landroid/widget/FrameLayout;
.source "CameraLocateView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;,
        Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraLocateView"


# instance fields
.field context:Landroid/content/Context;

.field cornerHeight:I

.field cornerLB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

.field cornerLT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

.field cornerRB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

.field cornerRT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

.field cornerWidth:I

.field dispatch:Z

.field private mCameraResolution:Landroid/graphics/Point;

.field private mRectBox:Landroid/graphics/Rect;

.field ratioh:F

.field ratiow:F

.field viewBox:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    iput v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerHeight:I

    .line 89
    iput v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerWidth:I

    .line 218
    iput-boolean v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->dispatch:Z

    .line 259
    iput v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratioh:F

    .line 260
    iput v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratiow:F

    .line 37
    iput-object p1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/etao/kakalib/views/CameraLocateView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerHeight:I

    .line 89
    iput v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerWidth:I

    .line 218
    iput-boolean v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->dispatch:Z

    .line 259
    iput v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratioh:F

    .line 260
    iput v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratiow:F

    .line 43
    iput-object p1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/etao/kakalib/views/CameraLocateView;->init()V

    .line 45
    return-void
.end method

.method private changeCoordinateSystem(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .parameter "rect"

    .prologue
    .line 273
    iget-object v5, p0, Lcom/etao/kakalib/views/CameraLocateView;->mCameraResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 274
    .local v1, current_sys_left:I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 275
    .local v3, current_sys_top:I
    iget-object v5, p0, Lcom/etao/kakalib/views/CameraLocateView;->mCameraResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v6

    .line 276
    .local v2, current_sys_right:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 277
    .local v0, current_sys_bottom:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 279
    .local v4, out:Landroid/graphics/Rect;
    int-to-float v5, v1

    iget v6, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratiow:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 280
    int-to-float v5, v3

    iget v6, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratioh:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 281
    int-to-float v5, v2

    iget v6, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratiow:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 282
    int-to-float v5, v0

    iget v6, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratioh:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 283
    return-object v4
.end method

.method private computBoxRect()Landroid/graphics/Rect;
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 146
    iget-object v9, p0, Lcom/etao/kakalib/views/CameraLocateView;->viewBox:Landroid/view/View;

    if-nez v9, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v5

    .line 149
    :cond_1
    iget-object v9, p0, Lcom/etao/kakalib/views/CameraLocateView;->viewBox:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 150
    .local v4, mViewBoxW:I
    iget-object v9, p0, Lcom/etao/kakalib/views/CameraLocateView;->viewBox:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 151
    .local v3, mViewBoxH:I
    const-string v9, "CameraLocateView"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "boxw:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-boxh:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 155
    new-array v8, v14, [I

    .line 156
    .local v8, viewBoxLoaction:[I
    new-array v2, v14, [I

    .line 157
    .local v2, location:[I
    invoke-virtual {p0, v2}, Lcom/etao/kakalib/views/CameraLocateView;->getLocationInWindow([I)V

    .line 158
    const-string v9, "CameraLocateView"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "this locationx:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v11, v2, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-this locationy:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v2, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v9, p0, Lcom/etao/kakalib/views/CameraLocateView;->viewBox:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 160
    const-string v9, "CameraLocateView"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "viewBoxLocationx:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v11, v8, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-viewBoxLoactiony:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 161
    aget v11, v8, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 160
    invoke-static {v9, v10}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    aget v9, v8, v12

    aget v10, v2, v12

    sub-int v1, v9, v10

    .line 164
    .local v1, left:I
    aget v9, v8, v13

    aget v10, v2, v13

    sub-int v7, v9, v10

    .line 165
    .local v7, top:I
    add-int v6, v1, v4

    .line 166
    .local v6, right:I
    add-int v0, v7, v3

    .line 167
    .local v0, bottom:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v7, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 168
    .local v5, rect:Landroid/graphics/Rect;
    goto/16 :goto_0
.end method

.method private generateAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;
    .locals 13
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 172
    const/4 v0, 0x4

    new-array v7, v0, [Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;

    .line 174
    .local v7, animationArray:[Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/etao/kakalib/views/CameraLocateView;->getAnimation(IIII)[Landroid/view/animation/Animation;

    move-result-object v8

    .line 175
    .local v8, anims:[Landroid/view/animation/Animation;
    new-instance v0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;

    aget-object v2, v8, v9

    aget-object v3, v8, v10

    aget-object v4, v8, v11

    aget-object v5, v8, v12

    .line 176
    iget-object v6, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerLT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;-><init>(Lcom/etao/kakalib/views/CameraLocateView;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;)V

    .line 175
    aput-object v0, v7, v9

    .line 178
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/etao/kakalib/views/CameraLocateView;->getAnimation(IIII)[Landroid/view/animation/Animation;

    move-result-object v8

    .line 179
    new-instance v0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;

    aget-object v2, v8, v9

    aget-object v3, v8, v10

    aget-object v4, v8, v11

    aget-object v5, v8, v12

    .line 180
    iget-object v6, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerLB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;-><init>(Lcom/etao/kakalib/views/CameraLocateView;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;)V

    .line 179
    aput-object v0, v7, v10

    .line 182
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/etao/kakalib/views/CameraLocateView;->getAnimation(IIII)[Landroid/view/animation/Animation;

    move-result-object v8

    .line 183
    new-instance v0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;

    aget-object v2, v8, v9

    aget-object v3, v8, v10

    aget-object v4, v8, v11

    aget-object v5, v8, v12

    .line 184
    iget-object v6, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerRT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;-><init>(Lcom/etao/kakalib/views/CameraLocateView;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;)V

    .line 183
    aput-object v0, v7, v11

    .line 186
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/etao/kakalib/views/CameraLocateView;->getAnimation(IIII)[Landroid/view/animation/Animation;

    move-result-object v8

    .line 187
    new-instance v0, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;

    aget-object v2, v8, v9

    aget-object v3, v8, v10

    aget-object v4, v8, v11

    aget-object v5, v8, v12

    .line 188
    iget-object v6, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerRB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;-><init>(Lcom/etao/kakalib/views/CameraLocateView;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;)V

    .line 187
    aput-object v0, v7, v12

    .line 190
    return-object v7
.end method

.method private getAnimation(IIII)[Landroid/view/animation/Animation;
    .locals 9
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"

    .prologue
    .line 195
    const-string v0, "CameraLocateView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAnim:fx:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-tox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-fy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-toy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x4

    new-array v7, v0, [Landroid/view/animation/Animation;

    .line 198
    .local v7, animations:[Landroid/view/animation/Animation;
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/etao/kakalib/views/CameraLocateView;->getAnimation0(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    aput-object v1, v7, v0

    .line 199
    const/4 v0, 0x0

    aget-object v0, v7, v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 201
    const/4 v8, 0x1

    const v5, 0x3f4ccccd

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/etao/kakalib/views/CameraLocateView;->getAnimation1(IIIIFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v7, v8

    .line 202
    const/4 v0, 0x1

    aget-object v0, v7, v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 204
    const/4 v8, 0x2

    const v5, 0x3f19999a

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/etao/kakalib/views/CameraLocateView;->getAnimation1(IIIIFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v7, v8

    .line 205
    const/4 v0, 0x2

    aget-object v0, v7, v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 207
    const/4 v8, 0x3

    const v5, 0x3e99999a

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/etao/kakalib/views/CameraLocateView;->getAnimation1(IIIIFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v7, v8

    .line 208
    const/4 v0, 0x3

    aget-object v0, v7, v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 209
    return-object v7
.end method

.method private getAnimation0(IIII)Landroid/view/animation/Animation;
    .locals 5
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"

    .prologue
    .line 213
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 214
    .local v0, translate:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 215
    return-object v0
.end method

.method private getAnimation1(IIIIFF)Landroid/view/animation/Animation;
    .locals 7
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "fromAlpha"
    .parameter "toAlpha"

    .prologue
    .line 231
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 232
    .local v1, set:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, p1

    int-to-float v4, p2

    int-to-float v5, p3

    int-to-float v6, p4

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 233
    .local v2, translate:Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p5, p6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 235
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 236
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 237
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 238
    return-object v1
.end method

.method private getCornerHeight()I
    .locals 4

    .prologue
    .line 93
    iget v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerHeight:I

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 95
    const-string v2, "corner_lt"

    const v3, 0x7f0a003a

    .line 94
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etao/kakalib/views/CameraLocateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerHeight:I

    .line 98
    .end local v0           #image:Landroid/widget/ImageView;
    :cond_0
    iget v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerHeight:I

    return v1
.end method

.method private getCornerWidth()I
    .locals 4

    .prologue
    .line 103
    iget v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerWidth:I

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 105
    const-string v2, "corner_lt"

    const v3, 0x7f0a003a

    .line 104
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/etao/kakalib/views/CameraLocateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 106
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerWidth:I

    .line 108
    .end local v0           #image:Landroid/widget/ImageView;
    :cond_0
    iget v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerWidth:I

    return v1
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 48
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 49
    const-string v2, "kakalib_layout_left_shadow"

    const v3, 0x7f03000e

    .line 48
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getLayoutIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 50
    .local v6, v:Landroid/view/View;
    new-instance v0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    .line 51
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    const-string v2, "corner_lt"

    const v3, 0x7f0a003a

    .line 50
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 53
    const-string v3, "corner_lt_shadow0"

    const v4, 0x7f0a003b

    .line 52
    invoke-static {v1, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 54
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 55
    const-string v4, "corner_lt_shadow1"

    const v5, 0x7f0a003c

    .line 54
    invoke-static {v1, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 57
    const-string v5, "corner_lt_shadow2"

    const v7, 0x7f0a003d

    .line 56
    invoke-static {v1, v5, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;-><init>(Lcom/etao/kakalib/views/CameraLocateView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 50
    iput-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerLT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    .line 58
    new-instance v0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    .line 59
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    const-string v2, "corner_lb"

    const v3, 0x7f0a003e

    .line 58
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 61
    const-string v3, "corner_lb_shadow0"

    const v4, 0x7f0a003f

    .line 60
    invoke-static {v1, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 63
    const-string v4, "corner_lb_shadow1"

    const v5, 0x7f0a0040

    .line 62
    invoke-static {v1, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 64
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 65
    const-string v5, "corner_lb_shadow2"

    const v7, 0x7f0a0041

    .line 64
    invoke-static {v1, v5, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;-><init>(Lcom/etao/kakalib/views/CameraLocateView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 58
    iput-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerLB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    .line 66
    new-instance v0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    .line 67
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    const-string v2, "corner_rt"

    const v3, 0x7f0a0042

    .line 66
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 68
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 69
    const-string v3, "corner_rt_shadow0"

    const v4, 0x7f0a0043

    .line 68
    invoke-static {v1, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 70
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 71
    const-string v4, "corner_rt_shadow1"

    const v5, 0x7f0a0044

    .line 70
    invoke-static {v1, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 72
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 73
    const-string v5, "corner_rt_shadow2"

    const v7, 0x7f0a0045

    .line 72
    invoke-static {v1, v5, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;-><init>(Lcom/etao/kakalib/views/CameraLocateView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 66
    iput-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerRT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    .line 74
    new-instance v0, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    .line 75
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    const-string v2, "corner_rb"

    const v3, 0x7f0a0046

    .line 74
    invoke-static {v1, v2, v3}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 77
    const-string v3, "corner_rb_shadow0"

    const v4, 0x7f0a0047

    .line 76
    invoke-static {v1, v3, v4}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 78
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 79
    const-string v4, "corner_rb_shadow1"

    const v5, 0x7f0a0048

    .line 78
    invoke-static {v1, v4, v5}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 80
    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->context:Landroid/content/Context;

    .line 81
    const-string v5, "corner_rb_shadow2"

    const v7, 0x7f0a0049

    .line 80
    invoke-static {v1, v5, v7}, Lcom/etao/kakalib/util/KakaLibResourceUtil;->getIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;-><init>(Lcom/etao/kakalib/views/CameraLocateView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 74
    iput-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerRB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    .line 82
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerLT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    invoke-virtual {v0, v8}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerLB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    invoke-virtual {v0, v8}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerRT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    invoke-virtual {v0, v8}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerRB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    invoke-virtual {v0, v8}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->setVisibility(I)V

    .line 86
    return-void
.end method

.method private setParams(II)V
    .locals 3
    .parameter "surfaceWidth"
    .parameter "surfaceHeight"

    .prologue
    const/4 v2, 0x0

    .line 263
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->mCameraResolution:Landroid/graphics/Point;

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratioh:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratiow:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->mCameraResolution:Landroid/graphics/Point;

    .line 267
    .local v0, pt:Landroid/graphics/Point;
    int-to-float v1, p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratiow:F

    .line 268
    int-to-float v1, p2

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratioh:F

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->dispatch:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x4

    .line 404
    const-string v0, "CameraLocateView"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerLT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerLB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerRT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerRB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    invoke-virtual {v0, v2}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->setVisibility(I)V

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->dispatch:Z

    .line 411
    invoke-virtual {p0}, Lcom/etao/kakalib/views/CameraLocateView;->invalidate()V

    .line 412
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 416
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 420
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 256
    invoke-virtual {p0}, Lcom/etao/kakalib/views/CameraLocateView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/etao/kakalib/views/CameraLocateView;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/etao/kakalib/views/CameraLocateView;->setParams(II)V

    .line 257
    return-void
.end method

.method public setBoxView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/etao/kakalib/views/CameraLocateView;->viewBox:Landroid/view/View;

    .line 143
    return-void
.end method

.method public setCameraResolution(Landroid/graphics/Point;)V
    .locals 3
    .parameter "pt"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->mCameraResolution:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->mCameraResolution:Landroid/graphics/Point;

    .line 244
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->mCameraResolution:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 245
    iget-object v0, p0, Lcom/etao/kakalib/views/CameraLocateView;->mCameraResolution:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 246
    const-string v0, "CameraLocateView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/etao/kakalib/views/CameraLocateView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etao/kakalib/views/CameraLocateView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    const-string v2, "-r.x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-r.y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/etao/kakalib/views/CameraLocateView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/etao/kakalib/views/CameraLocateView;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/etao/kakalib/views/CameraLocateView;->setParams(II)V

    .line 249
    const-string v0, "CameraLocateView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ratiow:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratiow:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-ratioh:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->ratioh:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method public setRects(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "rect"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    iget-boolean v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->dispatch:Z

    if-eqz v2, :cond_0

    .line 139
    :goto_0
    return-void

    .line 116
    :cond_0
    iput-boolean v6, p0, Lcom/etao/kakalib/views/CameraLocateView;->dispatch:Z

    .line 118
    invoke-direct {p0, p1}, Lcom/etao/kakalib/views/CameraLocateView;->changeCoordinateSystem(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 119
    .local v1, toRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/etao/kakalib/views/CameraLocateView;->getCornerHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 120
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/etao/kakalib/views/CameraLocateView;->getCornerWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 121
    iget-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/etao/kakalib/views/CameraLocateView;->computBoxRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    .line 123
    iget-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/etao/kakalib/views/CameraLocateView;->getCornerHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 125
    iget-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/etao/kakalib/views/CameraLocateView;->getCornerWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 128
    :cond_1
    const-string v2, "CameraLocateView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RectBox:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-rectTo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 130
    const-string v2, "CameraLocateView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RectBox:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-rectTo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->mRectBox:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/etao/kakalib/views/CameraLocateView;->generateAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;

    move-result-object v0

    .line 132
    .local v0, animationGroup:[Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;
    iget-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerLT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->startAnimation(Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;)V

    .line 133
    aget-object v2, v0, v5

    invoke-virtual {v2, p0}, Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;->setAnimationlistener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 134
    iget-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerLB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->startAnimation(Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;)V

    .line 135
    iget-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerRT:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->startAnimation(Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;)V

    .line 136
    iget-object v2, p0, Lcom/etao/kakalib/views/CameraLocateView;->cornerRB:Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/etao/kakalib/views/CameraLocateView$CornerImageGroup;->startAnimation(Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;)V

    .line 138
    .end local v0           #animationGroup:[Lcom/etao/kakalib/views/CameraLocateView$ImageGroupAnimation;
    :cond_2
    invoke-virtual {p0}, Lcom/etao/kakalib/views/CameraLocateView;->invalidate()V

    goto/16 :goto_0
.end method
