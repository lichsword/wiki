.class public Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;,
        Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyFocusChange;,
        Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_DIALOG_FAILED:I = 0x2

.field private static final REQUEST_CODE_DIALOG_SUCCESS:I = 0x1


# instance fields
.field private final MAX_INPUT_LEN:I

.field public final TAG:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mFeedBackTask:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSendBtn:Landroid/widget/Button;

.field private mTipTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 33
    const-class v0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->TAG:Ljava/lang/String;

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->MAX_INPUT_LEN:I

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mSendBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mTipTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private initContentView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->setContentView(I)V

    .line 112
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mTipTextView:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mTipTextView:Landroid/widget/TextView;

    const v1, 0x7f0a006b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mSendBtn:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mSendBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mSendBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mEditText:Landroid/widget/EditText;

    .line 119
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyFocusChange;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyFocusChange;-><init>(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 121
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyTextWatcher;-><init>(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    return-void
.end method

.method private popupAlertDialog(Ljava/lang/String;Z)V
    .locals 0
    .parameter "msg"
    .parameter "closeActivity"

    .prologue
    .line 107
    return-void
.end method

.method private submit()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 233
    const-string v3, "FeedBackSubmit"

    invoke-static {v3}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 236
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 237
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 242
    .end local v1           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2

    .line 245
    const v3, 0x7f0a006c

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->popupAlertDialog(Ljava/lang/String;Z)V

    .line 254
    .end local v0           #content:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 247
    .restart local v0       #content:Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;-><init>(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;)V

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mFeedBackTask:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;

    .line 248
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mFeedBackTask:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v0           #content:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 66
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 67
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->finish()V

    .line 71
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onClick(Landroid/view/View;)V

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 188
    :pswitch_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->submit()V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x7f08007f
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->initContentView()V

    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 53
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mFeedBackTask:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mFeedBackTask:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 54
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mFeedBackTask:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->cancel(Z)Z

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, focusView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 58
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 59
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 61
    .end local v1           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onPause()V

    .line 62
    return-void
.end method
