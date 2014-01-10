.class Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;
.super Ljava/lang/Object;
.source "BaseWebviewActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/business/keyguard/KeyGuardController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I


# instance fields
.field private currentLockView:Landroid/view/ViewGroup;

.field private mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I
    .locals 3

    .prologue
    .line 202
    sget-object v0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

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
    sput-object v0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

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

.method constructor <init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->currentLockView:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;)Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    return-object v0
.end method


# virtual methods
.method public closeKeyGuard()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 282
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->showContent()V

    .line 283
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    if-eq v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->currentLockView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->currentLockView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardPanelLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public getAction()Lcom/alibaba/adi/collie/ui/main/action/IAction;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    return-object v0
.end method

.method public isShowing()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardPanelLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 294
    .local v0, panelVisible:Z
    :goto_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I

    move-result-object v3

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 300
    :cond_0
    :goto_1
    return v2

    .end local v0           #panelVisible:Z
    :cond_1
    move v0, v2

    .line 293
    goto :goto_0

    .line 296
    .restart local v0       #panelVisible:Z
    :pswitch_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    goto :goto_1

    .line 298
    :pswitch_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    goto :goto_1

    .line 294
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
    .line 213
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->mAction:Lcom/alibaba/adi/collie/ui/main/action/IAction;

    .line 214
    return-void
.end method

.method public showKeyGuard()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 218
    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->SLIDE:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    if-eq v3, v4, :cond_0

    .line 219
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->hideContent()V

    .line 220
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mKeyGuardPanelLayout:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/PhoneUtil;->getScreenSize(Landroid/app/Activity;)[I

    move-result-object v1

    .line 224
    .local v1, screenSize:[I
    aget v0, v1, v5

    .line 225
    .local v0, lockHeight:I
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 226
    aget v3, v1, v5

    int-to-float v3, v3

    aget v4, v1, v5

    sub-int/2addr v4, v0

    int-to-float v4, v4

    .line 225
    invoke-direct {v2, v6, v6, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 227
    .local v2, translateAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 230
    new-instance v3, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1$1;-><init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 266
    invoke-static {}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I

    move-result-object v3

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v3, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 271
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    iget-object v3, v3, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v3, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->onUnlocked()V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
