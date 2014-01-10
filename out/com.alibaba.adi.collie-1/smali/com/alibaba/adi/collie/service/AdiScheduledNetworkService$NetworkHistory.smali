.class public Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$NetworkHistory;
.super Ljava/lang/Object;
.source "AdiScheduledNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkHistory"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSyncNow()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 639
    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$NetworkHistory;->getLastSyncTime()Ljava/util/Date;

    move-result-object v1

    .line 640
    .local v1, lastDate:Ljava/util/Date;
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$NetworkHistory;->getLastSyncStatus()Z

    move-result v3

    if-nez v3, :cond_1

    .line 644
    :cond_0
    :goto_0
    return v2

    .line 643
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 644
    .local v0, currentDate:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1b7740

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLastCheckVersionTime()J
    .locals 3

    .prologue
    .line 671
    const-string v0, "adiNetwork_lastChkVerTime"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastGetTime()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 657
    const-string v3, "adiNetwork_lastGetTime"

    invoke-static {v3, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, strDate:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 660
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 666
    :cond_0
    :goto_0
    return-object v2

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLastSyncStatus()Z
    .locals 2

    .prologue
    .line 615
    const-string v0, "adiNetworkLastSyncStatus"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLastSyncTime()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 625
    const-string v3, "adiNetwork_lastSyncTime"

    invoke-static {v3, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, strDate:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 628
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 634
    :cond_0
    :goto_0
    return-object v2

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLastCheckVerionTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 675
    const-string v0, "adiNetwork_lastChkVerTime"

    invoke-static {v0, p0, p1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;J)V

    .line 676
    return-void
.end method

.method public static setLastGetTime(Ljava/util/Date;)V
    .locals 3
    .parameter "date"

    .prologue
    .line 649
    if-eqz p0, :cond_0

    .line 650
    const-string v0, "adiNetwork_lastGetTime"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :goto_0
    return-void

    .line 652
    :cond_0
    const-string v0, "adiNetwork_lastGetTime"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLastSyncStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 611
    const-string v0, "adiNetworkLastSyncStatus"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 612
    return-void
.end method

.method public static setLastSyncTime(Ljava/util/Date;)V
    .locals 3
    .parameter "date"

    .prologue
    .line 619
    if-eqz p0, :cond_0

    .line 620
    const-string v0, "adiNetwork_lastSyncTime"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_0
    return-void
.end method
