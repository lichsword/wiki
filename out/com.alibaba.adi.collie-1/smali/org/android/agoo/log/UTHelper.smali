.class public Lorg/android/agoo/log/UTHelper;
.super Ljava/lang/Object;
.source "UTHelper.java"


# static fields
.field private static final AGOO_EVENT_APP_PING:Ljava/lang/String; = "agoo_app_ping"

.field private static final AGOO_EVENT_CONNECT:Ljava/lang/String; = "agoo_connect"

.field private static final AGOO_EVENT_CONNECT_TIMEOUT:Ljava/lang/String; = "agoo_connect_timeout"

.field private static final AGOO_EVENT_ELECTION:Ljava/lang/String; = "agoo_election"

.field private static final AGOO_EVENT_ELECTION_ERROR:Ljava/lang/String; = "agoo_election_error"

.field private static final AGOO_EVENT_ID:I = 0x1051b9cd

.field private static final AGOO_EVENT_MESSAGE:Ljava/lang/String; = "agoo_message"

.field private static final AGOO_EVENT_MESSAGE_BODY_NULL:Ljava/lang/String; = "agoo_message_body_null"

.field private static final AGOO_EVENT_MESSAGE_DECRYPTED_ERROR:Ljava/lang/String; = "agoo_message_decrypted_error"

.field private static final AGOO_EVENT_MESSAGE_HTTP_ERROR:Ljava/lang/String; = "agoo_message_http_error"

.field private static final AGOO_EVENT_MESSAGE_NOTIFY:Ljava/lang/String; = "agoo_event_message_notify"

.field private static final AGOO_EVENT_MESSAGE_PARSE_ERROR:Ljava/lang/String; = "agoo_message_parse_error"

.field private static final AGOO_EVENT_MESSAGE_SIZE_LARGE:Ljava/lang/String; = "agoo_message_size_large"

.field private static final AGOO_EVENT_REGISTER:Ljava/lang/String; = "agoo_register"

.field private static final AGOO_EVENT_REGISTER_ERROR:Ljava/lang/String; = "agoo_register_error"

.field private static final AGOO_EVENT_SERVICE:Ljava/lang/String; = "agoo_service"

.field private static final AGOO_EVENT_SERVICE_ERROR_START:Ljava/lang/String; = "agoo_service_error_start"

.field private static final AGOO_EVENT_SERVICE_SEC_ERROR_START:Ljava/lang/String; = "agoo_ervice_sec_error_start"

.field private static final AGOO_EVENT_SYSFILE_ERROR:Ljava/lang/String; = "agoo_sysfile_error"

.field private static final AGOO_EVENT_UNREGISTER:Ljava/lang/String; = "agoo_unregister"

.field private static final AGOO_EVNET_ELECTION_REGISTER:Ljava/lang/String; = "agoo_election_register"

.field private static volatile isStrartUT:Z

.field private static volatile usertrace:Lorg/android/agoo/log/UT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lorg/android/agoo/log/UTHelper;->isStrartUT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static agooAppPing(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "appPack"

    .prologue
    .line 93
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 95
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_app_ping"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static agooServiceLog(Landroid/content/Context;J)V
    .locals 10
    .parameter "context"
    .parameter "serviceStartTime"

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, deviceToken:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v7, v0, p1

    .line 113
    .local v7, time:J
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 114
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v5, v9

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v6           #deviceToken:Ljava/lang/String;
    .end local v7           #time:J
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static agooServiceSecStartLog(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 126
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 128
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_ervice_sec_error_start"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static agooServiceSysStartLog(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 139
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 141
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_service_error_start"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static connectlog(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "connectTime"
    .parameter "closeMethod"

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/android/agoo/log/UTHelper;->connectlog(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public static connectlog(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "connectTime"
    .parameter "closeMethod"
    .parameter "nginxCode"

    .prologue
    .line 380
    const-wide/16 v7, 0x0

    .line 381
    .local v7, time:J
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v7, v0, p1

    .line 384
    :cond_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 386
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_1

    .line 387
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_connect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v5, v9

    const/4 v9, 0x1

    aput-object p3, v5, v9

    const/4 v9, 0x2

    aput-object p4, v5, v9

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v6           #deviceToken:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static electionErrorLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "errorLog"

    .prologue
    .line 279
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 281
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 282
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_election_error"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static electionLog(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 9
    .parameter "context"
    .parameter "sudoPack"
    .parameter "agooVersion"
    .parameter "installTime"

    .prologue
    .line 293
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 295
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_election"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v6, v5, v3

    const/4 v3, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v6           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static electionRegisterLog(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 9
    .parameter "context"
    .parameter "pack"
    .parameter "agooVersion"
    .parameter "installTime"

    .prologue
    .line 258
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 260
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_election_register"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v6, v5, v3

    const/4 v3, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v6           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getUtdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 83
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    invoke-interface {v0, p0}, Lorg/android/agoo/log/UT;->getUtdId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hostErrorLog(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "code"
    .parameter "error"

    .prologue
    .line 398
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 400
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_connect"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v5, v4

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v6           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static messageBodyNullErrorlog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 233
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 235
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 236
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_message_body_null"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static messageCheckEquiplog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "agooEvent"

    .prologue
    .line 434
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 436
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 437
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    invoke-interface {v1, v2, p1, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static messageEncryptedErrorlog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "messageId"
    .parameter "messageBody"

    .prologue
    .line 246
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 248
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_message_decrypted_error"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v6, v5, v3

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method

.method public static messageHttpErrorLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "errorCode"

    .prologue
    .line 199
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 201
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_message_http_error"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static messageLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 185
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 187
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_message"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static messageNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "messageId"
    .parameter "notify"

    .prologue
    .line 166
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 168
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_event_message_notify"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v6, v5, v3

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v6           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static messageParseErrorLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "error"

    .prologue
    .line 219
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 221
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_message_parse_error"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static messageSizeLarge(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 152
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 154
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 155
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_message_size_large"

    const-string v4, "5"

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static onCaughException(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 63
    :try_start_0
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    invoke-interface {v0, p0}, Lorg/android/agoo/log/UT;->onCaughException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 410
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 412
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 413
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_register"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static registerErrorLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "errorLog"

    .prologue
    .line 334
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 336
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 337
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_register_error"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static startLog(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 43
    :try_start_0
    sget-boolean v3, Lorg/android/agoo/log/UTHelper;->isStrartUT:Z

    if-eqz v3, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, appkey:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getTtId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, ttId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, appSecret:Ljava/lang/String;
    invoke-static {}, Lorg/android/agoo/log/UTFactroy;->getInstance()Lorg/android/agoo/log/UTFactroy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/android/agoo/log/UTFactroy;->getLogger(Landroid/content/Context;)Lorg/android/agoo/log/UT;

    move-result-object v3

    sput-object v3, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    .line 53
    sget-object v3, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    invoke-interface {v3, p0, v1, v0, v2}, Lorg/android/agoo/log/UT;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x1

    sput-boolean v3, Lorg/android/agoo/log/UTHelper;->isStrartUT:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v0           #appSecret:Ljava/lang/String;
    .end local v1           #appkey:Ljava/lang/String;
    .end local v2           #ttId:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static stopLog(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    :try_start_0
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    invoke-interface {v0, p0}, Lorg/android/agoo/log/UT;->stop(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static sysFileErrorLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "errorLog"

    .prologue
    .line 315
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 317
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 318
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_sysfile_error"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static timeoutLog(Landroid/content/Context;JJ)V
    .locals 8
    .parameter "context"
    .parameter "timeout"
    .parameter "connectTime"

    .prologue
    .line 354
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 356
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v0, :cond_0

    .line 357
    sget-object v0, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_connect_timeout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v6           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static unregister(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 422
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/config/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {p0}, Lorg/android/agoo/log/UTHelper;->startLog(Landroid/content/Context;)V

    .line 424
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    if-eqz v1, :cond_0

    .line 425
    sget-object v1, Lorg/android/agoo/log/UTHelper;->usertrace:Lorg/android/agoo/log/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_unregister"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/log/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v0           #deviceToken:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v1

    goto :goto_0
.end method
