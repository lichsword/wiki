.class public Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;
.super Ljava/lang/Object;
.source "MoveAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;,
        Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;,
        Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;,
        Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;,
        Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;,
        Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfAccelerate;,
        Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfDecelerate;,
        Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;,
        Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;,
        Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;
    }
.end annotation


# static fields
.field private static final EXECUTE_ACCELERATE_CALLBACK:I = 0xe

.field private static final EXECUTE_DECELERATE_CALLBACK:I = 0xd

.field private static final EXECUTE_FREEFALL_CALLBACK:I = 0xb

.field private static final EXECUTE_THROWUP_CALLBACK:I = 0xc

.field public static final HORIZONTAL_MOVEMENT:I = 0x1

.field public static final MOVE_DOWN:I = 0x5

.field public static final MOVE_LEFT:I = 0x6

.field public static final MOVE_RIGHT:I = 0x7

.field public static final MOVE_UP:I = 0x4

.field public static final NORMAL_MOVE_MODE:I = 0x1

.field public static final SLOW_MOVE_MODE:I = 0x2

.field public static final VERTICAL_MOVEMENT:I = 0x2


# instance fields
.field private final ANIM_MSG_MOVE:I

.field private final MSG_ON_MOVE:I

.field private a:F

.field private accelerateListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;

.field private allQueueCount:I

.field private currentIndex:I

.field private currentS:I

.field private decelerateListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;

.field private freefallListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;

.field private isPlayAnimation:Z

.field private isStopAnimation:Z

.field private k:F

.field private mBottom:[I

.field private mContainerLayout:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

.field private mCurrentBottom:[I

.field private mCurrentLeft:[I

.field private mCurrentMotioneventY:I

.field private mCurrentRight:[I

.field private mCurrentTop:[I

.field private mDiff:I

.field private mDirection:I

.field private mHandler:Landroid/os/Handler;

.field private mIsRemeberLayout:[Z

.field private mLeft:[I

.field private mMaxIndex:I

.field private mMontainerCount:I

.field private mMovableRange:[I

.field private mMoveFactor:F

.field private mMoveMode:I

.field private mOffset:I

.field private mOffsetVector:I

.field private mOffsetY:I

.field private mPeviousMotioneventY:I

.field private mPeviousQueueOffset:I

.field private mQueueOffset:I

.field private mRight:[I

.field private mSlowMoveDirection:I

.field private mStartMotioneventX:I

.field private mStartMotioneventY:I

.field private mStartSlowMoveValue:I

.field private mTop:[I

.field private mViewHeight:[I

.field private mViewWidth:[I

.field private moveListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;

.field private pastQueueCount:I

.field private previousTime:J

.field private reboundListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;

.field private s:F

.field private throwUpListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;

.field private v0:F


# direct methods
.method public constructor <init>([Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;I[Z)V
    .locals 5
    .parameter "containerLayoutList"
    .parameter "direction"
    .parameter "isRemeberLayout"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I

    .line 35
    iput v4, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->ANIM_MSG_MOVE:I

    .line 36
    const/16 v1, 0x8

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->MSG_ON_MOVE:I

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMovableRange:[I

    .line 65
    iput v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    .line 67
    iput v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffset:I

    .line 69
    iput v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    .line 71
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z

    .line 74
    iput v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->allQueueCount:I

    .line 76
    iput v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->pastQueueCount:I

    .line 78
    new-instance v1, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$1;-><init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;

    .line 141
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->previousTime:J

    .line 233
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isStopAnimation:Z

    .line 278
    iput v4, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMoveMode:I

    .line 283
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMoveFactor:F

    .line 284
    const/4 v1, 0x5

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mSlowMoveDirection:I

    .line 378
    iput v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mPeviousQueueOffset:I

    .line 379
    iput v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentMotioneventY:I

    .line 380
    iput v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mPeviousMotioneventY:I

    .line 382
    iput v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mDiff:I

    .line 192
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mContainerLayout:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    .line 193
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mIsRemeberLayout:[Z

    .line 194
    array-length v1, p1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    .line 195
    iput p2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mDirection:I

    .line 196
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mViewWidth:[I

    .line 197
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mViewHeight:[I

    .line 198
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mLeft:[I

    .line 199
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mTop:[I

    .line 200
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mRight:[I

    .line 201
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mBottom:[I

    .line 202
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentLeft:[I

    .line 203
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentTop:[I

    .line 204
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentRight:[I

    .line 205
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentBottom:[I

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    if-lt v0, v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onRestore()V

    .line 216
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mViewWidth:[I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mContainerLayout:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getWidth()I

    move-result v2

    aput v2, v1, v0

    .line 210
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mViewHeight:[I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mContainerLayout:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getHeight()I

    move-result v2

    aput v2, v1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->move(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->freefallListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Z
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isStopAnimation:Z

    return v0
.end method

.method static synthetic access$11(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I

    return-void
.end method

.method static synthetic access$12(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->k:F

    return v0
.end method

.method static synthetic access$13(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentS:I

    return-void
.end method

.method static synthetic access$14(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentS:I

    return v0
.end method

.method static synthetic access$15(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I

    return-void
.end method

.method static synthetic access$16(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMaxIndex:I

    return v0
.end method

.method static synthetic access$17(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->s:F

    return v0
.end method

.method static synthetic access$18(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$19(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMaxIndex:I

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I

    return v0
.end method

.method static synthetic access$20(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->reboundListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;

    return-object v0
.end method

.method static synthetic access$21(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->throwUpListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;

    return-void
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->throwUpListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z

    return-void
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->a:F

    return v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I

    return v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->decelerateListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->accelerateListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->v0:F

    return v0
.end method

.method private move(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->previousTime:J

    .line 147
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 149
    .local v6, direction:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    .line 150
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffset:I

    .line 153
    const/4 v7, 0x0

    .line 155
    .local v7, i:I
    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    if-lt v7, v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->moveListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->moveListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;

    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    invoke-interface {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;->onMoveingCallback(I)V

    .line 179
    :cond_0
    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 159
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentTop:[I

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mTop:[I

    aget v1, v1, v7

    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    add-int/2addr v1, v2

    aput v1, v0, v7

    .line 160
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentBottom:[I

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mTop:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mViewHeight:[I

    aget v2, v2, v7

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    add-int/2addr v1, v2

    aput v1, v0, v7

    .line 168
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mContainerLayout:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mLeft:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentTop:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mRight:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentBottom:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mIsRemeberLayout:[Z

    aget-boolean v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->layout(IIIIZ)V

    .line 155
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 161
    :cond_3
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 163
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentLeft:[I

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mLeft:[I

    aget v1, v1, v7

    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    add-int/2addr v1, v2

    aput v1, v0, v7

    .line 164
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentRight:[I

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mLeft:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mViewWidth:[I

    aget v2, v2, v7

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    add-int/2addr v1, v2

    aput v1, v0, v7

    goto :goto_1
.end method

.method private moveOffset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMovableRange:[I

    aget v2, v2, v3

    if-ge v1, v2, :cond_1

    .line 463
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMovableRange:[I

    aget v1, v1, v3

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    .line 468
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 469
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 470
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mDirection:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 471
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 473
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 475
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mPeviousQueueOffset:I

    .line 476
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentMotioneventY:I

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mPeviousMotioneventY:I

    .line 479
    return-void

    .line 464
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMovableRange:[I

    aget v2, v2, v4

    if-le v1, v2, :cond_0

    .line 465
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMovableRange:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    goto :goto_0
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    return v0
.end method

.method public getOffsetToEnd()I
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMovableRange:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOffsetToStart()I
    .locals 3

    .prologue
    .line 339
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMovableRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public inAccelerate(FFFFI)V
    .locals 4
    .parameter "v0"
    .parameter "s"
    .parameter "a"
    .parameter "k"
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z

    .line 730
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isStopAnimation:Z

    .line 731
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onRestore()V

    .line 732
    iput p3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->a:F

    .line 733
    iput p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->v0:F

    .line 734
    iput p2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->s:F

    .line 735
    iput p4, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->k:F

    .line 736
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I

    .line 737
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMaxIndex:I

    .line 738
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfAccelerate;

    invoke-direct {v1, p0, p5}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfAccelerate;-><init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 740
    return-void
.end method

.method public inDecelerate(FFFI)V
    .locals 5
    .parameter "v0"
    .parameter "s"
    .parameter "k"
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 658
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z

    .line 659
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isStopAnimation:Z

    .line 660
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onRestore()V

    .line 661
    float-to-int v1, p2

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I

    .line 662
    const/high16 v1, 0x4000

    mul-float/2addr v1, p2

    div-float v0, v1, p1

    .line 663
    .local v0, t:F
    div-float v1, p1, v0

    neg-float v1, v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->a:F

    .line 664
    iput p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->v0:F

    .line 665
    iput p2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->s:F

    .line 666
    iput p3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->k:F

    .line 667
    iput v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I

    .line 668
    div-float v1, v0, p3

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMaxIndex:I

    .line 669
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfDecelerate;

    invoke-direct {v2, p0, p4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfDecelerate;-><init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 671
    return-void
.end method

.method public inFreefall(FFFI)V
    .locals 4
    .parameter "a"
    .parameter "s"
    .parameter "k"
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z

    .line 514
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isStopAnimation:Z

    .line 515
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onRestore()V

    .line 516
    float-to-int v0, p2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I

    .line 517
    iput p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->a:F

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->v0:F

    .line 520
    iput p2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->s:F

    .line 521
    iput p3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->k:F

    .line 522
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I

    .line 523
    const/high16 v0, 0x4000

    mul-float/2addr v0, p2

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    float-to-double v2, p3

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMaxIndex:I

    .line 525
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;

    invoke-direct {v1, p0, p4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfFreefall;-><init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    return-void
.end method

.method public inRebound(FFFIFF)V
    .locals 3
    .parameter "a"
    .parameter "s"
    .parameter "k"
    .parameter "direction"
    .parameter "reboundA"
    .parameter "speedK"

    .prologue
    .line 801
    move v0, p5

    .line 802
    .local v0, rebounda:F
    move v1, p6

    .line 803
    .local v1, speedk:F
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->inFreefall(FFFI)V

    .line 804
    new-instance v2, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$2;-><init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;FF)V

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->freefallListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;

    .line 837
    return-void
.end method

.method public inThrowUp(FFFI)V
    .locals 4
    .parameter "a"
    .parameter "v0"
    .parameter "k"
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z

    .line 587
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isStopAnimation:Z

    .line 588
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onRestore()V

    .line 589
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetY:I

    .line 590
    iput p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->a:F

    .line 591
    iput p2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->v0:F

    .line 592
    iput p3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->k:F

    .line 593
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->currentIndex:I

    .line 594
    div-float v0, p2, p1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMaxIndex:I

    .line 595
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;

    invoke-direct {v1, p0, p4}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$RunnableOfThrowUp;-><init>(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 596
    return-void
.end method

.method public isPlayAnimation()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z

    return v0
.end method

.method public onMove(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 395
    iget-boolean v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z

    if-eqz v7, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentMotioneventY:I

    .line 402
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentMotioneventY:I

    iget v8, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mPeviousMotioneventY:I

    sub-int v1, v7, v8

    .line 403
    .local v1, diff:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    .line 409
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMoveMode:I

    if-ne v7, v4, :cond_3

    .line 412
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentMotioneventY:I

    iget v8, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartMotioneventY:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    .line 454
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->moveOffset()V

    goto :goto_0

    .line 414
    :cond_3
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMoveMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 417
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mCurrentMotioneventY:I

    iget v8, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartMotioneventY:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    .line 418
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mPeviousQueueOffset:I

    add-int v6, v7, v1

    .line 423
    .local v6, realOffset:I
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartSlowMoveValue:I

    if-le v6, v7, :cond_9

    .line 426
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mSlowMoveDirection:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    if-ltz v1, :cond_6

    .line 427
    :cond_4
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mSlowMoveDirection:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 426
    if-gtz v1, :cond_6

    :cond_5
    const/4 v4, 0x0

    .line 428
    .local v4, isReverse:Z
    :cond_6
    if-eqz v4, :cond_7

    .line 430
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mPeviousQueueOffset:I

    add-int v5, v7, v1

    .line 431
    .local v5, offset:I
    iput v5, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    goto :goto_1

    .line 434
    .end local v5           #offset:I
    :cond_7
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    iget v8, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartSlowMoveValue:I

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x32

    .line 436
    .local v3, ii:I
    const/4 v0, 0x0

    .line 437
    .local v0, addOffset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-le v2, v3, :cond_8

    .line 443
    iget v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartSlowMoveValue:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    goto :goto_1

    .line 438
    :cond_8
    const/high16 v7, 0x4248

    const v8, 0x3f666666

    const v9, 0x3d75c28f

    int-to-float v10, v2

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v0, v7

    .line 437
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 447
    .end local v0           #addOffset:I
    .end local v2           #i:I
    .end local v3           #ii:I
    .end local v4           #isReverse:Z
    :cond_9
    iput v6, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mQueueOffset:I

    goto :goto_1
.end method

.method public onMoveEnd()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    return-void
.end method

.method public onMoveTo(II)V
    .locals 2
    .parameter "s"
    .parameter "direction"

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onRestore()V

    .line 357
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 358
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    sub-int p1, v1, p1

    .line 364
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 365
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 366
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 367
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 368
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    return-void

    .line 360
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 361
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    add-int/2addr p1, v1

    goto :goto_0
.end method

.method public onRestore()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 484
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffsetVector:I

    .line 485
    iput v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mOffset:I

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMontainerCount:I

    if-lt v0, v1, :cond_0

    .line 497
    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mLeft:[I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mContainerLayout:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getLeft()I

    move-result v2

    aput v2, v1, v0

    .line 491
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mTop:[I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mContainerLayout:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getTop()I

    move-result v2

    aput v2, v1, v0

    .line 492
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mRight:[I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mContainerLayout:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getRight()I

    move-result v2

    aput v2, v1, v0

    .line 493
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mBottom:[I

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mContainerLayout:[Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/MyRelativeLayout;->getBottom()I

    move-result v2

    aput v2, v1, v0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onStartMove(FFIIIF[I)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "moveMode"
    .parameter "startSlowMoveValue"
    .parameter "slowMoveDirection"
    .parameter "moveFactor"
    .parameter "movableRange"

    .prologue
    .line 327
    float-to-int v0, p1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartMotioneventX:I

    .line 328
    float-to-int v0, p2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartMotioneventY:I

    .line 329
    iput p3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMoveMode:I

    .line 330
    iput p6, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMoveFactor:F

    .line 331
    iput p4, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartSlowMoveValue:I

    .line 332
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartMotioneventY:I

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mPeviousMotioneventY:I

    .line 333
    iput-object p7, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMovableRange:[I

    .line 334
    iput p5, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mSlowMoveDirection:I

    .line 335
    return-void
.end method

.method public onStartMove(FF[I)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "movableRange"

    .prologue
    .line 269
    float-to-int v0, p1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartMotioneventX:I

    .line 270
    float-to-int v0, p2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartMotioneventY:I

    .line 271
    iget v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mStartMotioneventY:I

    iput v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mPeviousMotioneventY:I

    .line 272
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMovableRange:[I

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onRestore()V

    .line 274
    return-void
.end method

.method public onStartMove(Landroid/view/MotionEvent;IIIF[I)V
    .locals 8
    .parameter "e"
    .parameter "moveMode"
    .parameter "startSlowMoveValue"
    .parameter "slowMoveDirection"
    .parameter "moveFactor"
    .parameter "movableRange"

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->onStartMove(FFIIIF[I)V

    .line 305
    return-void
.end method

.method public onStopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isPlayAnimation:Z

    .line 237
    iput-boolean v1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->isStopAnimation:Z

    .line 238
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    return-void
.end method

.method public setAccelerateCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 855
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->accelerateListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$AccelerateCallback;

    .line 857
    return-void
.end method

.method public setDecelerateCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 850
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->decelerateListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$DecelerateCallback;

    .line 852
    return-void
.end method

.method public setFreefallCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 841
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->freefallListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$FreefallCallback;

    .line 842
    return-void
.end method

.method public setMovableRange([I)V
    .locals 0
    .parameter "movableRange"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->mMovableRange:[I

    .line 220
    return-void
.end method

.method public setMoveCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->moveListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$MoveCallback;

    .line 866
    return-void
.end method

.method public setReboundCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 860
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->reboundListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ReboundCallback;

    .line 861
    return-void
.end method

.method public setThrowUpCallback(Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 845
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation;->throwUpListener:Lcom/alibaba/adi/collie/ui/aslide/MoveAnimation$ThrowUpCallback;

    .line 847
    return-void
.end method
