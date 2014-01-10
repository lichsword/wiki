.class Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CoreApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/CoreApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ADIBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/CoreApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/CoreApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/alibaba/adi/collie/CoreApplication$ADIBroadcastReceiver;->this$0:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive()action="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v2, "extraInteger"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 443
    .local v1, intValue:I
    const-string v2, "com.adi.collie.TAOBAO_NUM_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    invoke-static {}, Lcom/alibaba/adi/collie/CoreApplication;->access$0()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setTaobaoNotifyNum(I)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const-string v2, "com.adi.collie.ACTION_PHONE_CALL_NUM_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    invoke-static {}, Lcom/alibaba/adi/collie/CoreApplication;->access$0()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setPhoneCallNotifyNum(I)V

    goto :goto_0

    .line 447
    :cond_2
    const-string v2, "com.adi.collie.ACTION_SMS_NUM_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 448
    invoke-static {}, Lcom/alibaba/adi/collie/CoreApplication;->access$0()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setSmsNotifyNum(I)V

    goto :goto_0

    .line 449
    :cond_3
    const-string v2, "com.adi.collie.ACTION_WEIBO_NUM_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 450
    invoke-static {}, Lcom/alibaba/adi/collie/CoreApplication;->access$0()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setWeiboNotifyNum(I)V

    goto :goto_0

    .line 451
    :cond_4
    const-string v2, "com.adi.collie.NEWS_NUM_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 452
    invoke-static {}, Lcom/alibaba/adi/collie/CoreApplication;->access$0()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setNewNotifyNum(I)V

    goto :goto_0

    .line 453
    :cond_5
    const-string v2, "com.adi.collie.VIDEO_NUM_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 454
    invoke-static {}, Lcom/alibaba/adi/collie/CoreApplication;->access$0()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setVideoNum(I)V

    goto :goto_0

    .line 455
    :cond_6
    const-string v2, "com.ali.collie.WEATHER_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-static {}, Lcom/alibaba/adi/collie/CoreApplication;->access$0()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->setWeather()V

    goto :goto_0
.end method
