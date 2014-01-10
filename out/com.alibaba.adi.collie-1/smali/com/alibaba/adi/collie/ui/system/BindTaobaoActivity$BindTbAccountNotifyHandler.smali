.class Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;
.super Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;
.source "BindTaobaoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindTbAccountNotifyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;)Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;
    .locals 1
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    return-object v0
.end method


# virtual methods
.method protected onAdiBindFailed()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->enableMtopBtn()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$8(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    const v2, 0x7f0a00e8

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->showErrorDialog(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$10(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 325
    return-void
.end method

.method protected onAdiBinded()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->enableMtopBtn()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$8(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->finish()V

    .line 316
    return-void
.end method

.method protected onAdiUnbindFailed()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->enableMtopBtn()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$8(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 302
    return-void
.end method

.method protected onAdiUnbinded()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->enableMtopBtn()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$8(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 307
    return-void
.end method

.method protected onLoginDowngrade()V
    .locals 4

    .prologue
    .line 329
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->enableMtopBtn()V
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$8(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 333
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    const v3, 0x7f0a00eb

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->showErrorDialog(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    invoke-static {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$10(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    const/4 v2, 0x1

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->setLoginMode(I)V
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$11(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;I)V

    .line 335
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getSharedSsoUserName()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, ssoUserName:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$2(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_1
    return-void
.end method

.method protected onLoginFailed(Ljava/lang/String;)V
    .locals 4
    .parameter "errMsg"

    .prologue
    const/4 v3, 0x0

    .line 353
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->enableMtopBtn()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$8(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 357
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    const v2, 0x7f0a00e9

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->showErrorDialog(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    invoke-static {v0, v1, v3}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$10(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$4(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->refreshCheckCode()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$7(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 365
    :cond_2
    return-void

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->showErrorDialog(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    invoke-static {v0, p1, v3}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$10(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onLoginSucceeded(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$2(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTUpdateUserAccount(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    const v2, 0x7f0a00e7

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$12(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V

    .line 349
    return-void
.end method

.method protected onLoginWithCheckCode(Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V
    .locals 4
    .parameter "checkCode"

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$9(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->enableMtopBtn()V
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$8(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 373
    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->getCheckCodeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 375
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->getCheckCodeUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 376
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$1;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V

    .line 390
    .local v0, loadCheckCodeImageTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Landroid/graphics/Bitmap;>;"
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 391
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$14(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #setter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    invoke-static {v1, p1}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$12(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V

    .line 401
    .end local v0           #loadCheckCodeImageTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Landroid/graphics/Bitmap;>;"
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    const v3, 0x7f0a00ea

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$2;

    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler$2;-><init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;)V

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->showErrorDialog(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    invoke-static {v1, v2, v3}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$10(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onLogoutFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "errMsg"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->enableMtopBtn()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$8(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 406
    return-void
.end method

.method protected onLogoutSucceeded()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->enableMtopBtn()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$8(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 411
    return-void
.end method
