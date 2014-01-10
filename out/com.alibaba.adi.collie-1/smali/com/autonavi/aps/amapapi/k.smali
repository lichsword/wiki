.class public final Lcom/autonavi/aps/amapapi/k;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field private static a:Lcom/autonavi/aps/amapapi/k;

.field private static b:Landroid/content/Intent;

.field private static c:Lcom/autonavi/aps/amapapi/Upload;

.field private static d:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/autonavi/aps/amapapi/k;->a:Lcom/autonavi/aps/amapapi/k;

    .line 22
    sput-object v0, Lcom/autonavi/aps/amapapi/k;->b:Landroid/content/Intent;

    .line 23
    sput-object v0, Lcom/autonavi/aps/amapapi/k;->c:Lcom/autonavi/aps/amapapi/Upload;

    .line 24
    new-instance v0, Lcom/autonavi/aps/amapapi/k$1;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/k$1;-><init>()V

    sput-object v0, Lcom/autonavi/aps/amapapi/k;->d:Landroid/content/ServiceConnection;

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 74
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "apsamapapi/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/autonavi/aps/amapapi/Upload;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    sput-object p0, Lcom/autonavi/aps/amapapi/k;->c:Lcom/autonavi/aps/amapapi/Upload;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 384
    sget-boolean v0, Lcom/autonavi/aps/amapapi/Const;->j:Z

    if-nez v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    sget-object v0, Lcom/autonavi/aps/amapapi/k;->b:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 394
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 395
    sput-object v0, Lcom/autonavi/aps/amapapi/k;->b:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/autonavi/aps/amapapi/Upload;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 397
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/amapapi/k;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/amapapi/k;->b:Landroid/content/Intent;

    sget-object v2, Lcom/autonavi/aps/amapapi/k;->d:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 422
    sget-object v0, Lcom/autonavi/aps/amapapi/k;->b:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 426
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/aps/amapapi/k;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_1
    sget-object v0, Lcom/autonavi/aps/amapapi/k;->b:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
