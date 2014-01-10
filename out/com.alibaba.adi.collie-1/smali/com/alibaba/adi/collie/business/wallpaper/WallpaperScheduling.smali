.class public Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;
.super Ljava/lang/Object;
.source "WallpaperScheduling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;
    }
.end annotation


# static fields
.field private static final INTERVAL_MILLIS_NOT_SCHEDULE:J = -0x1L

.field private static final INTERVAL_MILLIS_SCREEN_ON:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSchedulingType()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 30
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->getUpdateIntervalMillis()J

    move-result-wide v0

    .line 31
    .local v0, intervalMillis:J
    cmp-long v2, v0, v3

    if-lez v2, :cond_0

    .line 32
    sget-object v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->NORMAL_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    .line 36
    :goto_0
    return-object v2

    .line 33
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 34
    sget-object v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->EVERY_SCREEN_ON:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    goto :goto_0

    .line 36
    :cond_1
    sget-object v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->NEVER_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    goto :goto_0
.end method

.method public static getUpdateIntervalMillis()J
    .locals 3

    .prologue
    .line 26
    const-string v0, "wallpaper_update_interval"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static registerAlarmManager(Landroid/content/Context;)V
    .locals 9
    .parameter "baseContext"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->getUpdateIntervalMillis()J

    move-result-wide v4

    .line 42
    .local v4, intervalMillis:J
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->getSchedulingType()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    move-result-object v8

    .line 44
    .local v8, type:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 45
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.alibaba.adi.collie.wallpaper.change"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v7, intent:Landroid/content/Intent;
    invoke-static {p0, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 48
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    sget-object v2, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->NORMAL_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    if-ne v8, v2, :cond_0

    .line 51
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static registerAlarmManager(Landroid/content/Context;J)V
    .locals 2
    .parameter "baseContext"
    .parameter "newIntervalMillis"

    .prologue
    .line 61
    const-string v0, "wallpaper_update_interval"

    invoke-static {v0, p1, p2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;J)V

    .line 62
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->registerAlarmManager(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling;->getSchedulingType()Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;->NORMAL_SCHEDULE:Lcom/alibaba/adi/collie/business/wallpaper/WallpaperScheduling$SchedulingType;

    if-ne v0, v1, :cond_0

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/business/wallpaper/WallpaperManagerX;->setWallpaperNeedChange(ZZ)V

    .line 67
    :cond_0
    return-void
.end method
