.class Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$1;
.super Landroid/os/CountDownTimer;
.source "LockNumViewLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->initItemView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;JJ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    .line 87
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->isCheckLockPwd:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->putInFinish:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->access$1(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    #calls: Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->checkLockPwd()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->putInFinish:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 90
    return-void
.end method
