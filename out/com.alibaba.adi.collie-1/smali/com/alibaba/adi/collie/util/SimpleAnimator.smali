.class public Lcom/alibaba/adi/collie/util/SimpleAnimator;
.super Ljava/lang/Object;
.source "SimpleAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;,
        Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;,
        Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = 0x15e

.field public static final FRAME_DELAY_TIME:I = 0xc

.field public static final STATE_ENDED:I = 0x2

.field public static final STATE_RUNNING:I = 0x1

.field public static final STATE_STARTED:I


# instance fields
.field private mAnimatorFrame:Ljava/lang/Runnable;

.field private mAnimatorHandler:Landroid/os/Handler;

.field private mCurrentTime:J

.field private mCurrentValue:J

.field private mDuration:J

.field private mEaseName:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

.field private mEndValue:J

.field private mInitialized:Ljava/lang/Boolean;

.field protected mListener:Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;

.field private mPosition:F

.field private mRunning:Ljava/lang/Boolean;

.field private mStartTime:J

.field private mStartValue:J

.field private mTargetValue:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;-><init>(Landroid/os/Handler;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 7
    .parameter "hanlder"

    .prologue
    const-wide/high16 v5, -0x8000

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mDuration:J

    .line 26
    iput-wide v2, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mTargetValue:J

    .line 27
    iput-wide v2, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartValue:J

    .line 28
    iput-wide v2, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mEndValue:J

    .line 29
    iput-wide v2, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentValue:J

    .line 31
    iput-wide v5, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartTime:J

    .line 32
    iput-wide v5, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentTime:J

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mPosition:F

    .line 34
    sget-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeLinear:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mEaseName:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 36
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mInitialized:Ljava/lang/Boolean;

    .line 37
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mRunning:Ljava/lang/Boolean;

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mAnimatorHandler:Landroid/os/Handler;

    .line 54
    :goto_0
    new-instance v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$1;-><init>(Lcom/alibaba/adi/collie/util/SimpleAnimator;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mAnimatorFrame:Ljava/lang/Runnable;

    .line 61
    return-void

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mAnimatorHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/util/SimpleAnimator;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mAnimatorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private easeExecute(F)J
    .locals 4
    .parameter "p"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mEaseName:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    if-nez v0, :cond_0

    .line 256
    sget-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeLinear:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mEaseName:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mEaseName:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    iget-wide v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartValue:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mTargetValue:J

    long-to-float v2, v2

    const/high16 v3, 0x3f80

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;->obtainValue(FFFF)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method private fireAnimationEnd()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mListener:Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mListener:Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;

    invoke-interface {v0, p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;->onAnimationEnd(Lcom/alibaba/adi/collie/util/SimpleAnimator;)V

    .line 287
    :cond_0
    return-void
.end method

.method private fireAnimationEnterFrame()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mListener:Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mListener:Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;

    invoke-interface {v0, p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;->onAnimationEnterFrame(Lcom/alibaba/adi/collie/util/SimpleAnimator;)V

    .line 278
    :cond_0
    return-void
.end method

.method private fireAnimationStart()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mListener:Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mListener:Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;

    invoke-interface {v0, p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;->onAnimationStart(Lcom/alibaba/adi/collie/util/SimpleAnimator;)V

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mAnimatorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mAnimatorFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mRunning:Ljava/lang/Boolean;

    .line 197
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartTime:J

    .line 198
    return-void
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentTime:J

    return-wide v0
.end method

.method public getCurrentValue()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentValue:J

    return-wide v0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mPosition:F

    return v0
.end method

.method public getStartValue()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartValue:J

    return-wide v0
.end method

.method public getTargetValue()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mTargetValue:J

    return-wide v0
.end method

.method public initialize(JJ)V
    .locals 8
    .parameter "from"
    .parameter "to"

    .prologue
    .line 69
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->initialize(JJJLcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;)V

    .line 70
    return-void
.end method

.method public initialize(JJJ)V
    .locals 8
    .parameter "from"
    .parameter "to"
    .parameter "duration"

    .prologue
    .line 79
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->initialize(JJJLcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;)V

    .line 80
    return-void
.end method

.method public initialize(JJJLcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;)V
    .locals 2
    .parameter "from"
    .parameter "to"
    .parameter "duration"
    .parameter "easeName"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->reset()V

    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mInitialized:Ljava/lang/Boolean;

    .line 93
    iput-wide p1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartValue:J

    .line 94
    iput-wide p3, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mEndValue:J

    .line 95
    sub-long v0, p3, p1

    iput-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mTargetValue:J

    .line 96
    instance-of v0, p7, Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    if-eqz v0, :cond_0

    .line 97
    iput-object p7, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mEaseName:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 99
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_1

    .line 100
    invoke-virtual {p0, p5, p6}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->setDuration(J)V

    .line 102
    :cond_1
    return-void
.end method

.method public isRunning()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mRunning:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected reset()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 108
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mInitialized:Ljava/lang/Boolean;

    .line 109
    iput-wide v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mTargetValue:J

    .line 110
    iput-wide v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartValue:J

    .line 111
    iput-wide v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mEndValue:J

    .line 112
    iput-wide v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentValue:J

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mPosition:F

    .line 115
    iput-wide v4, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartTime:J

    .line 116
    iput-wide v4, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentTime:J

    .line 117
    const-wide/16 v0, 0x15e

    iput-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mDuration:J

    .line 118
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mRunning:Ljava/lang/Boolean;

    .line 119
    sget-object v0, Lcom/alibaba/adi/collie/util/SimpleAnimator$EasingFunction;->easeLinear:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mEaseName:Lcom/alibaba/adi/collie/util/SimpleAnimator$IEasing;

    .line 120
    return-void
.end method

.method public setAnimationListener(Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mListener:Lcom/alibaba/adi/collie/util/SimpleAnimator$AnimationListener;

    .line 228
    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .parameter "durationMillis"

    .prologue
    .line 216
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mDuration:J

    .line 220
    return-void
.end method

.method public setPosition(F)V
    .locals 2
    .parameter "position"

    .prologue
    .line 168
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 169
    const/4 p1, 0x0

    .line 173
    :cond_0
    :goto_0
    iput p1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mPosition:F

    .line 174
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->easeExecute(F)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentValue:J

    .line 175
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->fireAnimationEnterFrame()V

    .line 176
    return-void

    .line 170
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 171
    const/high16 p1, 0x3f80

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation values must been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mRunning:Ljava/lang/Boolean;

    .line 187
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartTime:J

    .line 188
    iget-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartTime:J

    iput-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentTime:J

    .line 189
    iget-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartValue:J

    iput-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentValue:J

    .line 190
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->fireAnimationStart()V

    .line 191
    iget-object v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mAnimatorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mAnimatorFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->cancel()V

    .line 202
    invoke-direct {p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->fireAnimationEnd()V

    .line 203
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mPosition:F

    .line 204
    iget-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mEndValue:J

    iput-wide v0, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentValue:J

    .line 205
    return-void
.end method

.method public update()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 235
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentTime:J

    .line 236
    iget-object v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-wide v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 239
    iget-wide v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartTime:J

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 240
    iget-wide v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentTime:J

    iget-wide v3, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->stop()V

    .line 242
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    .line 244
    :cond_1
    iget-wide v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mCurrentTime:J

    iget-wide v3, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, v5

    iget-wide v2, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mDuration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 245
    .local v0, position:F
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/util/SimpleAnimator;->setPosition(F)V

    .line 247
    iget v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mPosition:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    .line 248
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/util/SimpleAnimator;->mRunning:Ljava/lang/Boolean;

    .line 251
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method
