.class Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Input_Success;
.super Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$StatusItem;
.source "LockPatternViewLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Status_Confirm_Input_Success"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)V
    .locals 3
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Input_Success;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$StatusItem;-><init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)V

    .line 242
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

    const v2, 0x7f0a0126

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->disableInput()V

    .line 248
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;->onStatusConfirmInputSuccess()V

    .line 251
    :cond_0
    return-void
.end method
