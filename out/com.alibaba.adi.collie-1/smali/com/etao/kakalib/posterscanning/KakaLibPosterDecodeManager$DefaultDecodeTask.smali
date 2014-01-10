.class abstract Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;
.super Landroid/os/AsyncTask;
.source "KakaLibPosterDecodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DefaultDecodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        "Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDecodeTask"


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;


# direct methods
.method private constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    .local p0, this:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;,"Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask<TT;>;"
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)V

    return-void
.end method


# virtual methods
.method public abstract decode()Ljava/lang/Object;
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    .locals 6
    .parameter "params"

    .prologue
    .local p0, this:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;,"Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask<TT;>;"
    const/4 v2, 0x0

    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->hasStop:Z
    invoke-static {v3}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    .end local v1           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 177
    .restart local v1       #result:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->decode()Ljava/lang/Object;

    move-result-object v1

    .line 178
    iget-object v3, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->hasStop:Z
    invoke-static {v3}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v3}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$1(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v1, Ljava/lang/String;

    .end local v1           #result:Ljava/lang/Object;
    invoke-static {v3, v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->syncGetPostMessage(Landroid/content/Context;Ljava/lang/String;)Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DefaultDecodeTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "decode()error"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->doInBackground([Ljava/lang/Void;)Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;)V
    .locals 3
    .parameter "result"

    .prologue
    .local p0, this:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;,"Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask<TT;>;"
    const/4 v2, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->hasStop:Z
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$0(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->mCallback:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$2(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->mCallback:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$2(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;->posterScanFailed()V

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #calls: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->dismissLoadingDialog()V
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$3(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)V

    .line 208
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #setter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->inScaning:Z
    invoke-static {v1, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$4(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;Z)V

    .line 221
    :goto_0
    return-void

    .line 211
    :cond_1
    if-nez p1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #calls: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->showPosterNotMatchDialog()V
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$5(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #calls: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->dismissLoadingDialog()V
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$3(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)V

    .line 216
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #setter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->inScaning:Z
    invoke-static {v1, v2}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$4(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;Z)V

    .line 217
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$1(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/etao/kakalib/posterscanning/KakaLibPosterScanningResActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, leInt:Landroid/content/Intent;
    const-string v1, "kakaPosterScanningModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$1(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;

    invoke-virtual {p0, p1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->onPostExecute(Lcom/etao/kakalib/posterscanning/KakaLibScanningModel;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Exception;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 197
    .local p0, this:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;,"Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask<TT;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;->onProgressUpdate([Ljava/lang/Exception;)V

    return-void
.end method
