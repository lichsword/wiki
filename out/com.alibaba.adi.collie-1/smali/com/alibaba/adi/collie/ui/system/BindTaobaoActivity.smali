.class public Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "BindTaobaoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;
    }
.end annotation


# static fields
.field private static final MODE_MTOP:I = 0x1

.field private static final MODE_SSO:I = 0x2

.field public static final TAG:Ljava/lang/String; = "BindTaobaoActivity"


# instance fields
.field private mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

.field private mCurrentMode:I

.field private mLoginNotifyHandler:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

.field private mLoginProgressDialog:Landroid/app/ProgressDialog;

.field private mMtopBtn:Landroid/widget/Button;

.field private mMtopCheckCodeEditBox:Landroid/widget/EditText;

.field private mMtopCheckCodeImage:Landroid/widget/ImageView;

.field private mMtopCheckCodeLayout:Landroid/view/View;

.field private final mMtopCheckCodeRefreshClickListener:Landroid/view/View$OnClickListener;

.field private mMtopClearName:Landroid/widget/LinearLayout;

.field private mMtopClearPwd:Landroid/widget/LinearLayout;

.field private mMtopLayout:Landroid/view/View;

.field private final mMtopLoginClickListener:Landroid/view/View$OnClickListener;

.field private mMtopPasswd:Landroid/widget/EditText;

.field private mMtopUserName:Landroid/widget/EditText;

.field private mSsoBtn:Landroid/widget/Button;

.field private mSsoDesc:Landroid/widget/TextView;

.field private mSsoLayout:Landroid/view/View;

.field private final mSsoLoginClickListener:Landroid/view/View$OnClickListener;

.field private mSsoOtherAccount:Landroid/widget/TextView;

.field private mSsoSharedUserName:Ljava/lang/String;

.field private mSsoTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCurrentMode:I

    .line 221
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoLoginClickListener:Landroid/view/View$OnClickListener;

    .line 230
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopLoginClickListener:Landroid/view/View$OnClickListener;

    .line 259
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$3;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeRefreshClickListener:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginNotifyHandler:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$10(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->showErrorDialog(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$11(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->setLoginMode(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    return-void
.end method

.method static synthetic access$13(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopClearName:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopClearPwd:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopPasswd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeEditBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->disableMtopBtn()V

    return-void
.end method

.method static synthetic access$7(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->refreshCheckCode()V

    return-void
.end method

.method static synthetic access$8(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->enableMtopBtn()V

    return-void
.end method

.method static synthetic access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private disableMtopBtn()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 421
    return-void
.end method

.method private enableMtopBtn()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 416
    return-void
.end method

.method private refreshCheckCode()V
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginNotifyHandler:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getCheckCode(Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;

    .line 270
    return-void
.end method

.method private setLoginMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 199
    if-ne v4, p1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopLayout:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoSharedUserName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoSharedUserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoSharedUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopPasswd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 209
    const-string v2, "input_method"

    .line 208
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 210
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 212
    iput v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCurrentMode:I

    .line 219
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :goto_1
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoLayout:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoTitle:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "\u6dd8\u5b9d\u8d26\u53f7: %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoSharedUserName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCurrentMode:I

    goto :goto_1
.end method

.method private setLoginViewStatus()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopClearName:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$5;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopClearPwd:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$6;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$7;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopPasswd:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$8;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "errMsg"
    .parameter "onOkClicked"

    .prologue
    .line 283
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u51fa\u9519\u5566"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    .local v0, errBuilder:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$9;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$9;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 295
    return-void
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    .line 274
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u7ed1\u5b9a\u6dd8\u5b9d\u8d26\u53f7"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u9a8c\u8bc1\u6dd8\u5b9d\u8d26\u53f7..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 280
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 69
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->setContentView(I)V

    .line 70
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopLayout:Landroid/view/View;

    .line 71
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoLayout:Landroid/view/View;

    .line 72
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoBtn:Landroid/widget/Button;

    .line 73
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopBtn:Landroid/widget/Button;

    .line 74
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;

    .line 75
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopClearName:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopPasswd:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopClearPwd:Landroid/widget/LinearLayout;

    .line 78
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->setLoginViewStatus()V

    .line 79
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoTitle:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoDesc:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoOtherAccount:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeLayout:Landroid/view/View;

    .line 84
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeEditBox:Landroid/widget/EditText;

    .line 85
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeImage:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeRefreshClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoLoginClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopLoginClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoOtherAccount:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$4;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginNotifyHandler:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getSharedSsoUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mSsoSharedUserName:Ljava/lang/String;

    .line 110
    invoke-direct {p0, v2}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->setLoginMode(I)V

    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, focusView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 183
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 191
    .end local v1           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;

    .line 195
    :cond_1
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onPause()V

    .line 196
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onResume()V

    .line 177
    return-void
.end method
