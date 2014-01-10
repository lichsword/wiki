.class Lcom/weibo/sdk/android/Weibo$1;
.super Landroid/os/Handler;
.source "Weibo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weibo/sdk/android/Weibo;
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
    iput-object p1, p0, Lcom/weibo/sdk/android/Weibo$1;->this$0:Lcom/weibo/sdk/android/Weibo;

    .line 247
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 250
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/weibo/sdk/android/Weibo$1;->this$0:Lcom/weibo/sdk/android/Weibo;

    #getter for: Lcom/weibo/sdk/android/Weibo;->mlistener:Lcom/weibo/sdk/android/WeiboAuthListener;
    invoke-static {v3}, Lcom/weibo/sdk/android/Weibo;->access$0(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/WeiboAuthListener;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/weibo/sdk/android/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/weibo/sdk/android/Weibo$1;->this$0:Lcom/weibo/sdk/android/Weibo;

    #getter for: Lcom/weibo/sdk/android/Weibo;->mlistener:Lcom/weibo/sdk/android/WeiboAuthListener;
    invoke-static {v3}, Lcom/weibo/sdk/android/Weibo;->access$0(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/WeiboAuthListener;

    move-result-object v3

    new-instance v4, Lcom/weibo/sdk/android/WeiboException;

    const-string v5, "Failed to receive access token."

    invoke-direct {v4, v5}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/weibo/sdk/android/WeiboAuthListener;->onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 261
    iget-object v3, p0, Lcom/weibo/sdk/android/Weibo$1;->this$0:Lcom/weibo/sdk/android/Weibo;

    #getter for: Lcom/weibo/sdk/android/Weibo;->mlistener:Lcom/weibo/sdk/android/WeiboAuthListener;
    invoke-static {v3}, Lcom/weibo/sdk/android/Weibo;->access$0(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/WeiboAuthListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/weibo/sdk/android/WeiboException;

    invoke-interface {v4, v3}, Lcom/weibo/sdk/android/WeiboAuthListener;->onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V

    .line 262
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, error:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "error_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, error_code:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "error_description"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, error_description:Ljava/lang/String;
    iget-object v3, p0, Lcom/weibo/sdk/android/Weibo$1;->this$0:Lcom/weibo/sdk/android/Weibo;

    #getter for: Lcom/weibo/sdk/android/Weibo;->mlistener:Lcom/weibo/sdk/android/WeiboAuthListener;
    invoke-static {v3}, Lcom/weibo/sdk/android/Weibo;->access$0(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/WeiboAuthListener;

    move-result-object v3

    new-instance v4, Lcom/weibo/sdk/android/WeiboException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Lcom/weibo/sdk/android/WeiboAuthListener;->onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V

    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
