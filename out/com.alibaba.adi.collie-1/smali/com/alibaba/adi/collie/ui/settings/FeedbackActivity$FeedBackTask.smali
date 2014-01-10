.class Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;
.super Landroid/os/AsyncTask;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedBackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;-><init>(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    .line 143
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 144
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 159
    :goto_0
    return-object v4

    .line 146
    :cond_1
    const/4 v5, 0x0

    aget-object v2, p1, v5

    .line 147
    .local v2, content:Ljava/lang/String;
    new-instance v1, Lcom/alibaba/adi/collie/business/feedback/FeedbackConnectorHelper;

    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    invoke-direct {v1, v5, v2}, Lcom/alibaba/adi/collie/business/feedback/FeedbackConnectorHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    .local v1, connectorHelper:Lcom/alibaba/adi/collie/business/feedback/FeedbackConnectorHelper;
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 149
    :try_start_0
    invoke-static {v5, v6, v7}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(IZ[B)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 151
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-static {}, Landroid/taobao/apirequest/ApiRequestMgr;->getInstance()Landroid/taobao/apirequest/ApiRequestMgr;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Landroid/taobao/apirequest/ApiRequestMgr;->syncConnect(Landroid/taobao/apirequest/ConnectorHelper;Landroid/taobao/apirequest/ApiProperty;)Ljava/lang/Object;

    move-result-object v4

    .line 152
    .local v4, ret:Ljava/lang/Object;
    if-eqz v4, :cond_2

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 153
    check-cast v4, Ljava/lang/Integer;

    goto :goto_0

    .line 155
    :cond_2
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 157
    .end local v0           #apiProperty:Landroid/taobao/apirequest/ApiProperty;
    .end local v4           #ret:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 158
    .local v3, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    iget-object v5, v5, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "xhh: syncConnect "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$1(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$1(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 172
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    const-class v2, Lcom/alibaba/adi/collie/ui/settings/dialog/FeedbackSuccessDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    :goto_0
    return-void

    .line 177
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    const-class v2, Lcom/alibaba/adi/collie/ui/settings/dialog/FeedbackFailedDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 128
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$0(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;Landroid/app/ProgressDialog;)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$1(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$1(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$1(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$FeedBackTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->access$1(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 133
    return-void
.end method

.method protected onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 138
    return-void
.end method
