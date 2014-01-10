.class Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;
.super Landroid/os/AsyncTask;
.source "SsoLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/ssologin/SsoLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventProcesser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mTmpToken:I

.field final synthetic this$0:Lcom/taobao/android/ssologin/SsoLogin;


# direct methods
.method public constructor <init>(Lcom/taobao/android/ssologin/SsoLogin;I)V
    .locals 0
    .parameter
    .parameter "token"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 369
    iput p2, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->mTmpToken:I

    .line 370
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, -0x1

    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    invoke-virtual {v2}, Lcom/taobao/android/ssologin/SsoLogin;->getLoginUserName()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, username:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 378
    iget-object v2, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    #calls: Lcom/taobao/android/ssologin/SsoLogin;->getDefaultAccount()Landroid/accounts/Account;
    invoke-static {v2}, Lcom/taobao/android/ssologin/SsoLogin;->access$0(Lcom/taobao/android/ssologin/SsoLogin;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 379
    const/4 v2, -0x1

    iput v2, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->mTmpToken:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v1           #username:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 383
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    iput v3, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->mTmpToken:I

    .line 389
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "userName"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    #getter for: Lcom/taobao/android/ssologin/SsoLogin;->mListener:Lcom/taobao/android/ssologin/SsoStatesChangedListener;
    invoke-static {v0}, Lcom/taobao/android/ssologin/SsoLogin;->access$1(Lcom/taobao/android/ssologin/SsoLogin;)Lcom/taobao/android/ssologin/SsoStatesChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 397
    :cond_0
    iget v0, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->mTmpToken:I

    iget-object v1, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    #getter for: Lcom/taobao/android/ssologin/SsoLogin;->mToken:I
    invoke-static {v1}, Lcom/taobao/android/ssologin/SsoLogin;->access$2(Lcom/taobao/android/ssologin/SsoLogin;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 398
    if-eqz p1, :cond_2

    .line 400
    iget-object v0, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    #getter for: Lcom/taobao/android/ssologin/SsoLogin;->mListener:Lcom/taobao/android/ssologin/SsoStatesChangedListener;
    invoke-static {v0}, Lcom/taobao/android/ssologin/SsoLogin;->access$1(Lcom/taobao/android/ssologin/SsoLogin;)Lcom/taobao/android/ssologin/SsoStatesChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/android/ssologin/SsoStatesChangedListener;->onSsoLogin(Ljava/lang/String;)V

    .line 409
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/taobao/android/ssologin/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologin/SsoLogin;

    #getter for: Lcom/taobao/android/ssologin/SsoLogin;->mListener:Lcom/taobao/android/ssologin/SsoStatesChangedListener;
    invoke-static {v0}, Lcom/taobao/android/ssologin/SsoLogin;->access$1(Lcom/taobao/android/ssologin/SsoLogin;)Lcom/taobao/android/ssologin/SsoStatesChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/android/ssologin/SsoStatesChangedListener;->onSsoLogout()V

    goto :goto_1
.end method
