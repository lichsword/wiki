.class Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;
.super Ljava/lang/Object;
.source "BindWeiboActivity.java"

# interfaces
.implements Lcom/weibo/sdk/android/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ADIWeiboAuthListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Auth cancel"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mShowAccessInfoHandler:Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->FAIL:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 99
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->TAG:Ljava/lang/String;

    const-string v1, "xhh: weibo auth complete"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, token:Ljava/lang/String;
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, expires_in:Ljava/lang/String;
    if-eqz v7, :cond_0

    if-nez v6, :cond_2

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mShowAccessInfoHandler:Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->FAIL:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    new-instance v1, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v1, v7, v6}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 107
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mId:J

    .line 109
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    const-string v1, "userName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mName:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    #calls: Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->getUserName()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->access$0(Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;)V

    goto :goto_0

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-wide v2, v2, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mId:J

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v4, v4, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->setAccessTokenToPref(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;JLjava/lang/String;Z)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mShowAccessInfoHandler:Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->SUCCESS:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboDialogError;)V
    .locals 3
    .parameter "weiboDialogError"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Auth error"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mShowAccessInfoHandler:Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->FAIL:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$ADIWeiboAuthListener;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mShowAccessInfoHandler:Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->FAIL:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    return-void
.end method
