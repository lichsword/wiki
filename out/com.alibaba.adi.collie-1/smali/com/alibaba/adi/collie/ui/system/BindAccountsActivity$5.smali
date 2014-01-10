.class Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;
.super Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;
.source "BindAccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    .line 323
    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAdiBindFailed()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method protected onAdiBinded()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method protected onAdiUnbindFailed()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->access$1(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->access$1(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    const v2, 0x7f0a00f9

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->access$2(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method protected onAdiUnbinded()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->access$1(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->mTaoLogoutProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->access$1(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 337
    :cond_0
    const-string v0, "com.adi.collie.TAOBAO_NUM_CHANGE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    .line 338
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->refreshBinding()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;->access$0(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V

    .line 339
    return-void
.end method

.method protected onLoginDowngrade()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method protected onLoginFailed(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 364
    return-void
.end method

.method protected onLoginSucceeded(Lcom/alibaba/adi/collie/model/taobao/TaoLoginResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 359
    return-void
.end method

.method protected onLoginWithCheckCode(Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;)V
    .locals 0
    .parameter "checkCode"

    .prologue
    .line 369
    return-void
.end method

.method protected onLogoutFailed(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 374
    return-void
.end method

.method protected onLogoutSucceeded()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method
