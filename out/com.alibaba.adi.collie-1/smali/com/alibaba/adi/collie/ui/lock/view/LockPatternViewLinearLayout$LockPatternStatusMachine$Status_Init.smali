.class Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Init;
.super Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$StatusItem;
.source "LockPatternViewLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Status_Init"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Init;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$StatusItem;-><init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)V

    .line 118
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->clearPattern()V

    .line 119
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->enableInput()V

    .line 120
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

    const v2, 0x7f0a0120

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    move-result-object v0

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;->onStatusInit()V

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public toNext()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Init;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->isCircleEnough:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Init;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->changeToStatus(I)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine$Status_Init;->this$1:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->changeToStatus(I)V

    goto :goto_0
.end method
