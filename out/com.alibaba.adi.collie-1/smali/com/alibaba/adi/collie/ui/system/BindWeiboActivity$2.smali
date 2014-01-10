.class Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;
.super Ljava/lang/Object;
.source "BindWeiboActivity.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->getUserName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 158
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->TAG:Ljava/lang/String;

    const-string v1, "xhh: get user onComplete"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p1}, Lcom/alibaba/adi/collie/model/weibo/WeiboDataParser;->getUser(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/weibo/WeiboUser;

    move-result-object v6

    .line 160
    .local v6, user:Lcom/alibaba/adi/collie/model/weibo/WeiboUser;
    if-eqz v6, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/model/weibo/WeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mName:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v1, v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-wide v2, v2, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mId:J

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v4, v4, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/adi/collie/business/weibo/api/WeiboAccountHolder;->setAccessTokenToPref(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;JLjava/lang/String;Z)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mShowAccessInfoHandler:Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->SUCCESS:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    :cond_0
    return-void
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .parameter "byteArrayOutputStream"

    .prologue
    .line 170
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 152
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xhh: get user onError"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mShowAccessInfoHandler:Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->FAIL:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 146
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xhh: get user onIOException"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;

    iget-object v0, v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;->mShowAccessInfoHandler:Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->FAIL:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void
.end method
