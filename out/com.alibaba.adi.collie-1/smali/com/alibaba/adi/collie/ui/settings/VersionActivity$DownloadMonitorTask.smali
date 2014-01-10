.class Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;
.super Landroid/os/AsyncTask;
.source "VersionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/VersionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadMonitorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Void;
    .locals 13
    .parameter "longs"

    .prologue
    .line 214
    const-wide/16 v0, -0x1

    .line 215
    .local v0, downloadId:J
    array-length v9, p1

    const/4 v10, 0x1

    if-lt v9, v10, :cond_1

    .line 216
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 222
    :goto_0
    iget-object v9, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    invoke-static {v9, v0, v1}, Lcom/alibaba/adi/collie/util/DownloadManagerHelper;->getDownloadInfo(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v5

    .line 223
    .local v5, retMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "status"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 224
    .local v6, status:I
    sparse-switch v6, :sswitch_data_0

    .line 252
    :cond_0
    :goto_1
    const-wide/16 v9, 0x1f4

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v4

    .line 254
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 259
    const/4 v9, 0x0

    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v5           #retMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #status:I
    :goto_2
    return-object v9

    .line 218
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 226
    .restart local v5       #retMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6       #status:I
    :sswitch_0
    const-string v9, "VersionActivity"

    const-string v10, "download new version completed"

    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Long;

    const/4 v10, 0x0

    const-wide/16 v11, 0x64

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-wide/16 v11, 0x64

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->publishProgress([Ljava/lang/Object;)V

    .line 228
    const/4 v9, 0x0

    goto :goto_2

    .line 232
    :sswitch_1
    const-wide/16 v7, -0x1

    .line 233
    .local v7, totalBytes:J
    const-wide/16 v2, -0x1

    .line 234
    .local v2, downloadedBytes:J
    const-string v9, "total_size"

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 235
    const-string v9, "total_size"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 237
    :cond_2
    const-string v9, "bytes_so_far"

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 238
    const-string v9, "bytes_so_far"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 240
    :cond_3
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_0

    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-lez v9, :cond_0

    .line 241
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Long;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 245
    .end local v2           #downloadedBytes:J
    .end local v7           #totalBytes:J
    :sswitch_2
    const-string v9, "VersionActivity"

    const-string v10, "downloading new version failed, submit a new download request"

    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v9, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    #calls: Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->cancelDownload(J)V
    invoke-static {v9, v0, v1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->access$0(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;J)V

    .line 247
    iget-object v9, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    #calls: Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->submitDownload()V
    invoke-static {v9}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->access$1(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V

    .line 248
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getDownloadId()J

    move-result-wide v0

    goto/16 :goto_1

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 265
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->access$2(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->access$2(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 267
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->access$3(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Long;)V
    .locals 11
    .parameter "values"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 272
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 273
    array-length v5, p1

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 274
    aget-object v5, p1, v10

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 275
    .local v0, downloadedBytes:J
    aget-object v5, p1, v9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 276
    .local v3, totalBytes:J
    long-to-double v5, v0

    long-to-double v7, v3

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    double-to-int v2, v5

    .line 277
    .local v2, percent:I
    const-string v5, "VersionActivity"

    const-string v6, "downloading %d%%"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->access$2(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 279
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->access$3(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d%%"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .end local v0           #downloadedBytes:J
    .end local v2           #percent:I
    .end local v3           #totalBytes:J
    :cond_0
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->onProgressUpdate([Ljava/lang/Long;)V

    return-void
.end method
