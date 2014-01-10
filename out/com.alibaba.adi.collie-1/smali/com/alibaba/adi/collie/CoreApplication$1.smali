.class Lcom/alibaba/adi/collie/CoreApplication$1;
.super Ljava/lang/Object;
.source "CoreApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/CoreApplication;->initAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/CoreApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/CoreApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/CoreApplication$1;->this$0:Lcom/alibaba/adi/collie/CoreApplication;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 351
    invoke-static {}, Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;->getUdid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 352
    invoke-static {}, Lcom/alibaba/adi/collie/business/usertrack/UserTrackAccountPersistence;->loadUdid()Ljava/lang/String;

    .line 355
    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->getInstance()Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/taobao/timing/MtopTiming;->syncServerTime()V

    .line 357
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 358
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.adi.collie.ACTION_PHONE_CALL_NUM_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v1, "com.adi.collie.ACTION_SMS_NUM_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v1, "com.adi.collie.ACTION_WEIBO_NUM_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v1, "com.adi.collie.NEWS_NUM_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v1, "com.adi.collie.TAOBAO_NUM_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v1, "com.adi.collie.VIDEO_NUM_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v1, "com.ali.collie.WEATHER_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/alibaba/adi/collie/CoreApplication$1;->this$0:Lcom/alibaba/adi/collie/CoreApplication;

    iget-object v2, p0, Lcom/alibaba/adi/collie/CoreApplication$1;->this$0:Lcom/alibaba/adi/collie/CoreApplication;

    #getter for: Lcom/alibaba/adi/collie/CoreApplication;->mAdiBroadcastReceiver:Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;
    invoke-static {v2}, Lcom/alibaba/adi/collie/CoreApplication;->access$1(Lcom/alibaba/adi/collie/CoreApplication;)Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/adi/collie/CoreApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    iget-object v1, p0, Lcom/alibaba/adi/collie/CoreApplication$1;->this$0:Lcom/alibaba/adi/collie/CoreApplication;

    #calls: Lcom/alibaba/adi/collie/CoreApplication;->initTaoSDK()V
    invoke-static {v1}, Lcom/alibaba/adi/collie/CoreApplication;->access$2(Lcom/alibaba/adi/collie/CoreApplication;)V

    .line 368
    iget-object v1, p0, Lcom/alibaba/adi/collie/CoreApplication$1;->this$0:Lcom/alibaba/adi/collie/CoreApplication;

    #calls: Lcom/alibaba/adi/collie/CoreApplication;->initWallpaper()V
    invoke-static {v1}, Lcom/alibaba/adi/collie/CoreApplication;->access$3(Lcom/alibaba/adi/collie/CoreApplication;)V

    .line 371
    sget-object v1, Lcom/alibaba/adi/collie/model/AdiConstants;->UNINST_URL_PARAM_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    invoke-static {}, Lcom/alibaba/adi/collie/util/UninstallObserver;->writeParamFile()V

    .line 374
    :cond_1
    return-void
.end method
