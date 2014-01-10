.class Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$1;
.super Landroid/os/CountDownTimer;
.source "LockPatternViewLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->eventBind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;JJ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    .line 59
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$1;->this$0:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;

    #getter for: Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->clearPattern()V

    .line 67
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 62
    return-void
.end method
