.class Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;
.super Ljava/util/logging/Formatter;
.source "AgooLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/log/impl/AgooLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgooFormatter"
.end annotation


# instance fields
.field private errorStr:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;->errorStr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/android/agoo/log/impl/AgooLogger$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 284
    invoke-direct {p0}, Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;-><init>()V

    return-void
.end method

.method private setThrow(Ljava/util/logging/LogRecord;)V
    .locals 7
    .parameter "logRecord"

    .prologue
    .line 289
    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    .line 290
    .local v5, t:Ljava/lang/Throwable;
    if-nez v5, :cond_1

    .line 314
    .end local v5           #t:Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local v5       #t:Ljava/lang/Throwable;
    :cond_1
    #calls: Lorg/android/agoo/log/impl/AgooLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    invoke-static {v5}, Lorg/android/agoo/log/impl/AgooLogger;->access$100(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;->errorStr:Ljava/lang/String;

    .line 294
    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 295
    .local v0, elements:[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .line 296
    .local v3, str1:Ljava/lang/String;
    const/4 v4, 0x0

    .line 297
    .local v4, str2:Ljava/lang/String;
    const/4 v2, 0x0

    .line 298
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 299
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 300
    const-class v6, Lorg/android/agoo/log/AgooLog;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 301
    const/4 v2, 0x1

    .line 298
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    :cond_3
    if-eqz v2, :cond_2

    .line 304
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-virtual {p1, v3}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1, v4}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v0           #elements:[Ljava/lang/StackTraceElement;
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #str1:Ljava/lang/String;
    .end local v4           #str2:Ljava/lang/String;
    .end local v5           #t:Ljava/lang/Throwable;
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 4
    .parameter "logRecord"

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;->setThrow(Ljava/util/logging/LogRecord;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 321
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/android/agoo/log/impl/AgooLogger;->getDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 324
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    :goto_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 330
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    :cond_0
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->getLocalizedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    const-string v2, "]-->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-virtual {p0, p1}, Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, str3:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    iget-object v2, p0, Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;->errorStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    iget-object v2, p0, Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;->errorStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    .end local v0           #sb:Ljava/lang/StringBuffer;
    .end local v1           #str3:Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 327
    .restart local v0       #sb:Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 343
    .end local v0           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 346
    const/4 v2, 0x0

    goto :goto_1

    .line 319
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
