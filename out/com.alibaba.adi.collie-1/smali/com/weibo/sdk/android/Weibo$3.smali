.class Lcom/weibo/sdk/android/Weibo$3;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcom/weibo/sdk/android/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weibo/sdk/android/Weibo;->FtchAccessToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weibo/sdk/android/Weibo;


# direct methods
.method constructor <init>(Lcom/weibo/sdk/android/Weibo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    .line 191
    iget-object v1, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    #getter for: Lcom/weibo/sdk/android/Weibo;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v1}, Lcom/weibo/sdk/android/Weibo;->access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    new-instance v2, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v2, p1}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/weibo/sdk/android/Weibo;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v1, v2}, Lcom/weibo/sdk/android/Weibo;->access$3(Lcom/weibo/sdk/android/Weibo;Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    #getter for: Lcom/weibo/sdk/android/Weibo;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v1}, Lcom/weibo/sdk/android/Weibo;->access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const-string v1, "Weibo-authorize"

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login Success! access_token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    #getter for: Lcom/weibo/sdk/android/Weibo;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v3}, Lcom/weibo/sdk/android/Weibo;->access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expires="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 197
    iget-object v3, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    #getter for: Lcom/weibo/sdk/android/Weibo;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v3}, Lcom/weibo/sdk/android/Weibo;->access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refresh_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    #getter for: Lcom/weibo/sdk/android/Weibo;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v3}, Lcom/weibo/sdk/android/Weibo;->access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    #getter for: Lcom/weibo/sdk/android/Weibo;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-static {v1}, Lcom/weibo/sdk/android/Weibo;->access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v1

    invoke-static {v1}, Lcom/weibo/sdk/android/util/Utility;->formBundle(Lcom/weibo/sdk/android/Oauth2AccessToken;)Landroid/os/Bundle;

    move-result-object v0

    .line 200
    .local v0, b:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    const/16 v2, 0x3e8

    #calls: Lcom/weibo/sdk/android/Weibo;->handleListItemEvent(ILandroid/os/Bundle;Ljava/lang/Exception;)V
    invoke-static {v1, v2, v0, v5}, Lcom/weibo/sdk/android/Weibo;->access$4(Lcom/weibo/sdk/android/Weibo;ILandroid/os/Bundle;Ljava/lang/Exception;)V

    .line 205
    .end local v0           #b:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v1, "Weibo-authorize"

    const-string v2, "Failed to receive access token"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    const/16 v2, 0x3e9

    #calls: Lcom/weibo/sdk/android/Weibo;->handleListItemEvent(ILandroid/os/Bundle;Ljava/lang/Exception;)V
    invoke-static {v1, v2, v5, v5}, Lcom/weibo/sdk/android/Weibo;->access$4(Lcom/weibo/sdk/android/Weibo;ILandroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .parameter "responseOS"

    .prologue
    .line 212
    return-void
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/weibo/sdk/android/util/Utility;->errorSAX(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 222
    .local v0, b:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    #calls: Lcom/weibo/sdk/android/Weibo;->handleListItemEvent(ILandroid/os/Bundle;Ljava/lang/Exception;)V
    invoke-static {v1, v2, v0, v3}, Lcom/weibo/sdk/android/Weibo;->access$4(Lcom/weibo/sdk/android/Weibo;ILandroid/os/Bundle;Ljava/lang/Exception;)V

    .line 223
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/weibo/sdk/android/Weibo$3;->this$0:Lcom/weibo/sdk/android/Weibo;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    #calls: Lcom/weibo/sdk/android/Weibo;->handleListItemEvent(ILandroid/os/Bundle;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v2, p1}, Lcom/weibo/sdk/android/Weibo;->access$4(Lcom/weibo/sdk/android/Weibo;ILandroid/os/Bundle;Ljava/lang/Exception;)V

    .line 217
    return-void
.end method
