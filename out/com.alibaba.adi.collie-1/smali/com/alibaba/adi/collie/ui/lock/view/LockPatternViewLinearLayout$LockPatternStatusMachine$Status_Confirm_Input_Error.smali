.class Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Input_Error;
.super Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$StatusItem;
.source "LockPatternViewLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Status_Confirm_Input_Error"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Input_Error;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$StatusItem;-><init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)V

    .line 218
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0122

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->errorDisplay(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$1(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;Ljava/lang/String;)V

    .line 223
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;->onStatusConfirmInputError()V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public toNext()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Input_Error;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->isCircleEnough:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Input_Error;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->currentPattern:Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$6(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Input_Error;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v1

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->savePattern:Ljava/util/List;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$4(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Input_Error;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->changeToStatus(I)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Confirm_Input_Error;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->changeToStatus(I)V

    goto :goto_0
.end method
