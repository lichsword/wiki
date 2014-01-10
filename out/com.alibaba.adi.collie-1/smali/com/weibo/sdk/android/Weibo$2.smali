.class Lcom/weibo/sdk/android/Weibo$2;
.super Ljava/lang/Object;
.source "Weibo.java"

# interfaces
.implements Lcom/weibo/sdk/android/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weibo/sdk/android/Weibo;->startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weibo/sdk/android/Weibo;

.field private final synthetic val$listener:Lcom/weibo/sdk/android/WeiboAuthListener;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/weibo/sdk/android/Weibo;ILcom/weibo/sdk/android/WeiboAuthListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weibo/sdk/android/Weibo$2;->this$0:Lcom/weibo/sdk/android/Weibo;

    iput p2, p0, Lcom/weibo/sdk/android/Weibo$2;->val$type:I

    iput-object p3, p0, Lcom/weibo/sdk/android/Weibo$2;->val$listener:Lcom/weibo/sdk/android/WeiboAuthListener;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/weibo/sdk/android/Weibo$2;->val$listener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-interface {v0}, Lcom/weibo/sdk/android/WeiboAuthListener;->onCancel()V

    .line 149
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 132
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 133
    const-string v1, "code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x1

    iget v2, p0, Lcom/weibo/sdk/android/Weibo$2;->val$type:I

    if-ne v1, v2, :cond_1

    .line 135
    iget-object v1, p0, Lcom/weibo/sdk/android/Weibo$2;->this$0:Lcom/weibo/sdk/android/Weibo;

    #calls: Lcom/weibo/sdk/android/Weibo;->FtchAccessToken(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/weibo/sdk/android/Weibo;->access$1(Lcom/weibo/sdk/android/Weibo;Ljava/lang/String;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget v1, p0, Lcom/weibo/sdk/android/Weibo$2;->val$type:I

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/weibo/sdk/android/Weibo$2;->val$listener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-interface {v1, p1}, Lcom/weibo/sdk/android/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboDialogError;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/weibo/sdk/android/Weibo$2;->val$listener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-interface {v0, p1}, Lcom/weibo/sdk/android/WeiboAuthListener;->onError(Lcom/weibo/sdk/android/WeiboDialogError;)V

    .line 154
    return-void
.end method

.method public onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/weibo/sdk/android/Weibo$2;->val$listener:Lcom/weibo/sdk/android/WeiboAuthListener;

    invoke-interface {v0, p1}, Lcom/weibo/sdk/android/WeiboAuthListener;->onWeiboException(Lcom/weibo/sdk/android/WeiboException;)V

    .line 144
    return-void
.end method
