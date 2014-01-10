.class public Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LockPatternViewLinearLayout.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;
.implements Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;,
        Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private currentPattern:Ljava/lang/String;

.field private isCheckLockPwd:Z

.field private lockFailCount:I

.field private lockPatternUtils:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

.field private lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

.field private savePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private statusMachine:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

.field private final timeout:I

.field private tips:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->timeout:I

    .line 42
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->timeout:I

    .line 47
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->setOrientation(I)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    const v0, 0x7f0801b6

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->tips:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    .line 53
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->eventBind()V

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->tips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->isCheckLockPwd:Z

    return v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->savePattern:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->currentPattern:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->currentPattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternUtils:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockFailCount:I

    return-void
.end method

.method static synthetic access$9(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockFailCount:I

    return v0
.end method

.method private eventBind()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 57
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternUtils:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

    .line 58
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->setOnPatternListener(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$OnPatternListener;)V

    .line 59
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$1;-><init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;JJ)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 69
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 404
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->statusMachine:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->changeToStatus(I)V

    .line 405
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->isCheckLockPwd:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->statusMachine:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->changeToStatus(I)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->statusMachine:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->changeToStatus(I)V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->context:Landroid/content/Context;

    const v2, 0x7f0a0122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->enableInput()V

    .line 423
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockFailCount:I

    .line 424
    return-void
.end method

.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView$Cell;>;"
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->savePattern:Ljava/util/List;

    .line 396
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->statusMachine:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->savePattern:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;->run(Ljava/util/List;)V

    .line 397
    return-void
.end method

.method public onPatternStart()V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->context:Landroid/content/Context;

    const v2, 0x7f0a0129

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 378
    :cond_0
    return-void
.end method

.method public onTick()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->tips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u4e8e"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->getInstance()Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->getLockTimeOut()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2\u540e\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-void
.end method

.method public saveLockPattern()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternUtils:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->savePattern:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 401
    return-void
.end method

.method public setOnLockPatternStatusListener(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;)V
    .locals 0
    .parameter "onLockPatternStatusListener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->mOnLockPatternStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$OnLockPatternStatusListener;

    .line 87
    return-void
.end method

.method public startLockPatternStatusMachine(Z)V
    .locals 1
    .parameter "isCheckLockPwd"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->isCheckLockPwd:Z

    .line 73
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;-><init>(Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->statusMachine:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout$LockPatternStatusMachine;

    .line 74
    invoke-static {}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->getInstance()Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->addOnLockFailListener(Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;)V

    .line 75
    invoke-static {}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->getInstance()Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->isLockFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockFailCount:I

    .line 77
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->disableInput()V

    .line 78
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->clearPattern()V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockFailCount:I

    .line 81
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternViewLinearLayout;->lockPatternView:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternView;->enableInput()V

    goto :goto_0
.end method
