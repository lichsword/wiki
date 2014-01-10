.class public Lcom/alibaba/adi/collie/util/SysNotificationHelper;
.super Ljava/lang/Object;
.source "SysNotificationHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/adi/collie/util/SysNotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/SysNotificationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeNotification(Landroid/content/Context;II)Landroid/app/Notification;
    .locals 11
    .parameter "context"
    .parameter "callNum"
    .parameter "smsNum"

    .prologue
    const/4 v10, 0x0

    .line 26
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    .local v3, notifyBuilder:Landroid/support/v4/app/NotificationCompat$Builder;
    const v5, 0x7f020080

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 28
    const v6, 0x7f0a019f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, content:Ljava/lang/String;
    if-gtz p1, :cond_1

    if-gtz p2, :cond_1

    .line 32
    const v5, 0x7f0a01a1

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 41
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/alibaba/adi/collie/ui/MainActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "from"

    sget-object v6, Lcom/alibaba/adi/collie/util/SysNotificationHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-static {p0, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 44
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 46
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 47
    .local v2, notification:Landroid/app/Notification;
    return-object v2

    .line 34
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 35
    const v6, 0x7f0a01a0

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 34
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateNotificationCallNum(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "num"

    .prologue
    .line 51
    .line 53
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/CoreApplication;->getNotificationInfo()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->getSmsNotifyNum()I

    move-result v2

    .line 51
    invoke-static {p0, p1, v2}, Lcom/alibaba/adi/collie/util/SysNotificationHelper;->makeNotification(Landroid/content/Context;II)Landroid/app/Notification;

    move-result-object v0

    .line 54
    .local v0, notification:Landroid/app/Notification;
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 55
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static updateNotificationSmsNum(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "num"

    .prologue
    .line 61
    .line 62
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/CoreApplication;->getNotificationInfo()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->getPhoneCallNotifyNum()I

    move-result v2

    .line 61
    invoke-static {p0, v2, p1}, Lcom/alibaba/adi/collie/util/SysNotificationHelper;->makeNotification(Landroid/content/Context;II)Landroid/app/Notification;

    move-result-object v0

    .line 64
    .local v0, notification:Landroid/app/Notification;
    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/CoreApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 65
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 68
    :cond_0
    return-void
.end method
