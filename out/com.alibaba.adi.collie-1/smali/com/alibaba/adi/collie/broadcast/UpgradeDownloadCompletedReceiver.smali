.class public Lcom/alibaba/adi/collie/broadcast/UpgradeDownloadCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeDownloadCompletedReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeDownloadCompletedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onDownloadCompleted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v8, -0x1

    .line 30
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getDownloadId()J

    move-result-wide v3

    .line 31
    .local v3, refId:J
    const-string v7, "extra_download_id"

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 35
    .local v5, reference:J
    cmp-long v7, v3, v8

    if-eqz v7, :cond_1

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 36
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getDownloadedApk()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, apkPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 38
    :cond_0
    const-string v7, "UpgradeDownloadCompletedReceiver"

    const-string v8, "target apk path is null"

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v1           #apkPath:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 41
    .restart local v1       #apkPath:Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 43
    :cond_3
    const-string v7, "UpgradeDownloadCompletedReceiver"

    const-string v8, "target apk file %s not exists"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, installIntent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "application/vnd.android.package-archive"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->onUpgradeCompleted()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/broadcast/UpgradeDownloadCompletedReceiver;->onDownloadCompleted(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    :cond_0
    return-void
.end method
