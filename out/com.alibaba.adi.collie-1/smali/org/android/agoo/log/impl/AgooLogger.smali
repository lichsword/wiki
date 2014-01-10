.class public Lorg/android/agoo/log/impl/AgooLogger;
.super Ljava/lang/Object;
.source "AgooLogger.java"

# interfaces
.implements Lorg/android/agoo/log/Loggger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/log/impl/AgooLogger$1;,
        Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;
    }
.end annotation


# static fields
.field private static final FILE_LIMETE:I = 0xa00000

.field private static final FILE_NUMBER:I = 0x2


# instance fields
.field private volatile filelogger:Ljava/util/logging/Logger;

.field private volatile mDebug:Z

.field private volatile mLog2File:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, v0}, Lorg/android/agoo/log/impl/AgooLogger;-><init>(ZZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .parameter "debug"
    .parameter "log2File"

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mDebug:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mLog2File:Z

    .line 40
    :try_start_0
    iput-boolean p1, p0, Lorg/android/agoo/log/impl/AgooLogger;->mDebug:Z

    .line 41
    iput-boolean p2, p0, Lorg/android/agoo/log/impl/AgooLogger;->mLog2File:Z

    .line 42
    invoke-direct {p0}, Lorg/android/agoo/log/impl/AgooLogger;->checkLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mDebug:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mLog2File:Z

    .line 46
    :cond_0
    invoke-direct {p0}, Lorg/android/agoo/log/impl/AgooLogger;->init()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-static {p0}, Lorg/android/agoo/log/impl/AgooLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkLog()Z
    .locals 4

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, path:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/_agoo_log_bin_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, agooBin:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const/4 v2, 0x1

    .line 62
    .end local v0           #agooBin:Ljava/io/File;
    .end local v1           #path:Ljava/io/File;
    :goto_0
    return v2

    .line 59
    :catch_0
    move-exception v2

    .line 62
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 352
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, sf:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 355
    .end local v0           #sf:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, t:Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getLogFileName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 226
    .local v0, i:I
    invoke-static {v0}, Lorg/android/agoo/log/impl/AgooLogger;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    const-string v1, "AgooLog"

    .line 230
    :cond_0
    const/16 v3, 0x3a

    const/16 v4, 0x5f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 232
    :catch_0
    move-exception v2

    .line 233
    .local v2, tt:Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getProcessNameForPid(I)Ljava/lang/String;
    .locals 11
    .parameter "pId"

    .prologue
    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cmdline"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, str1:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, str2:Ljava/lang/String;
    const-string v7, ""

    .line 241
    .local v7, str3:Ljava/lang/String;
    const/4 v3, 0x0

    .line 242
    .local v3, localFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 244
    .local v1, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v3           #localFile:Ljava/io/File;
    .local v4, localFile:Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 246
    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .local v2, localBufferedReader:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 247
    .local v8, str4:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 249
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 250
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 251
    .local v0, i:I
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v7

    move-object v1, v2

    .end local v2           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 270
    .end local v0           #i:I
    .end local v4           #localFile:Ljava/io/File;
    .restart local v3       #localFile:Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 272
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 277
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 278
    const/4 v3, 0x0

    .line 281
    .end local v8           #str4:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v7

    .line 254
    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v3           #localFile:Ljava/io/File;
    .restart local v2       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #localFile:Ljava/io/File;
    .restart local v8       #str4:Ljava/lang/String;
    :cond_3
    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 255
    .end local v4           #localFile:Ljava/io/File;
    .restart local v3       #localFile:Ljava/io/File;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 256
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 257
    .end local v2           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    :goto_3
    if-eqz v8, :cond_0

    .line 259
    const-string v9, "Name:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 260
    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 261
    .restart local v0       #i:I
    if-ltz v0, :cond_0

    .line 264
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 265
    goto :goto_0

    .line 257
    .end local v0           #i:I
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v8

    goto :goto_3

    .line 268
    .end local v8           #str4:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 270
    :goto_4
    if-eqz v1, :cond_5

    .line 272
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 277
    :cond_5
    :goto_5
    if-eqz v3, :cond_2

    .line 278
    const/4 v3, 0x0

    goto :goto_2

    .line 270
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v1, :cond_6

    .line 272
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 277
    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 278
    const/4 v3, 0x0

    :cond_7
    throw v9

    .line 273
    .restart local v8       #str4:Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v8           #str4:Ljava/lang/String;
    :catch_2
    move-exception v9

    goto :goto_5

    :catch_3
    move-exception v10

    goto :goto_7

    .line 270
    .end local v3           #localFile:Ljava/io/File;
    .restart local v4       #localFile:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #localFile:Ljava/io/File;
    .restart local v3       #localFile:Ljava/io/File;
    goto :goto_6

    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v3           #localFile:Ljava/io/File;
    .restart local v2       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #localFile:Ljava/io/File;
    .restart local v8       #str4:Ljava/lang/String;
    :catchall_2
    move-exception v9

    move-object v1, v2

    .end local v2           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #localFile:Ljava/io/File;
    .restart local v3       #localFile:Ljava/io/File;
    goto :goto_6

    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v2       #localBufferedReader:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v9

    move-object v1, v2

    .end local v2           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 268
    .end local v3           #localFile:Ljava/io/File;
    .end local v8           #str4:Ljava/lang/String;
    .restart local v4       #localFile:Ljava/io/File;
    :catch_4
    move-exception v9

    move-object v3, v4

    .end local v4           #localFile:Ljava/io/File;
    .restart local v3       #localFile:Ljava/io/File;
    goto :goto_4

    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v3           #localFile:Ljava/io/File;
    .restart local v2       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #localFile:Ljava/io/File;
    .restart local v8       #str4:Ljava/lang/String;
    :catch_5
    move-exception v9

    move-object v1, v2

    .end local v2           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #localFile:Ljava/io/File;
    .restart local v3       #localFile:Ljava/io/File;
    goto :goto_4

    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v2       #localBufferedReader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v9

    move-object v1, v2

    .end local v2           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .parameter "t"

    .prologue
    .line 214
    if-nez p0, :cond_0

    .line 215
    const-string v2, ""

    .line 220
    :goto_0
    return-object v2

    .line 217
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 218
    .local v1, stringWriter:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 219
    .local v0, localPrintWriter:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    .line 68
    :try_start_0
    iget-boolean v3, p0, Lorg/android/agoo/log/impl/AgooLogger;->mLog2File:Z

    if-eqz v3, :cond_0

    .line 69
    invoke-static {}, Lorg/android/agoo/log/impl/AgooLogger;->getLogFileName()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, str1:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, str2:Ljava/lang/String;
    const/4 v0, 0x0

    .line 74
    .local v0, localFileHandler:Ljava/util/logging/FileHandler;
    new-instance v0, Ljava/util/logging/FileHandler;

    .end local v0           #localFileHandler:Ljava/util/logging/FileHandler;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_%g.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0xa0

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v0, v3, v4, v5, v6}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .line 75
    .restart local v0       #localFileHandler:Ljava/util/logging/FileHandler;
    new-instance v3, Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/android/agoo/log/impl/AgooLogger$AgooFormatter;-><init>(Lorg/android/agoo/log/impl/AgooLogger$1;)V

    invoke-virtual {v0, v3}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 76
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    iput-object v3, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    .line 77
    iget-object v3, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 78
    iget-object v3, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0           #localFileHandler:Ljava/util/logging/FileHandler;
    .end local v1           #str1:Ljava/lang/String;
    .end local v2           #str2:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 87
    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mDebug:Z

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mLog2File:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 103
    :try_start_0
    invoke-static {p3}, Lorg/android/agoo/log/UTHelper;->onCaughException(Ljava/lang/Throwable;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lorg/android/agoo/log/impl/AgooLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/log/impl/AgooLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 190
    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mDebug:Z

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mLog2File:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 206
    :try_start_0
    invoke-static {p3}, Lorg/android/agoo/log/UTHelper;->onCaughException(Ljava/lang/Throwable;)V

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lorg/android/agoo/log/impl/AgooLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, paramString2:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/log/impl/AgooLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0           #paramString2:Ljava/lang/String;
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 113
    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mDebug:Z

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mLog2File:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 130
    :try_start_0
    invoke-static {p3}, Lorg/android/agoo/log/UTHelper;->onCaughException(Ljava/lang/Throwable;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lorg/android/agoo/log/impl/AgooLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/log/impl/AgooLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 139
    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mDebug:Z

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mLog2File:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 155
    :try_start_0
    invoke-static {p3}, Lorg/android/agoo/log/UTHelper;->onCaughException(Ljava/lang/Throwable;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lorg/android/agoo/log/impl/AgooLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/log/impl/AgooLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 165
    :try_start_0
    iget-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mDebug:Z

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-boolean v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->mLog2File:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lorg/android/agoo/log/impl/AgooLogger;->filelogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0

    .line 172
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 181
    :try_start_0
    invoke-static {p3}, Lorg/android/agoo/log/UTHelper;->onCaughException(Ljava/lang/Throwable;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lorg/android/agoo/log/impl/AgooLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/log/impl/AgooLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method
