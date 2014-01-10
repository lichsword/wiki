.class Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->showKeyGuard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I
    .locals 3

    .prologue
    .line 233
    sget-object v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

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
    sput-object v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType:[I

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

.method constructor <init>(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 260
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 265
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 236
    invoke-static {}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$lock$view$LockPatternUtils$UnlockType()[I

    move-result-object v0

    invoke-static {}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->getUnlockType()Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils$UnlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 251
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setVisibility(I)V

    .line 255
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->setOnLockPatternStatusListener(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;)V

    .line 242
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->startLockPatternStatusMachine(Z)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockPatternViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setOnLockNumStatusListener(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;)V

    .line 248
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1$1;->this$1:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;

    #getter for: Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;->access$1(Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity$1;)Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/gadgets/QRCode/QRCodeScanActivity;->mLockNumViewLayout:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setCheckLockPwd(Z)V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
