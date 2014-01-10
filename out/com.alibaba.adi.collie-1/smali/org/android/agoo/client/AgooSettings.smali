.class public Lorg/android/agoo/client/AgooSettings;
.super Ljava/lang/Object;
.source "AgooSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/client/AgooSettings$1;,
        Lorg/android/agoo/client/AgooSettings$Mode;,
        Lorg/android/agoo/client/AgooSettings$UT;
    }
.end annotation


# static fields
.field private static final AGOO_END_TIME:Ljava/lang/String; = "agoo_end_time"

.field private static final AGOO_MODE:Ljava/lang/String; = "agoo_mode"

.field private static final AGOO_RELEASE_TIME:J = 0x1332d94L

.field private static final AGOO_SECURITY_MODE:Ljava/lang/String; = "agoo_security_mode"

.field private static final AGOO_START_TIME:Ljava/lang/String; = "agoo_start_time"

.field private static final PULL_PREVIEW_URL:Ljava/lang/String; = "http://api.wapa.taobao.com/rest/api3.do"

.field private static final PULL_TEST_URL:Ljava/lang/String; = "http://api.waptest.taobao.com/rest/api3.do"

.field private static final PUSH_PREVIEW_APOLL_HOST:Ljava/lang/String; = "http://apoll.m.taobao.com/activeip/"

.field private static final PUSH_PREVIEW_IP:Ljava/lang/String; = "110.75.40.7"

.field private static final PUSH_RELEASE_IP:Ljava/lang/String; = "42.120.111.1"

.field private static final PUSH_TEST_APOLL_HOST:Ljava/lang/String; = "http://apoll.m.taobao.com/activeip/"

.field private static final PUSH_TEST_IP:Ljava/lang/String; = "110.75.120.15"

.field private static final TAOBAO_PULL_RELEASE_URL:Ljava/lang/String; = "http://api.m.taobao.com/rest/api3.do"

.field private static final TAOBAO_PUSH_RELEASE_APOLL_HOST:Ljava/lang/String; = "http://apoll.m.taobao.com/activeip/"

.field private static final UMENG_PULL_RELEASE_URL:Ljava/lang/String; = "http://utop.umengcloud.com/rest/api3.do"

.field private static final UMENG_PUSH_RELEASE_APOLL_HOST:Ljava/lang/String; = "http://upoll.umengcloud.com/activeip/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static getAgooReleaseTime()J
    .locals 2

    .prologue
    .line 90
    const-wide/32 v0, 0x1332d94

    return-wide v0
.end method

.method public static declared-synchronized getMode(Landroid/content/Context;)Lorg/android/agoo/client/AgooSettings$Mode;
    .locals 5
    .parameter "context"

    .prologue
    .line 113
    const-class v3, Lorg/android/agoo/client/AgooSettings;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooSetttingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    .local v0, storage:Landroid/content/SharedPreferences;
    const-string v2, "agoo_mode"

    sget-object v4, Lorg/android/agoo/client/AgooSettings$Mode;->RELEASE:Lorg/android/agoo/client/AgooSettings$Mode;

    invoke-virtual {v4}, Lorg/android/agoo/client/AgooSettings$Mode;->getValue()I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 115
    .local v1, value:I
    packed-switch v1, :pswitch_data_0

    .line 123
    :pswitch_0
    sget-object v2, Lorg/android/agoo/client/AgooSettings$Mode;->RELEASE:Lorg/android/agoo/client/AgooSettings$Mode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-object v2

    .line 117
    :pswitch_1
    :try_start_1
    sget-object v2, Lorg/android/agoo/client/AgooSettings$Mode;->TEST:Lorg/android/agoo/client/AgooSettings$Mode;

    goto :goto_0

    .line 119
    :pswitch_2
    sget-object v2, Lorg/android/agoo/client/AgooSettings$Mode;->PREVIEW:Lorg/android/agoo/client/AgooSettings$Mode;

    goto :goto_0

    .line 121
    :pswitch_3
    sget-object v2, Lorg/android/agoo/client/AgooSettings$Mode;->TAOBAO:Lorg/android/agoo/client/AgooSettings$Mode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    .end local v0           #storage:Landroid/content/SharedPreferences;
    .end local v1           #value:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 115
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static declared-synchronized getPullUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 109
    const-class v1, Lorg/android/agoo/client/AgooSettings;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/client/AgooSettings;->getMode(Landroid/content/Context;)Lorg/android/agoo/client/AgooSettings$Mode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/android/agoo/client/AgooSettings$Mode;->getPullUrl()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTargetTime(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/android/agoo/client/AgooSettings;->getTargetTime(Landroid/content/Context;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTargetTime(Landroid/content/Context;J)J
    .locals 13
    .parameter "context"
    .parameter "targetTime"

    .prologue
    const-wide/16 v8, -0x1

    const/16 v12, 0xd

    const/4 v11, -0x1

    .line 253
    if-nez p0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-wide v8

    .line 256
    :cond_1
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooSetttingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 257
    .local v7, storage:Landroid/content/SharedPreferences;
    const-string v10, "agoo_start_time"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 258
    .local v6, start:I
    const-string v10, "agoo_end_time"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 259
    .local v1, end:I
    if-eq v6, v11, :cond_0

    if-eq v1, v11, :cond_0

    .line 262
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 263
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 264
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 265
    .local v2, hour:I
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 266
    .local v3, minute:I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 267
    .local v5, second:I
    mul-int/lit8 v10, v2, 0x3c

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit8 v11, v3, 0x3c

    add-int/2addr v10, v11

    add-int v4, v10, v5

    .line 268
    .local v4, now:I
    if-ge v4, v6, :cond_2

    .line 269
    sub-int v8, v6, v4

    invoke-virtual {v0, v12, v8}, Ljava/util/Calendar;->add(II)V

    .line 275
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    goto :goto_0

    .line 270
    :cond_2
    if-le v4, v1, :cond_0

    .line 271
    sub-int v8, v6, v4

    const v9, 0x15180

    add-int/2addr v8, v9

    invoke-virtual {v0, v12, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1
.end method

.method public static isAgooSoSecurityMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 85
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooSetttingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    .local v0, storage:Landroid/content/SharedPreferences;
    const-string v1, "agoo_security_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAgooTestMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 94
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooSetttingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    .local v1, storage:Landroid/content/SharedPreferences;
    const-string v2, "agoo_mode"

    sget-object v3, Lorg/android/agoo/client/AgooSettings$Mode;->TAOBAO:Lorg/android/agoo/client/AgooSettings$Mode;

    invoke-virtual {v3}, Lorg/android/agoo/client/AgooSettings$Mode;->getValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, mode:I
    sget-object v2, Lorg/android/agoo/client/AgooSettings$Mode;->TAOBAO:Lorg/android/agoo/client/AgooSettings$Mode;

    invoke-virtual {v2}, Lorg/android/agoo/client/AgooSettings$Mode;->getValue()I

    move-result v2

    if-eq v0, v2, :cond_0

    sget-object v2, Lorg/android/agoo/client/AgooSettings$Mode;->RELEASE:Lorg/android/agoo/client/AgooSettings$Mode;

    invoke-virtual {v2}, Lorg/android/agoo/client/AgooSettings$Mode;->getValue()I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized setAgooMode(Landroid/content/Context;Lorg/android/agoo/client/AgooSettings$Mode;)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 100
    const-class v3, Lorg/android/agoo/client/AgooSettings;

    monitor-enter v3

    if-eqz p0, :cond_0

    .line 101
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooSetttingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .local v1, storage:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "agoo_mode"

    invoke-virtual {p1}, Lorg/android/agoo/client/AgooSettings$Mode;->getValue()I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #storage:Landroid/content/SharedPreferences;
    :cond_0
    monitor-exit v3

    return-void

    .line 100
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static setAgooSecurityMode(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isSoSecurity"

    .prologue
    .line 76
    if-eqz p0, :cond_0

    .line 77
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooSetttingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 78
    .local v1, storage:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "agoo_security_mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #storage:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setAvailableTime(Landroid/content/Context;IIII)V
    .locals 6
    .parameter "context"
    .parameter "startHours"
    .parameter "startMin"
    .parameter "endHours"
    .parameter "endMin"

    .prologue
    .line 237
    if-eqz p0, :cond_0

    .line 238
    mul-int/lit8 v4, p1, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v5, p2, 0x3c

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, 0x0

    .line 239
    .local v2, start:I
    mul-int/lit8 v4, p3, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v5, p4, 0x3c

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x0

    .line 240
    .local v1, end:I
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooSetttingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 241
    .local v3, storage:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "agoo_start_time"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v4, "agoo_end_time"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #end:I
    .end local v2           #start:I
    .end local v3           #storage:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .parameter "debug"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    invoke-static {p0}, Lorg/android/agoo/log/AgooLog;->setDebugMode(Z)V

    .line 44
    return-void
.end method

.method public static setLog(Landroid/content/Context;ZZ)V
    .locals 0
    .parameter "context"
    .parameter "debug"
    .parameter "log2File"

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lorg/android/agoo/config/Config;->setLog(Landroid/content/Context;ZZ)V

    .line 73
    invoke-static {p0}, Lorg/android/agoo/log/AgooLog;->startLog(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public static setLog2File(Z)V
    .locals 0
    .parameter "log2File"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    invoke-static {p0}, Lorg/android/agoo/log/AgooLog;->setLog2File(Z)V

    .line 39
    return-void
.end method

.method public static setUTVersion(Landroid/content/Context;Lorg/android/agoo/client/AgooSettings$UT;)V
    .locals 1
    .parameter "context"
    .parameter "ut"

    .prologue
    .line 67
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getLoggerClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lorg/android/agoo/client/AgooSettings$UT;->getUTClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/android/agoo/config/Config;->setUTClassName(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
