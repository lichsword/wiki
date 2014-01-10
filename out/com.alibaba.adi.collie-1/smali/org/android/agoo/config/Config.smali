.class public Lorg/android/agoo/config/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final ADD_ELECTION_TIMEOUT:J = 0x2710L

.field private static final BACKOFF_MS:Ljava/lang/String; = "backoff_ms"

.field public static final CHECK_HEART_RELEASE_INTERVAL:J = 0x1d4c0L

.field public static final CHECK_HEART_TEST_INTERVAL:J = 0x4e20L

.field public static final COMMAND_MIN_DELAYED:I = 0x493e0

.field public static final CONNECT_RELEASE_TIMEOUT:J = 0x9c40L

.field public static final CONNECT_TEST_TIMEOUT:J = 0x1388L

.field private static final DEFAULT_BACKOFF_MS:I = 0xbb8

.field private static final ELECTION_EFFECTIVE_INTERVAL:J = 0x493e0L

.field public static final ELECTION_TIMEOUT:J = 0x927c0L

.field public static final ELECTION_TIME_LENGTH:I = 0x78

.field public static final ELECTION_TIME_MIN:I = 0x528

.field public static final HEART_RELEASE_INTERVAL:J = 0x493e0L

.field public static final HEART_TEST_INTERVAL:J = 0x9c40L

.field public static final HEART_TIMEOUT_CONNECT_RELEASE_INTERVAL:J = 0x4e20L

.field public static final HEART_TIMEOUT_CONNECT_TEST_INTERVAL:J = 0x1388L

.field public static final HOST_CONNECT_RELEASE_INTERVAL:J = 0x3a98L

.field public static final HOST_CONNECT_TEST_INTERVAL:J = 0x1388L

.field public static final INIT_CONNECT_RELEASE_INTERVAL:J = 0x7d0L

.field public static final INIT_CONNECT_TEST_INTERVAL:J = 0x3e8L

.field public static final MIN_CONNECT_INTERVAL:J = 0x7d0L

.field public static final MIN_HEART_RELEASE_INTERVAL:J = 0xea60L

.field public static final MIN_HEART_TEST_INTERVAL:J = 0x2710L

.field public static final MIN_TIMEOUT:I = 0x1b7740

.field public static final NETWORK_ERROR_MAX_CONNECT_RELEASE_INTERVAL:J = 0x1b7740L

.field public static final NETWORK_ERROR_MAX_CONNECT_TEST_INTERVAL:J = 0x927c0L

.field public static final NET_WORK_CHANGE_CONNECT_RELEASE_INTERVAL:J = 0x1388L

.field public static final NET_WORK_CHANGE_CONNECT_TEST_INTERVAL:J = 0x7d0L

.field private static final PREFERENCES:Ljava/lang/String; = "AppStore"

.field private static final PROPERTY_APP_AGOO_COMMAND_UPTIME_TIME:Ljava/lang/String; = "app_agoo_command_uptime_time"

.field private static final PROPERTY_APP_AGOO_MULTIPLEX:Ljava/lang/String; = "app_agoo_multiplex"

.field private static final PROPERTY_APP_DEBUG:Ljava/lang/String; = "app_debug"

.field private static final PROPERTY_APP_DISABLE:Ljava/lang/String; = "app_disable"

.field private static final PROPERTY_APP_KEY:Ljava/lang/String; = "app_key"

.field private static final PROPERTY_APP_LAST_ELECTION_TIME:Ljava/lang/String; = "app_last_election_time"

.field private static final PROPERTY_APP_LOG2FIlE:Ljava/lang/String; = "app_log_to_file"

.field private static final PROPERTY_APP_SECRET:Ljava/lang/String; = "app_sercet"

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final PROPERTY_DEVICE_TOKEN:Ljava/lang/String; = "app_device_token"

.field private static final PROPERTY_DYE_INTERVALMIN:Ljava/lang/String; = "app_dye_interval"

.field private static final PROPERTY_DYE_START_TIME:Ljava/lang/String; = "app_dye_start_time"

.field private static final PROPERTY_ELECTION_SOURCE:Ljava/lang/String; = "app_election_source"

.field private static final PROPERTY_LOGGER_CLASSNAME:Ljava/lang/String; = "logger_class_name"

.field private static final PROPERTY_SUDO_PACK:Ljava/lang/String; = "app_sudo_pack"

.field private static final PROPERTY_SUDO_PACK_TIMEOUT:Ljava/lang/String; = "app_sudo_pack_timeout"

.field private static final PROPERTY_TT_ID:Ljava/lang/String; = "app_tt_id"

.field public static final REMOTE_ELECTION_TIMEOUT:J = 0xea60L

.field public static final SCREEN_ON_CONNECT_RELEASE_INTERVAL:J = 0x1388L

.field public static final SCREEN_ON_CONNECT_TEST_INTERVAL:J = 0x7d0L

.field public static final SYS_ERROR_CONNECT_RELEASE_INTERVAL:J = 0x7530L

.field public static final SYS_ERROR_CONNECT_TEST_INTERVAL:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "Config"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "app_version"

    const/high16 v3, -0x8000

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v2, "app_key"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    const-string v2, "app_sercet"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v2, "app_tt_id"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v2, "app_device_token"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v2, "backoff_ms"

    const/16 v3, 0xbb8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    return-void
.end method

.method public static clearDeviceToken(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 237
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 238
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "app_device_token"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    return-void
.end method

.method public static disableApp(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 266
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 267
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 268
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lorg/android/agoo/util/AppUtil;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 269
    .local v0, appVersion:I
    const-string v3, "app_disable"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 270
    const-string v3, "app_version"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    return-void
.end method

.method public static enableApp(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 276
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 277
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 278
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lorg/android/agoo/util/AppUtil;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 279
    .local v0, appVersion:I
    const-string v3, "app_disable"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 280
    const-string v3, "app_version"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    return-void
.end method

.method private static getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 144
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getAgooSetttingPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 140
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 208
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "app_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAppSecret(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 218
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "app_sercet"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getBackoff(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 178
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "backoff_ms"

    const/16 v2, 0xbb8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCurrentSudo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 127
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "app_sudo_pack"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentSudoTimeout(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 122
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "app_sudo_pack_timeout"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getDeviceToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, -0x8000

    .line 223
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 224
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "app_device_token"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, registrationId:Ljava/lang/String;
    const-string v4, "app_version"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 226
    .local v1, oldVersion:I
    invoke-static {p0}, Lorg/android/agoo/util/AppUtil;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 227
    .local v0, newVersion:I
    if-eq v1, v6, :cond_0

    if-eq v1, v0, :cond_0

    .line 228
    const-string v4, "Config"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App version changed from ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]--->[resetting registration id]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/android/agoo/log/AgooLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {p0}, Lorg/android/agoo/config/Config;->clear(Landroid/content/Context;)V

    .line 231
    const/4 v3, 0x0

    .line 233
    :cond_0
    return-object v3
.end method

.method public static getDye(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v5, 0x0

    .line 309
    if-nez p0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v5

    .line 312
    :cond_1
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 313
    .local v4, storage:Landroid/content/SharedPreferences;
    const-string v6, "app_dye_start_time"

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 314
    .local v2, startTime:J
    const-string v6, "app_dye_start_time"

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 315
    .local v0, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v8, v2, v0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 316
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static getElectionSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 117
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "app_election_source"

    const-string v2, "local"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHostPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 132
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggerClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 150
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "logger_class_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPhonePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 136
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getTtId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 213
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "app_tt_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasDebug(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 203
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "app_debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static hasDisableApp(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/android/agoo/config/Config;->hasDisableApp(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static hasDisableApp(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "context"
    .parameter "pack"
    .parameter "ifEnableApp"

    .prologue
    const/4 v4, 0x0

    const/high16 v6, -0x8000

    .line 285
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 286
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v5, "app_disable"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 287
    .local v0, appDisable:Z
    if-nez p2, :cond_1

    .line 297
    .end local v0           #appDisable:Z
    :cond_0
    :goto_0
    return v0

    .line 290
    .restart local v0       #appDisable:Z
    :cond_1
    const-string v5, "app_version"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 291
    .local v2, oldVersion:I
    invoke-static {p0}, Lorg/android/agoo/util/AppUtil;->getAppVersion(Landroid/content/Context;)I

    move-result v1

    .line 292
    .local v1, newVersion:I
    if-eq v2, v6, :cond_0

    if-eq v2, v1, :cond_0

    .line 293
    invoke-static {p0}, Lorg/android/agoo/config/Config;->enableApp(Landroid/content/Context;)V

    .line 294
    invoke-static {p0}, Lorg/android/agoo/config/Config;->clear(Landroid/content/Context;)V

    move v0, v4

    .line 295
    goto :goto_0
.end method

.method public static hasDisableApp(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "ifEnableApp"

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/android/agoo/config/Config;->hasDisableApp(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasElection(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/high16 v8, -0x8000

    .line 89
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 90
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v6, "app_version"

    const/high16 v7, -0x8000

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 91
    .local v3, oldVersion:I
    invoke-static {p0}, Lorg/android/agoo/util/AppUtil;->getAppVersion(Landroid/content/Context;)I

    move-result v2

    .line 92
    .local v2, newVersion:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "app_last_election_time"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 94
    .local v0, lastTime:J
    if-eq v3, v8, :cond_1

    if-eq v3, v2, :cond_1

    .line 103
    .end local v0           #lastTime:J
    .end local v2           #newVersion:I
    .end local v3           #oldVersion:I
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v5

    .line 97
    .restart local v0       #lastTime:J
    .restart local v2       #newVersion:I
    .restart local v3       #oldVersion:I
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 99
    const/4 v5, 0x0

    goto :goto_0

    .line 101
    .end local v0           #lastTime:J
    .end local v2           #newVersion:I
    .end local v3           #oldVersion:I
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static hasLog2File(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 198
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "app_log_to_file"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static hasMultiplex(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/high16 v10, -0x8000

    const-wide/16 v8, -0x1

    const/4 v6, 0x1

    .line 331
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 332
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v7, "app_agoo_multiplex"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 333
    .local v0, multiplex:Z
    const-string v7, "app_agoo_command_uptime_time"

    invoke-interface {v3, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 334
    .local v4, uptime:J
    const-string v7, "app_version"

    invoke-interface {v3, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 335
    .local v2, oldVersion:I
    invoke-static {p0}, Lorg/android/agoo/util/AppUtil;->getAppVersion(Landroid/content/Context;)I

    move-result v1

    .line 336
    .local v1, newVersion:I
    if-eq v2, v10, :cond_1

    if-eq v2, v1, :cond_1

    .line 337
    invoke-static {p0, v6, v8, v9}, Lorg/android/agoo/config/Config;->setMultiplex(Landroid/content/Context;ZJ)V

    move v0, v6

    .line 343
    .end local v0           #multiplex:Z
    :cond_0
    :goto_0
    return v0

    .line 340
    .restart local v0       #multiplex:Z
    :cond_1
    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v4, v7

    if-gtz v7, :cond_0

    :cond_2
    move v0, v6

    .line 341
    goto :goto_0
.end method

.method public static final resetBackoff(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 174
    const/16 v0, 0xbb8

    invoke-static {p0, v0}, Lorg/android/agoo/config/Config;->setBackoff(Landroid/content/Context;I)V

    .line 175
    return-void
.end method

.method public static setAppInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appKey"
    .parameter "appSecret"
    .parameter "ttId"

    .prologue
    .line 255
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 256
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "app_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    const-string v2, "app_sercet"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    :cond_0
    const-string v2, "app_tt_id"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    return-void
.end method

.method public static final setBackoff(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "backoff"

    .prologue
    .line 183
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 184
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 185
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "backoff_ms"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    return-void
.end method

.method public static setDeviceToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "deviceToken"

    .prologue
    .line 244
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 245
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lorg/android/agoo/util/AppUtil;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 246
    .local v0, appVersion:I
    const-string v3, "Config"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appversion["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]---deviceToken["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 248
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "app_device_token"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v3, "app_version"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    return-void
.end method

.method public static setDye(Landroid/content/Context;JI)V
    .locals 7
    .parameter "context"
    .parameter "startTime"
    .parameter "intervalMin"

    .prologue
    .line 347
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 348
    .local v1, storage:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "app_dye_start_time"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 350
    const-string v2, "app_dye_interval"

    int-to-long v3, p3

    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 352
    return-void
.end method

.method public static setLastElectionTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "lastElectionTime"

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_last_election_time"

    invoke-static {v1, v2, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "Config"

    const-string v2, "setLastElectionTime"

    invoke-static {v1, v2, v0}, Lorg/android/agoo/log/AgooLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setLog(Landroid/content/Context;ZZ)V
    .locals 3
    .parameter "context"
    .parameter "debug"
    .parameter "log2File"

    .prologue
    .line 190
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 191
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "app_debug"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v2, "app_log_to_file"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void
.end method

.method public static setMultiplex(Landroid/content/Context;ZJ)V
    .locals 3
    .parameter "context"
    .parameter "multiplex"
    .parameter "uptime"

    .prologue
    .line 323
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 324
    .local v1, storage:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "app_agoo_multiplex"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 326
    const-string v2, "app_agoo_command_uptime_time"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    return-void
.end method

.method public static setSudo(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "sudo"
    .parameter "timeout"
    .parameter "electionSource"

    .prologue
    .line 108
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "app_sudo_pack"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v2, "app_sudo_pack_timeout"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v2, "app_election_source"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public static setUTClassName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "loggerClassName"

    .prologue
    .line 155
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAgooPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 156
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "logger_class_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method
