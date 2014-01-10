.class public Lcom/alibaba/adi/collie/ui/settings/VersionActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "VersionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;,
        Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$settings$VersionActivity$VersionActivityMode:[I = null

.field public static final TAG:Ljava/lang/String; = "VersionActivity"


# instance fields
.field filter:Landroid/content/IntentFilter;

.field private mApkDownloadFile:Ljava/io/File;

.field mDownloadMonitorTask:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;

.field private mDownloadProgressBar:Landroid/widget/ProgressBar;

.field private mDownloadTextView:Landroid/widget/TextView;

.field private mFeatureTitleTextView:Landroid/widget/TextView;

.field private mNewFeatureTextView:Landroid/widget/TextView;

.field private mProgressInfoLayout:Landroid/view/View;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mUpgradeBtn:Landroid/widget/Button;

.field private mVerInfoLayout:Landroid/view/View;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$settings$VersionActivity$VersionActivityMode()[I
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$settings$VersionActivity$VersionActivityMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->values()[Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->DOWNLOADING:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->NO_DOWNLOADING:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$settings$VersionActivity$VersionActivityMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->filter:Landroid/content/IntentFilter;

    .line 286
    new-instance v0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->cancelDownload(J)V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->submitDownload()V

    return-void
.end method

.method static synthetic access$2(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->onUpgradeButtonClicked_afterApi9()V

    return-void
.end method

.method static synthetic access$6(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->setUiStatus()V

    return-void
.end method

.method private cancelDownload(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 198
    const-string v1, "download"

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 199
    .local v0, downloadManager:Landroid/app/DownloadManager;
    if-nez v0, :cond_0

    .line 200
    const-string v1, "VersionActivity"

    const-string v2, "failed to cancel downloading, as DownloadManager is null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_0
.end method

.method private onUpgradeButtonClicked_afterApi9()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const v1, 0x7f0a00fe

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 173
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/NetworkUtil;->networkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    const v1, 0x7f0a00ff

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mApkDownloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    const-string v1, "VersionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "make dir "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mApkDownloadFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mApkDownloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mApkDownloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mApkDownloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 172
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->submitDownload()V

    goto :goto_0
.end method

.method private setMode(Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;)V
    .locals 4
    .parameter "mode"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 93
    invoke-static {}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$settings$VersionActivity$VersionActivityMode()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mProgressInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mVerInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mProgressInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mVerInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setUiStatus()V
    .locals 10

    .prologue
    const v9, 0x7f0a00fa

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 106
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->hasUpdate(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getDownloadId()J

    move-result-wide v2

    .line 109
    .local v2, id:J
    invoke-static {p0, v2, v3}, Lcom/alibaba/adi/collie/util/DownloadManagerHelper;->getDownloadStatus(Landroid/content/Context;J)I

    move-result v1

    .line 110
    .local v1, downloadStatus:I
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const/16 v4, 0x10

    if-eq v1, v4, :cond_0

    .line 111
    if-eq v1, v8, :cond_0

    if-gez v1, :cond_2

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mSummaryTextView:Landroid/widget/TextView;

    new-array v5, v6, [Ljava/lang/Object;

    .line 114
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getUpdateVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 113
    invoke-virtual {p0, v9, v5}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getUpdateFeatureDesc()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, desc:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 117
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mFeatureTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mNewFeatureTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mUpgradeBtn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mUpgradeBtn:Landroid/widget/Button;

    new-instance v5, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$2;

    invoke-direct {v5, p0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$2;-><init>(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #downloadStatus:I
    .end local v2           #id:J
    :goto_1
    return-void

    .line 120
    .restart local v0       #desc:Ljava/lang/String;
    .restart local v1       #downloadStatus:I
    .restart local v2       #id:J
    :cond_1
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mFeatureTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mNewFeatureTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    .end local v0           #desc:Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->DOWNLOADING:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->setMode(Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;)V

    .line 136
    new-instance v4, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;

    invoke-direct {v4, p0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;-><init>(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V

    iput-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadMonitorTask:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;

    .line 137
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadMonitorTask:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;

    new-array v5, v6, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 140
    .end local v1           #downloadStatus:I
    .end local v2           #id:J
    :cond_3
    sget-object v4, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;->NO_DOWNLOADING:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;

    invoke-direct {p0, v4}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->setMode(Lcom/alibaba/adi/collie/ui/settings/VersionActivity$VersionActivityMode;)V

    .line 141
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mUpgradeBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mSummaryTextView:Landroid/widget/TextView;

    .line 143
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v9, v5}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mFeatureTitleTextView:Landroid/widget/TextView;

    const v5, 0x7f0a0101

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mNewFeatureTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mNewFeatureTextView:Landroid/widget/TextView;

    const v5, 0x7f0a0102

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private submitDownload()V
    .locals 8

    .prologue
    .line 176
    const-string v6, "download"

    invoke-virtual {p0, v6}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 177
    .local v0, downloadManager:Landroid/app/DownloadManager;
    if-nez v0, :cond_0

    .line 178
    const-string v6, "VersionActivity"

    const-string v7, "failed to submit downloading, as DownloadManager is null"

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getUpdateUrl()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, updateUrl:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 183
    .local v5, uri:Landroid/net/Uri;
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 184
    .local v1, downloadRequest:Landroid/app/DownloadManager$Request;
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 186
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 187
    const v6, 0x7f0a0100

    invoke-virtual {p0, v6}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 188
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mApkDownloadFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 190
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 192
    .local v2, id:J
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mApkDownloadFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->setDownloadedApk(Ljava/lang/String;)V

    .line 193
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->setDownloadId(J)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 53
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mProgressInfoLayout:Landroid/view/View;

    .line 56
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mVerInfoLayout:Landroid/view/View;

    .line 59
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    .line 60
    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadTextView:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mSummaryTextView:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mUpgradeBtn:Landroid/widget/Button;

    .line 65
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mNewFeatureTextView:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mFeatureTitleTextView:Landroid/widget/TextView;

    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 71
    const-string v2, "adi_lock_upgrade.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mApkDownloadFile:Ljava/io/File;

    .line 73
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadMonitorTask:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->mDownloadMonitorTask:Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$DownloadMonitorTask;->cancel(Z)Z

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onPause()V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->setUiStatus()V

    .line 80
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void
.end method
