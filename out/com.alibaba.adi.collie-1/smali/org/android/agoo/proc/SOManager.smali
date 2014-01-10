.class public Lorg/android/agoo/proc/SOManager;
.super Ljava/lang/Object;
.source "SOManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/proc/SOManager$LoadSoResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EX_FILE_NAME:Ljava/lang/String; = "taobaod"

.field private static final LibExtra:Ljava/lang/String; = "test-"

.field private static LibFullName:Ljava/lang/String; = null

.field private static final LibName:Ljava/lang/String; = "SEProtect-"

.field private static final LibVersion:Ljava/lang/String; = "1.3.3"

.field public static SO_LIBRARY_NAME:Ljava/lang/String; = null

.field public static final SO_LIBRARY_NAME2:Ljava/lang/String; = "libcockroach.so"

.field private static final So2FullName:Ljava/lang/String; = "cockroach"

.field private static final checkSumsExe:[Ljava/lang/String;

.field private static final checkSumsSo:[Ljava/lang/String;

.field private static final checkSumsSo2:[Ljava/lang/String;

.field private static dataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appFilesFolder:Ljava/io/File;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    const-string v0, "SEProtect-1.3.3"

    sput-object v0, Lorg/android/agoo/proc/SOManager;->LibFullName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lorg/android/agoo/proc/SOManager;->SO_LIBRARY_NAME:Ljava/lang/String;

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "b441a1499265dbc373d64a2d1c97958e36101337671ad8b6f52aa8d9bdd7e81d"

    aput-object v1, v0, v2

    sput-object v0, Lorg/android/agoo/proc/SOManager;->checkSumsSo:[Ljava/lang/String;

    .line 38
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "2a10e0cdfb83ed0358321c09d0da1ce9f1d524060d8a19671580a599bcb9bcba"

    aput-object v1, v0, v2

    sput-object v0, Lorg/android/agoo/proc/SOManager;->checkSumsExe:[Ljava/lang/String;

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "8e5677fa96dc5dde287126c92487f6b29160799d5d4acfe4d7337adbf80e9f7f"

    aput-object v1, v0, v2

    sput-object v0, Lorg/android/agoo/proc/SOManager;->checkSumsSo2:[Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/android/agoo/proc/SOManager;->dataMap:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/proc/SOManager;->LibFullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/android/agoo/proc/SOManager;->SO_LIBRARY_NAME:Ljava/lang/String;

    .line 59
    sget-object v0, Lorg/android/agoo/proc/SOManager;->dataMap:Ljava/util/HashMap;

    sget-object v1, Lorg/android/agoo/proc/SOManager;->SO_LIBRARY_NAME:Ljava/lang/String;

    sget-object v2, Lorg/android/agoo/proc/SOManager;->checkSumsSo:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/android/agoo/proc/SOManager;->dataMap:Ljava/util/HashMap;

    const-string v1, "taobaod"

    sget-object v2, Lorg/android/agoo/proc/SOManager;->checkSumsExe:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/android/agoo/proc/SOManager;->dataMap:Ljava/util/HashMap;

    const-string v1, "libcockroach.so"

    sget-object v2, Lorg/android/agoo/proc/SOManager;->checkSumsSo2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lorg/android/agoo/proc/SOManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object v0, p0, Lorg/android/agoo/proc/SOManager;->appFilesFolder:Ljava/io/File;

    .line 69
    iput-object p1, p0, Lorg/android/agoo/proc/SOManager;->mContext:Landroid/content/Context;

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/proc/SOManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/proc/SOManager;->appFilesFolder:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "build"
    .parameter "fieldName"

    .prologue
    .line 192
    :try_start_0
    const-class v2, Landroid/os/Build;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 193
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 195
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "Unknown"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/android/agoo/proc/SOManager;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 77
    if-eqz p0, :cond_0

    .line 78
    new-instance v0, Lorg/android/agoo/proc/SOManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/android/agoo/proc/SOManager;-><init>(Landroid/content/Context;)V

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "fileName"

    .prologue
    const/4 v5, 0x0

    .line 203
    iget-object v6, p0, Lorg/android/agoo/proc/SOManager;->appFilesFolder:Ljava/io/File;

    if-nez v6, :cond_0

    move-object v3, v5

    .line 266
    :goto_0
    return-object v3

    .line 207
    :cond_0
    iget-object v6, p0, Lorg/android/agoo/proc/SOManager;->appFilesFolder:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 208
    iget-object v6, p0, Lorg/android/agoo/proc/SOManager;->appFilesFolder:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 210
    :cond_1
    iget-object v6, p0, Lorg/android/agoo/proc/SOManager;->appFilesFolder:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 211
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lorg/android/agoo/proc/SOManager;->appFilesFolder:Ljava/io/File;

    invoke-direct {v3, v6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .local v3, libFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v6}, Lorg/android/agoo/proc/SOManager;->validateSha256(Ljava/lang/String;Ljava/io/FileInputStream;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 215
    const-string v6, "SOManager(LoadFile)"

    const-string v7, "validateSha256 libFile success."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v6

    .line 224
    :goto_1
    new-instance v6, Landroid/os/Build;

    invoke-direct {v6}, Landroid/os/Build;-><init>()V

    const-string v7, "CPU_ABI"

    invoke-static {v6, v7}, Lorg/android/agoo/proc/SOManager;->getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, abi:Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/android/agoo/proc/SOData;->getSoData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 226
    .local v4, sodata:[B
    if-eqz v4, :cond_9

    .line 227
    invoke-direct {p0, p1, v4}, Lorg/android/agoo/proc/SOManager;->validateSha256(Ljava/lang/String;[B)Z

    move-result v6

    if-nez v6, :cond_3

    .line 228
    const-string v6, "SOManager(LoadFile)"

    const-string v7, "validateSha256 sodata bytes fail"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 229
    goto :goto_0

    .line 218
    .end local v0           #abi:Ljava/lang/String;
    .end local v4           #sodata:[B
    :cond_2
    :try_start_1
    const-string v6, "SOManager(LoadFile)"

    const-string v7, "validateSha256 exist libFile fail.We will re copy one."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 231
    .restart local v0       #abi:Ljava/lang/String;
    .restart local v4       #sodata:[B
    :cond_3
    new-instance v3, Ljava/io/File;

    .end local v3           #libFile:Ljava/io/File;
    iget-object v6, p0, Lorg/android/agoo/proc/SOManager;->appFilesFolder:Ljava/io/File;

    invoke-direct {v3, v6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    .restart local v3       #libFile:Ljava/io/File;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 233
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 234
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 236
    :cond_4
    const/4 v1, 0x0

    .line 238
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 239
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    :try_start_3
    array-length v7, v4

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 240
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v6}, Lorg/android/agoo/proc/SOManager;->validateSha256(Ljava/lang/String;Ljava/io/FileInputStream;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 241
    const-string v6, "SOManager(LoadFile)"

    const-string v7, "validateSha256 libFile success."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 253
    if-eqz v2, :cond_b

    .line 255
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 258
    :goto_2
    const/4 v1, 0x0

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 245
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_5
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 246
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 247
    const-string v6, "SOManager(LoadFile)"

    const-string v7, "Delete libFile because validateSha256 libFile fail."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 253
    :cond_6
    if-eqz v2, :cond_a

    .line 255
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 258
    :goto_3
    const/4 v1, 0x0

    .end local v0           #abi:Ljava/lang/String;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #libFile:Ljava/io/File;
    .end local v4           #sodata:[B
    :cond_7
    :goto_4
    move-object v3, v5

    .line 266
    goto/16 :goto_0

    .line 251
    .restart local v0       #abi:Ljava/lang/String;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #libFile:Ljava/io/File;
    .restart local v4       #sodata:[B
    :catch_1
    move-exception v6

    .line 253
    :goto_5
    if-eqz v1, :cond_7

    .line 255
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 258
    :goto_6
    const/4 v1, 0x0

    goto :goto_4

    .line 253
    :catchall_0
    move-exception v5

    :goto_7
    if-eqz v1, :cond_8

    .line 255
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 258
    :goto_8
    const/4 v1, 0x0

    :cond_8
    throw v5

    .line 263
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :cond_9
    const-string v6, "SOManager-LoadFile"

    const-string v7, "Sodata is null."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 256
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_3

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    goto :goto_6

    :catch_5
    move-exception v6

    goto :goto_8

    .line 253
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 251
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_a
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_b
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method private validateAndLoad(Ljava/lang/String;)Lorg/android/agoo/proc/SOManager$LoadSoResult;
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    .line 142
    new-instance v2, Lorg/android/agoo/proc/SOManager$LoadSoResult;

    invoke-direct {v2}, Lorg/android/agoo/proc/SOManager$LoadSoResult;-><init>()V

    .line 146
    .local v2, lsr:Lorg/android/agoo/proc/SOManager$LoadSoResult;
    invoke-direct {p0, p1}, Lorg/android/agoo/proc/SOManager;->loadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 147
    .local v1, libFile:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const-string v3, "SOManager"

    const-string v4, "Call System.load() by SOManager"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v2, v5}, Lorg/android/agoo/proc/SOManager$LoadSoResult;->setLoadBySoManager(Z)V

    .line 155
    invoke-virtual {v2, v5}, Lorg/android/agoo/proc/SOManager$LoadSoResult;->setSuccess(Z)V

    .line 158
    :cond_0
    :goto_0
    return-object v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private validateAndLoadExe(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lorg/android/agoo/proc/SOManager;->loadFile(Ljava/lang/String;)Ljava/io/File;

    .line 188
    return-void
.end method

.method private validateSha256(Ljava/lang/String;Ljava/io/FileInputStream;)Z
    .locals 5
    .parameter "fileName"
    .parameter "fis"

    .prologue
    const/4 v3, 0x0

    .line 103
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v3

    .line 107
    :cond_1
    :try_start_0
    sget-object v4, Lorg/android/agoo/proc/SOManager;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 108
    .local v0, checkSums:[Ljava/lang/String;
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_5

    .line 110
    invoke-static {p2}, Lorg/android/agoo/util/DigestUtil;->sha256ToHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, digest:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    :cond_2
    if-eqz p2, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :goto_1
    const/4 p2, 0x0

    goto :goto_0

    .line 114
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    :try_start_2
    array-length v4, v0

    if-ge v2, v4, :cond_5

    .line 115
    aget-object v4, v0, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    const/4 v3, 0x1

    .line 122
    if-eqz p2, :cond_0

    .line 124
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    :goto_3
    const/4 p2, 0x0

    goto :goto_0

    .line 114
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 122
    .end local v1           #digest:Ljava/lang/String;
    .end local v2           #i:I
    :cond_5
    if-eqz p2, :cond_0

    .line 124
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 127
    :goto_4
    const/4 p2, 0x0

    goto :goto_0

    .line 120
    .end local v0           #checkSums:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 122
    if-eqz p2, :cond_0

    .line 124
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 127
    :goto_5
    const/4 p2, 0x0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v3

    if-eqz p2, :cond_6

    .line 124
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 127
    :goto_6
    const/4 p2, 0x0

    :cond_6
    throw v3

    .line 125
    .restart local v0       #checkSums:[Ljava/lang/String;
    .restart local v1       #digest:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1

    .restart local v2       #i:I
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v1           #digest:Ljava/lang/String;
    .end local v2           #i:I
    :catch_3
    move-exception v4

    goto :goto_4

    .end local v0           #checkSums:[Ljava/lang/String;
    :catch_4
    move-exception v4

    goto :goto_5

    :catch_5
    move-exception v4

    goto :goto_6
.end method

.method private validateSha256(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "fileName"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 84
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v3

    .line 87
    :cond_1
    sget-object v4, Lorg/android/agoo/proc/SOManager;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 88
    .local v0, checkSums:[Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p2}, Lorg/android/agoo/util/DigestUtil;->sha256ToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, digest:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 94
    aget-object v4, v0, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    const/4 v3, 0x1

    goto :goto_0

    .line 93
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public validateAndLoadClient()Lorg/android/agoo/proc/SOManager$LoadSoResult;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/android/agoo/proc/SOManager;->SO_LIBRARY_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/android/agoo/proc/SOManager;->validateAndLoad(Ljava/lang/String;)Lorg/android/agoo/proc/SOManager$LoadSoResult;

    move-result-object v0

    return-object v0
.end method

.method public validateAndLoadCockroach()Lorg/android/agoo/proc/SOManager$LoadSoResult;
    .locals 1

    .prologue
    .line 138
    const-string v0, "libcockroach.so"

    invoke-direct {p0, v0}, Lorg/android/agoo/proc/SOManager;->validateAndLoad(Ljava/lang/String;)Lorg/android/agoo/proc/SOManager$LoadSoResult;

    move-result-object v0

    return-object v0
.end method

.method public validateAndLoadExeTaobao()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "taobaod"

    invoke-direct {p0, v0}, Lorg/android/agoo/proc/SOManager;->validateAndLoadExe(Ljava/lang/String;)V

    .line 163
    return-void
.end method
