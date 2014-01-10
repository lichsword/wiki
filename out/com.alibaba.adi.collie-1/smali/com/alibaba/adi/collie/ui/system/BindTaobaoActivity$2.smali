.class Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;
.super Ljava/lang/Object;
.source "BindTaobaoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 233
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopUserName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$2(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopPasswd:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$3(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, passwd:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 236
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    const-class v5, Lcom/alibaba/adi/collie/ui/settings/dialog/PasswordErrorDialogActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    invoke-virtual {v4, v0}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 239
    :cond_1
    const-string v4, "BindingTaobao"

    invoke-static {v4}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 240
    new-instance v2, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;-><init>()V

    .line 241
    .local v2, userInput:Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;
    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->setUserName(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2, v1}, Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;->setPasswd(Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$4(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    move-result-object v4

    if-nez v4, :cond_2

    .line 245
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v4

    .line 246
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginNotifyHandler:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$0(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    move-result-object v5

    .line 245
    invoke-virtual {v4, v2, v5}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->login(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;

    .line 253
    :goto_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->disableMtopBtn()V
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$6(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    .line 254
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->showProgressDialog()V
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$1(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    invoke-static {v4}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$4(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mMtopCheckCodeEditBox:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$5(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;->setCheckCode(Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mCheckCode:Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$4(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;

    move-result-object v5

    .line 251
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->mLoginNotifyHandler:Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;
    invoke-static {v6}, Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;->access$0(Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity;)Lcom/alibaba/adi/collie/ui/system/BindTaobaoActivity$BindTbAccountNotifyHandler;

    move-result-object v6

    .line 250
    invoke-virtual {v4, v2, v5, v6}, Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager;->login(Lcom/alibaba/adi/collie/model/taobao/TaoLoginUserInput;Lcom/alibaba/adi/collie/model/taobao/TaoCheckCode;Lcom/alibaba/adi/collie/business/taobao/login/TaoLoginManager$LogInOutNotifyHandler;)Ljava/util/concurrent/Future;

    goto :goto_1
.end method
