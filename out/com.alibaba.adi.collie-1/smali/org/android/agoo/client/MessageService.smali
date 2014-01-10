.class Lorg/android/agoo/client/MessageService;
.super Ljava/lang/Object;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/client/MessageService$MessageDBHelper;
    }
.end annotation


# static fields
.field private static final BODY_CODE:Ljava/lang/String; = "body_code"

.field private static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field private static final DATABASE_NAME:Ljava/lang/String; = "message_db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final ID:Ljava/lang/String; = "id"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_TARGET_TIME:Ljava/lang/String; = "target_time"

.field private static final MESSAGE_TARGET_TIME_INTERVAL:Ljava/lang/String; = "interval"

.field private static final NOTICE:I = 0x1

.field private static final NOTIFY:Ljava/lang/String; = "notify"

.field private static final NOT_NOTICE:I = 0x0

.field private static final REPORT:Ljava/lang/String; = "report"

.field private static final SPACE_NAME:Ljava/lang/String; = "message"

.field private static final STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "MessageService"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static volatile singleton:Lorg/android/agoo/client/MessageService;


# instance fields
.field private context:Landroid/content/Context;

.field private volatile sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lorg/android/agoo/client/MessageService;->singleton:Lorg/android/agoo/client/MessageService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/client/MessageService;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 45
    iput-object p1, p0, Lorg/android/agoo/client/MessageService;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Lorg/android/agoo/client/MessageService$MessageDBHelper;

    invoke-direct {v0, p1}, Lorg/android/agoo/client/MessageService$MessageDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/android/agoo/client/MessageService;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 47
    return-void
.end method

.method private addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII)V
    .locals 7
    .parameter "messageId"
    .parameter "messageText"
    .parameter "type"
    .parameter "state"
    .parameter "fromTime"
    .parameter "toTime"
    .parameter "notify"

    .prologue
    .line 113
    const-string v3, "MessageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add sqlite3--->["

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

    .line 114
    const/4 v0, -0x1

    .line 115
    .local v0, bodyHash:I
    const/4 v2, 0x0

    .line 116
    .local v2, report:I
    const/4 v1, 0x0

    .line 118
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    const-string p2, ""

    .line 120
    const/4 v0, -0x1

    .line 125
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const-string p3, ""

    .line 128
    :cond_0
    iget-object v3, p0, Lorg/android/agoo/client/MessageService;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 129
    const-string v3, "INSERT INTO message VALUES(?,?,?,?,?,?,?,?,?,date(\'now\'))"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object p3, v4, v5

    const/4 v5, 0x7

    aput-object p2, v4, v5

    const/16 v5, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    if-eqz v1, :cond_1

    .line 138
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    const/4 v1, 0x0

    .line 145
    :cond_1
    :goto_1
    return-void

    .line 123
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v3

    .line 137
    if-eqz v1, :cond_1

    .line 138
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 139
    const/4 v1, 0x0

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v3

    .line 137
    if-eqz v1, :cond_3

    .line 138
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 139
    const/4 v1, 0x0

    .line 143
    :cond_3
    :goto_2
    throw v3

    .line 141
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public static declared-synchronized getSingleton(Landroid/content/Context;)Lorg/android/agoo/client/MessageService;
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const-class v1, Lorg/android/agoo/client/MessageService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/android/agoo/client/MessageService;->singleton:Lorg/android/agoo/client/MessageService;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lorg/android/agoo/client/MessageService;

    invoke-direct {v0, p0}, Lorg/android/agoo/client/MessageService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/android/agoo/client/MessageService;->singleton:Lorg/android/agoo/client/MessageService;

    .line 53
    :cond_0
    sget-object v0, Lorg/android/agoo/client/MessageService;->singleton:Lorg/android/agoo/client/MessageService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTargetMessageTime(JI)J
    .locals 2
    .parameter "targetTime"
    .parameter "intervalMinutes"

    .prologue
    .line 283
    mul-int/lit8 v0, p3, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/android/agoo/util/MurmurHashUtil;->getRandom(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private sendAtTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 13
    .parameter "messageId"
    .parameter "message"
    .parameter "type"
    .parameter "targetTime"
    .parameter "intervalMinutes"
    .parameter "notify"

    .prologue
    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v9, p4, v9

    if-gez v9, :cond_0

    .line 323
    const-string v9, "MessageService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendAtTime messageId["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] targetTime["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p4 .. p5}, Lorg/android/agoo/util/DataUtil;->time2String(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] <=currentTime["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/android/agoo/util/DataUtil;->time2String(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 330
    :cond_0
    move-wide/from16 v0, p4

    move/from16 v2, p6

    invoke-direct {p0, v0, v1, v2}, Lorg/android/agoo/client/MessageService;->getTargetMessageTime(JI)J

    move-result-wide v7

    .line 331
    .local v7, time:J
    const-string v9, "MessageService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendAtTime message---->["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]serverTime--->["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p4 .. p5}, Lorg/android/agoo/util/DataUtil;->time2String(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " min]targetTime---->["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7, v8}, Lorg/android/agoo/util/DataUtil;->time2String(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v4, extras:Landroid/os/Bundle;
    const-string v9, "body"

    invoke-virtual {v4, v9, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v9, "id"

    invoke-virtual {v4, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v9, "type"

    move-object/from16 v0, p3

    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v9, "local"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    const-string v9, "notify"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v9, p0, Lorg/android/agoo/client/MessageService;->context:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 345
    .local v3, alarmManager:Landroid/app/AlarmManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v5, messageIntent:Landroid/content/Intent;
    const-string v9, "org.agoo.android.intent.action.RECEIVE"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v9, p0, Lorg/android/agoo/client/MessageService;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {v5, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 349
    iget-object v9, p0, Lorg/android/agoo/client/MessageService;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/high16 v11, 0x800

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 352
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const/4 v9, 0x1

    invoke-virtual {v3, v9, v7, v8, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "messageId"
    .parameter "messageText"
    .parameter "type"
    .parameter "notify"

    .prologue
    .line 107
    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/android/agoo/client/MessageService;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 108
    return-void
.end method

.method public deleteExpireTimeMessage()V
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lorg/android/agoo/client/MessageService;->deleteExpireTimeMessage(I)V

    .line 149
    return-void
.end method

.method public deleteExpireTimeMessage(I)V
    .locals 5
    .parameter "day"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x7

    .line 158
    .local v2, tmpDay:I
    const/4 v3, 0x7

    if-le p1, v3, :cond_0

    .line 159
    move v2, p1

    .line 161
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/android/agoo/client/MessageService;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from message where create_time< date(\'now\',\'-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " day\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    const/4 v0, 0x0

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "MessageService"

    const-string v4, "sql Throwable"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 171
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    .end local v1           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 169
    if-eqz v0, :cond_2

    .line 170
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 171
    const/4 v0, 0x0

    .line 175
    :cond_2
    :goto_1
    throw v3

    .line 173
    :catch_1
    move-exception v3

    goto :goto_0

    .restart local v1       #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v1           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public handleMessageAtTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .parameter "messageId"
    .parameter "messageText"
    .parameter "type"
    .parameter "time"
    .parameter "notify"

    .prologue
    .line 295
    const-string v1, "_"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, times:[Ljava/lang/String;
    const-wide/16 v6, -0x1

    .line 297
    .local v6, targetTime:J
    const/4 v8, -0x1

    .line 298
    .local v8, intervalMinutes:I
    array-length v1, v11

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 300
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v11, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 301
    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 306
    :cond_0
    :goto_0
    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v8, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-gez v1, :cond_2

    .line 307
    :cond_1
    const-string v1, "MessageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessageAtTime messageId ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  targetTime["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7}, Lorg/android/agoo/util/DataUtil;->time2String(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] <=currentTime["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/android/agoo/util/DataUtil;->time2String(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    move/from16 v0, p5

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/android/agoo/client/MessageService;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-ltz v1, :cond_3

    .line 313
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lorg/android/agoo/client/MessageService;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJII)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v9, p5

    .line 315
    invoke-direct/range {v2 .. v9}, Lorg/android/agoo/client/MessageService;->sendAtTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 317
    :cond_3
    return-void

    .line 302
    :catch_0
    move-exception v10

    .line 303
    .local v10, e:Ljava/lang/Throwable;
    const-string v1, "MessageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to Integer error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public hasMessageDuplicate(Ljava/lang/String;I)Z
    .locals 6
    .parameter "messageId"
    .parameter "bodyHashCode"

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 205
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 207
    .local v0, bf:Z
    :try_start_0
    iget-object v3, p0, Lorg/android/agoo/client/MessageService;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 208
    const-string v3, "select count(1) from message where id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 218
    :cond_0
    if-eqz v1, :cond_1

    .line 219
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    const/4 v1, 0x0

    .line 222
    :cond_1
    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 224
    const/4 v2, 0x0

    .line 230
    :cond_2
    :goto_0
    return v0

    .line 215
    :catch_0
    move-exception v3

    .line 218
    if-eqz v1, :cond_3

    .line 219
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    const/4 v1, 0x0

    .line 222
    :cond_3
    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 224
    const/4 v2, 0x0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v3

    .line 218
    if-eqz v1, :cond_4

    .line 219
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    const/4 v1, 0x0

    .line 222
    :cond_4
    if-eqz v2, :cond_5

    .line 223
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 224
    const/4 v2, 0x0

    .line 228
    :cond_5
    :goto_1
    throw v3

    .line 226
    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public notice(Ljava/lang/String;)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/client/MessageService;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 183
    const-string v2, "update message set state=1 where id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    const/4 v0, 0x0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "MessageService"

    const-string v3, "sql Throwable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 194
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    .end local v1           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 192
    if-eqz v0, :cond_1

    .line 193
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 194
    const/4 v0, 0x0

    .line 198
    :cond_1
    :goto_1
    throw v2

    .line 196
    :catch_1
    move-exception v2

    goto :goto_0

    .restart local v1       #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    goto :goto_0

    .end local v1           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public reloadMessageAtTime()V
    .locals 13

    .prologue
    .line 234
    const-string v0, "MessageService"

    const-string v10, "reloadMessageAtTime:start"

    invoke-static {v0, v10}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v9, 0x0

    .line 236
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 238
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/client/MessageService;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 239
    const-string v0, "delete from message where create_time< date(\'now\',\'-7 day\')"

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    const-string v0, "select id,message,type,target_time,interval,notify from message where state= ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {v9, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, messageId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 250
    .local v2, message:Ljava/lang/String;
    const/4 v3, 0x0

    .line 251
    .local v3, type:Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 252
    .local v4, targetTime:J
    const/4 v6, -0x1

    .line 253
    .local v6, intervalMinutes:I
    const/4 v7, -0x1

    .line 254
    .local v7, notify:I
    if-eqz v8, :cond_2

    .line 255
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 260
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 261
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object v0, p0

    .line 262
    invoke-direct/range {v0 .. v7}, Lorg/android/agoo/client/MessageService;->sendAtTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    .end local v1           #messageId:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #targetTime:J
    .end local v6           #intervalMinutes:I
    .end local v7           #notify:I
    :catch_0
    move-exception v0

    .line 268
    if-eqz v8, :cond_0

    .line 269
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 270
    const/4 v8, 0x0

    .line 272
    :cond_0
    if-eqz v9, :cond_1

    .line 273
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 279
    :cond_1
    :goto_1
    const-string v0, "MessageService"

    const-string v10, "reloadMessageAtTime:end"

    invoke-static {v0, v10}, Lorg/android/agoo/log/AgooLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void

    .line 268
    .restart local v1       #messageId:Ljava/lang/String;
    .restart local v2       #message:Ljava/lang/String;
    .restart local v3       #type:Ljava/lang/String;
    .restart local v4       #targetTime:J
    .restart local v6       #intervalMinutes:I
    .restart local v7       #notify:I
    :cond_2
    if-eqz v8, :cond_3

    .line 269
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 270
    const/4 v8, 0x0

    .line 272
    :cond_3
    if-eqz v9, :cond_1

    .line 273
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 275
    :catch_1
    move-exception v0

    goto :goto_1

    .line 267
    .end local v1           #messageId:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #targetTime:J
    .end local v6           #intervalMinutes:I
    .end local v7           #notify:I
    :catchall_0
    move-exception v0

    .line 268
    if-eqz v8, :cond_4

    .line 269
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 270
    const/4 v8, 0x0

    .line 272
    :cond_4
    if-eqz v9, :cond_5

    .line 273
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 277
    :cond_5
    :goto_2
    throw v0

    .line 275
    :catch_2
    move-exception v10

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "messageId"
    .parameter "taskId"
    .parameter "reportStr"
    .parameter "source"

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, bf:Z
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 358
    const/4 v3, -0x1

    .line 360
    .local v3, report:I
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 361
    const/4 v5, -0x1

    if-lt v3, v5, :cond_1

    .line 362
    new-instance v4, Lorg/android/agoo/net/mtop/MtopRequest;

    invoke-direct {v4}, Lorg/android/agoo/net/mtop/MtopRequest;-><init>()V

    .line 363
    .local v4, request:Lorg/android/agoo/net/mtop/MtopRequest;
    const-string v5, "mtop.push.msg.report"

    invoke-virtual {v4, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setApi(Ljava/lang/String;)V

    .line 364
    const-string v5, "1.0"

    invoke-virtual {v4, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setV(Ljava/lang/String;)V

    .line 365
    const-string v5, "messageId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    const-string v5, "mesgStatus"

    const-string v6, "4"

    invoke-virtual {v4, v5, v6}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 368
    const-string v5, "taskId"

    invoke-virtual {v4, v5, p2}, Lorg/android/agoo/net/mtop/MtopRequest;->putParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    :cond_0
    iget-object v5, p0, Lorg/android/agoo/client/MessageService;->context:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/client/BaseRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/android/agoo/net/mtop/MtopRequest;->setDeviceId(Ljava/lang/String;)V

    .line 371
    new-instance v1, Lorg/android/agoo/net/mtop/MtopSyncClientV3;

    invoke-direct {v1}, Lorg/android/agoo/net/mtop/MtopSyncClientV3;-><init>()V

    .line 372
    .local v1, client:Lorg/android/agoo/net/mtop/IMtopSynClient;
    iget-object v5, p0, Lorg/android/agoo/client/MessageService;->context:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/config/Config;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setDefaultAppkey(Ljava/lang/String;)V

    .line 373
    iget-object v5, p0, Lorg/android/agoo/client/MessageService;->context:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/config/Config;->getAppSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setDefaultAppSecret(Ljava/lang/String;)V

    .line 374
    iget-object v5, p0, Lorg/android/agoo/client/MessageService;->context:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/client/AgooSettings;->getPullUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/android/agoo/net/mtop/IMtopSynClient;->setBaseUrl(Ljava/lang/String;)V

    .line 375
    iget-object v5, p0, Lorg/android/agoo/client/MessageService;->context:Landroid/content/Context;

    invoke-interface {v1, v5, v4}, Lorg/android/agoo/net/mtop/IMtopSynClient;->getV3(Landroid/content/Context;Lorg/android/agoo/net/mtop/MtopRequest;)Lorg/android/agoo/net/mtop/Result;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    const/4 v0, 0x1

    .line 382
    .end local v1           #client:Lorg/android/agoo/net/mtop/IMtopSynClient;
    .end local v3           #report:I
    .end local v4           #request:Lorg/android/agoo/net/mtop/MtopRequest;
    :cond_1
    :goto_0
    return v0

    .line 378
    .restart local v3       #report:I
    :catch_0
    move-exception v2

    .line 379
    .local v2, e:Ljava/lang/Throwable;
    const-string v5, "MessageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] to Integer error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lorg/android/agoo/log/AgooLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
