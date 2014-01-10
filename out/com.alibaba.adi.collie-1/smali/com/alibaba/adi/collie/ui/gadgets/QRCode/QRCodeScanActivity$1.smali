.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I


# instance fields
.field mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I
    .locals 3

    .prologue
    .line 200
    sget-object v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->values()[Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->NUMBER:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->PATTERN:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    return-object v0
.end method

.method private getLockHeight()I
    .locals 2

    .prologue
    .line 306
    invoke-static {}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I

    move-result-object v0

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 312
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->getHeight()I

    move-result v0

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->getHeight()I

    move-result v0

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closeKeyGuard()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 289
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setVisibility(I)V

    .line 291
    return-void
.end method

.method public getAction()Lcom/alibaba/adi/collie/ui/main/action/IAction;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    return-object v0
.end method

.method public isShowing()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    invoke-static {}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I

    move-result-object v2

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 297
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAction(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    .line 211
    return-void
.end method

.method public showKeyGuard()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 215
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->showCameraLocate()V

    .line 218
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$0(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->isLocked()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v3}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/app/Activity;)[I

    move-result-object v1

    .line 227
    .local v1, screenSize:[I
    aget v0, v1, v4

    .line 228
    .local v0, lockHeight:I
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 229
    aget v3, v1, v4

    int-to-float v3, v3

    aget v4, v1, v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    .line 228
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 230
    .local v2, translateAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 231
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 233
    new-instance v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;-><init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    invoke-static {}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I

    move-result-object v3

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    const-string v3, "ActionOpenScanResult"

    sget-object v4, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTAdiUnlockSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->closeKeyGuard()V

    .line 279
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockStateKeeper:Lcom/alibaba/adi/collie/model/LockStateKeeper;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->access$0(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;)Lcom/alibaba/adi/collie/model/LockStateKeeper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/model/LockStateKeeper;->setLockState(Ljava/lang/Boolean;)V

    .line 280
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    if-eqz v3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-interface {v3}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v3, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v3, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
