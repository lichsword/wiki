.class Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;
.super Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$StatusItem;
.source "LockPatternViewLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Status_Confirm_Last_Password"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)V
    .locals 3
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$StatusItem;-><init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)V

    .line 257
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->tips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$1(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Landroid/widget/TextView;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v1

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a011f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;->onStatusConfirmLastPassword()V

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public toNext()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->isCircleEnough:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternUtils:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$7(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v1

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->savePattern:Ljava/util/List;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$4(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->checkPattern(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;->onStatusConfirmPasswordSuccess()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->initView()V

    .line 274
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockFailCount:I
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$8(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;I)V

    .line 289
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockFailCount:I
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$9(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockFailCount:I
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$8(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;I)V

    .line 281
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockFailCount:I
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$9(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 282
    invoke-static {}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->getInstance()Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->startFailCountDownTimer()V

    .line 283
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->disableInput()V

    .line 284
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->clearPattern()V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Last_Password;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v1

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->errorDisplay(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$1(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;Ljava/lang/String;)V

    goto :goto_0
.end method
