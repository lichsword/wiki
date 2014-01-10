.class public Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LockNumViewLinearLayout.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;
    }
.end annotation


# static fields
.field private static final NUMBER_KEY_CODE_BASE:I = 0x30


# instance fields
.field private btn_left:Landroid/widget/Button;

.field private btn_right:Landroid/widget/Button;

.field private final context:Landroid/content/Context;

.field private edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

.field private edit1:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

.field private edit2:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

.field private edit3:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

.field private edit4:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

.field private fristLockPwd:Ljava/lang/String;

.field private isCheckLockPwd:Z

.field private keyboardView:Landroid/inputmethodservice/KeyboardView;

.field private lockFailCount:I

.field private lockPatternUtils:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mDigitkeypadLayout:Landroid/view/ViewGroup;

.field private mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

.field private mkeyboardBackspace:Landroid/widget/ImageView;

.field private putInFinish:Z

.field private secLockPwd:Ljava/lang/String;

.field private final timeout:I

.field private tips:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/16 v0, 0x12c

    iput v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->timeout:I

    .line 52
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/16 v0, 0x12c

    iput v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->timeout:I

    .line 57
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->putInFinish:Z

    .line 60
    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->setOrientation(I)V

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030089

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    const v0, 0x7f0801b6

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0801b7

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mDigitkeypadLayout:Landroid/view/ViewGroup;

    .line 64
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->initItemView()V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->isCheckLockPwd:Z

    return v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->putInFinish:Z

    return v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->checkLockPwd()V

    return-void
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->putInFinish:Z

    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 112
    :cond_0
    return-void
.end method

.method private checkLockPwd()V
    .locals 4

    .prologue
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit1:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit2:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit3:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit4:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->fristLockPwd:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->lockPatternUtils:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->fristLockPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->checkNum(Ljava/lang/String;)I

    move-result v0

    .line 299
    .local v0, result:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 300
    if-nez v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v3, 0x7f0a0122

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->shakeAnimation()V

    .line 304
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 305
    iget v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->lockFailCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->lockFailCount:I

    .line 306
    iget v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->lockFailCount:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 307
    invoke-static {}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->getInstance()Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->startFailCountDownTimer()V

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->clearEdit()V

    .line 319
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->isCheckLockPwd:Z

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;->onStatusLockSuccess()V

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->initView()V

    goto :goto_0
.end method

.method private clearEdit()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit1:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->clearValue()V

    .line 329
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit2:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->clearValue()V

    .line 330
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit3:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->clearValue()V

    .line 331
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit4:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->clearValue()V

    .line 332
    return-void
.end method

.method private initItemView()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x12c

    .line 68
    const v0, 0x7f0801b8

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit1:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 69
    const v0, 0x7f0801b9

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit2:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 70
    const v0, 0x7f0801ba

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit3:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 71
    const v0, 0x7f0801bb

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit4:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 73
    const v0, 0x7f0801bc

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 74
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    new-instance v1, Landroid/inputmethodservice/Keyboard;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v5, 0x7f050002

    invoke-direct {v1, v4, v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->keyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 79
    const v0, 0x7f0801bd

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mkeyboardBackspace:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mkeyboardBackspace:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_left:Landroid/widget/Button;

    .line 83
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_left:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->lockPatternUtils:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

    .line 87
    new-instance v0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$1;-><init>(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;JJ)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 100
    return-void
.end method

.method private shakeAnimation()V
    .locals 3

    .prologue
    .line 322
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 323
    .local v0, shake:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 324
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mDigitkeypadLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 325
    return-void
.end method

.method private startCountDownTimer()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 4

    .prologue
    const v2, 0x7f0a0130

    const/4 v3, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->isCheckLockPwd:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->clearEdit()V

    .line 129
    invoke-static {}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->getInstance()Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->isLockFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->lockFailCount:I

    .line 132
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->getInstance()Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/adi/collie/business/lockfailed/LockFailedManger;->addOnLockFailListener(Lcom/alibaba/adi/collie/CoreApplication$OnLockFailListener;)V

    .line 133
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_left:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v2, 0x7f0a012c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_left:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v2, 0x7f0a00a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_left:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f0a0128

    const/4 v4, 0x0

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 250
    .local v0, vId:I
    sparse-switch v0, :sswitch_data_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 252
    :sswitch_0
    const/4 v1, -0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->onKey(I[I)V

    goto :goto_0

    .line 255
    :sswitch_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v3, 0x7f0a012c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit1:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit2:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit3:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit4:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->fristLockPwd:Ljava/lang/String;

    .line 260
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->clearEdit()V

    .line 261
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v3, 0x7f0a012f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iput-boolean v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->putInFinish:Z

    goto :goto_0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v3, 0x7f0a012a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->checkLockPwd()V

    goto/16 :goto_0

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit1:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit2:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit3:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit4:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->secLockPwd:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->fristLockPwd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->secLockPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 269
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v3, 0x7f0a0122

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->shakeAnimation()V

    .line 271
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 272
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->clearEdit()V

    .line 273
    iput-boolean v4, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->putInFinish:Z

    goto/16 :goto_0

    .line 275
    :cond_3
    iget-boolean v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->isCheckLockPwd:Z

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->lockPatternUtils:Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->secLockPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/lock/view/LockPatternUtils;->saveLockNum(Ljava/lang/String;)V

    .line 277
    const-string v1, "lock_type"

    sget-object v2, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_NUM:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;->onStatusConfirmInputSuccess()V

    goto/16 :goto_0

    .line 288
    :sswitch_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    invoke-interface {v1}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;->onStatusCancel()V

    goto/16 :goto_0

    .line 250
    :sswitch_data_0
    .sparse-switch
        0x7f080055 -> :sswitch_2
        0x7f080056 -> :sswitch_1
        0x7f0801bd -> :sswitch_0
    .end sparse-switch
.end method

.method public onFinish()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v2, 0x7f0a0122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->lockFailCount:I

    .line 345
    return-void
.end method

.method public onKey(I[I)V
    .locals 4
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    iget v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->lockFailCount:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v0, -0x194

    if-ne p1, v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v0, -0x5

    if-ne p1, v0, :cond_7

    .line 160
    iput-boolean v2, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->putInFinish:Z

    .line 161
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit4:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit4:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 170
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->clearValue()V

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit3:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit3:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    goto :goto_1

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit2:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit2:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    goto :goto_1

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit1:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit1:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    goto :goto_1

    .line 176
    :cond_7
    iget-boolean v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->putInFinish:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit1:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->hasValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 179
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit1:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 192
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    add-int/lit8 v1, p1, -0x30

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->setValue(I)V

    .line 193
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->startCountDownTimer()V

    .line 195
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v2, 0x7f0a0128

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v2, 0x7f0a012e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit2:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->hasValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 181
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->cancel()V

    .line 182
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit2:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    goto :goto_2

    .line 183
    :cond_a
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit3:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->hasValue()Z

    move-result v0

    if-nez v0, :cond_b

    .line 184
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->cancel()V

    .line 185
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit3:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    goto :goto_2

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit4:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/DigitCellView;->hasValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 187
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->cancel()V

    .line 188
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit4:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->edit:Lcom/alibaba/adi/collie/ui/view/DigitCellView;

    .line 189
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->btn_right:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 190
    iput-boolean v3, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->putInFinish:Z

    goto :goto_2

    .line 199
    :cond_c
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->context:Landroid/content/Context;

    const v2, 0x7f0a012d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPress(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 209
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 215
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 221
    return-void
.end method

.method public onTick()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->tips:Landroid/widget/TextView;

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

    .line 338
    return-void
.end method

.method public setCheckLockPwd(Z)V
    .locals 0
    .parameter "isCheckLockPwd"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->isCheckLockPwd:Z

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->initView()V

    .line 138
    return-void
.end method

.method public setOnLockNumStatusListener(Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;)V
    .locals 0
    .parameter "onLockNumStatusListener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout;->mOnLockNumStatusListener:Lcom/alibaba/adi/collie/ui/lock/view/LockNumViewLinearLayout$OnLockNumStatusListener;

    .line 142
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method
