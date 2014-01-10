.class public Lcom/taobao/security/proc/SOManager;
.super Ljava/lang/Object;
.source "SOManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/security/proc/SOManager$LoadSoResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EX_FILE_NAME:Ljava/lang/String; = "taobaod"

.field private static final LibExtra:Ljava/lang/String; = "test-"

.field private static LibFullName:Ljava/lang/String; = null

.field private static final LibName:Ljava/lang/String; = "SEProtect-"

.field private static final LibVersion:Ljava/lang/String; = "1.3.2"

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
    const-string v0, "SEProtect-1.3.2"

    sput-object v0, Lcom/taobao/security/proc/SOManager;->LibFullName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/security/proc/SOManager;->SO_LIBRARY_NAME:Ljava/lang/String;

    .line 35
    new-array v0, v3, [Ljava/lang/String;

    .line 36
    const-string v1, "0b8c7488aa673208769a38c347b79a38cb10ba10388b9b73d8f494445dc1d79f"

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Lcom/taobao/security/proc/SOManager;->checkSumsSo:[Ljava/lang/String;

    .line 39
    new-array v0, v3, [Ljava/lang/String;

    .line 40
    const-string v1, "ccef294871f527fab56be991f15295d78b7f6047ba55154d015baa7e3a231d95"

    aput-object v1, v0, v2

    .line 39
    sput-object v0, Lcom/taobao/security/proc/SOManager;->checkSumsExe:[Ljava/lang/String;

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    .line 44
    const-string v1, "66d63631053e76f8c2ee862fed371eaa217974e34c76eed1b75c7645233b6b60"

    aput-object v1, v0, v2

    .line 43
    sput-object v0, Lcom/taobao/security/proc/SOManager;->checkSumsSo2:[Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/security/proc/SOManager;->dataMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/taobao/security/proc/SOManager;->LibFullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/security/proc/SOManager;->SO_LIBRARY_NAME:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/taobao/security/proc/SOManager;->dataMap:Ljava/util/HashMap;

    sget-object v1, Lcom/taobao/security/proc/SOManager;->SO_LIBRARY_NAME:Ljava/lang/String;

    sget-object v2, Lcom/taobao/security/proc/SOManager;->checkSumsSo:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/taobao/security/proc/SOManager;->dataMap:Ljava/util/HashMap;

    const-string v1, "taobaod"

    sget-object v2, Lcom/taobao/security/proc/SOManager;->checkSumsExe:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/taobao/security/proc/SOManager;->dataMap:Ljava/util/HashMap;

    const-string v1, "libcockroach.so"

    sget-object v2, Lcom/taobao/security/proc/SOManager;->checkSumsSo2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/taobao/security/proc/SOManager;->mContext:Landroid/content/Context;

    .line 68
    iput-object v1, p0, Lcom/taobao/security/proc/SOManager;->appFilesFolder:Ljava/io/File;

    .line 71
    iput-object p1, p0, Lcom/taobao/security/proc/SOManager;->mContext:Landroid/content/Context;

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/taobao/security/proc/SOManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/security/proc/SOManager;->appFilesFolder:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "build"
    .parameter "fieldName"

    .prologue
    .line 197
    :try_start_0
    const-class v2, Landroid/os/Build;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 198
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 200
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, ex:Ljava/lang/Throwable;
    const-string v2, "Unknown"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/security/proc/SOManager;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 80
    if-eqz p0, :cond_0

    .line 81
    new-instance v0, Lcom/taobao/security/proc/SOManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/security/proc/SOManager;-><init>(Landroid/content/Context;)V

    .line 83
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

    .line 208
    iget-object v6, p0, Lcom/taobao/security/proc/SOManager;->appFilesFolder:Ljava/io/File;

    if-nez v6, :cond_0

    move-object v3, v5

    .line 272
    :goto_0
    return-object v3

    .line 212
    :cond_0
    iget-object v6, p0, Lcom/taobao/security/proc/SOManager;->appFilesFolder:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 213
    iget-object v6, p0, Lcom/taobao/security/proc/SOManager;->appFilesFolder:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 215
    :cond_1
    iget-object v6, p0, Lcom/taobao/security/proc/SOManager;->appFilesFolder:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 216
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/taobao/security/proc/SOManager;->appFilesFolder:Ljava/io/File;

    invoke-direct {v3, v6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v3, libFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 219
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v6}, Lcom/taobao/security/proc/SOManager;->validateSha256(Ljava/lang/String;Ljava/io/FileInputStream;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    const-string v6, "SOManager(LoadFile)"

    const-string v7, "validateSha256 libFile success."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v6

    .line 229
    :goto_1
    new-instance v6, Landroid/os/Build;

    invoke-direct {v6}, Landroid/os/Build;-><init>()V

    const-string v7, "CPU_ABI"

    invoke-static {v6, v7}, Lcom/taobao/security/proc/SOManager;->getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, abi:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/taobao/security/proc/SOData;->getSoData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 231
    .local v4, sodata:[B
    if-eqz v4, :cond_9

    .line 232
    invoke-direct {p0, p1, v4}, Lcom/taobao/security/proc/SOManager;->validateSha256(Ljava/lang/String;[B)Z

    move-result v6

    if-nez v6, :cond_3

    .line 233
    const-string v6, "SOManager(LoadFile)"

    const-string v7, "validateSha256 sodata bytes fail"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 234
    goto :goto_0

    .line 223
    .end local v0           #abi:Ljava/lang/String;
    .end local v4           #sodata:[B
    :cond_2
    :try_start_1
    const-string v6, "SOManager(LoadFile)"

    .line 224
    const-string v7, "validateSha256 exist libFile fail.We will re copy one."

    .line 223
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 236
    .restart local v0       #abi:Ljava/lang/String;
    .restart local v4       #sodata:[B
    :cond_3
    new-instance v3, Ljava/io/File;

    .end local v3           #libFile:Ljava/io/File;
    iget-object v6, p0, Lcom/taobao/security/proc/SOManager;->appFilesFolder:Ljava/io/File;

    invoke-direct {v3, v6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .restart local v3       #libFile:Ljava/io/File;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 238
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 239
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 241
    :cond_4
    const/4 v1, 0x0

    .line 243
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 244
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    :try_start_3
    array-length v7, v4

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 245
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v6}, Lcom/taobao/security/proc/SOManager;->validateSha256(Ljava/lang/String;Ljava/io/FileInputStream;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 246
    const-string v6, "SOManager(LoadFile)"

    .line 247
    const-string v7, "validateSha256 libFile success."

    .line 246
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8

    .line 259
    if-eqz v2, :cond_a

    .line 261
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 264
    :goto_2
    const/4 v1, 0x0

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 250
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_5
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 251
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 252
    const-string v6, "SOManager(LoadFile)"

    .line 253
    const-string v7, "Delete libFile because validateSha256 libFile fail."

    .line 252
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    .line 259
    :cond_6
    if-eqz v2, :cond_7

    .line 261
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .end local v0           #abi:Ljava/lang/String;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #libFile:Ljava/io/File;
    .end local v4           #sodata:[B
    :cond_7
    :goto_3
    move-object v3, v5

    .line 272
    goto/16 :goto_0

    .line 256
    .restart local v0       #abi:Ljava/lang/String;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #libFile:Ljava/io/File;
    .restart local v4       #sodata:[B
    :catch_1
    move-exception v6

    .line 259
    :goto_4
    if-eqz v1, :cond_7

    .line 261
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 264
    :goto_5
    const/4 v1, 0x0

    goto :goto_3

    .line 257
    :catch_2
    move-exception v6

    .line 259
    :goto_6
    if-eqz v1, :cond_7

    .line 261
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 264
    :goto_7
    const/4 v1, 0x0

    goto :goto_3

    .line 258
    :catchall_0
    move-exception v5

    .line 259
    :goto_8
    if-eqz v1, :cond_8

    .line 261
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    .line 264
    :goto_9
    const/4 v1, 0x0

    .line 266
    :cond_8
    throw v5

    .line 269
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :cond_9
    const-string v6, "SOManager-LoadFile"

    const-string v7, "Sodata is null."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 262
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    goto :goto_2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    goto :goto_5

    :catch_5
    move-exception v6

    goto :goto_7

    :catch_6
    move-exception v6

    goto :goto_9

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    goto :goto_3

    .line 258
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 257
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 256
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_a
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method private validateAndLoad(Ljava/lang/String;)Lcom/taobao/security/proc/SOManager$LoadSoResult;
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    .line 145
    new-instance v2, Lcom/taobao/security/proc/SOManager$LoadSoResult;

    invoke-direct {v2}, Lcom/taobao/security/proc/SOManager$LoadSoResult;-><init>()V

    .line 149
    .local v2, lsr:Lcom/taobao/security/proc/SOManager$LoadSoResult;
    invoke-direct {p0, p1}, Lcom/taobao/security/proc/SOManager;->loadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 150
    .local v1, libFile:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const-string v3, "SOManager"

    const-string v4, "Call System.load() by SOManager"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v2, v5}, Lcom/taobao/security/proc/SOManager$LoadSoResult;->setLoadBySoManager(Z)V

    .line 158
    invoke-virtual {v2, v5}, Lcom/taobao/security/proc/SOManager$LoadSoResult;->setSuccess(Z)V

    .line 161
    :cond_0
    :goto_0
    return-object v2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private validateAndLoadExe(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/taobao/security/proc/SOManager;->loadFile(Ljava/lang/String;)Ljava/io/File;

    .line 193
    return-void
.end method

.method private validateSha256(Ljava/lang/String;Ljava/io/FileInputStream;)Z
    .locals 5
    .parameter "fileName"
    .parameter "fis"

    .prologue
    const/4 v3, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v3

    .line 110
    :cond_1
    :try_start_0
    sget-object v4, Lcom/taobao/security/proc/SOManager;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 111
    .local v0, checkSums:[Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_4

    .line 113
    invoke-static {p2}, Lcom/taobao/security/proc/tools/DigestUtils;->sha256ToHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, digest:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    :cond_2
    if-eqz p2, :cond_0

    .line 127
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_1
    const/4 p2, 0x0

    goto :goto_0

    .line 117
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    :try_start_2
    array-length v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-lt v2, v4, :cond_5

    .line 125
    .end local v1           #digest:Ljava/lang/String;
    .end local v2           #i:I
    :cond_4
    if-eqz p2, :cond_0

    .line 127
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 130
    :goto_3
    const/4 p2, 0x0

    goto :goto_0

    .line 118
    .restart local v1       #digest:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_5
    :try_start_4
    aget-object v4, v0, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    if-eqz v4, :cond_7

    .line 125
    if-eqz p2, :cond_6

    .line 127
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 130
    :goto_4
    const/4 p2, 0x0

    .line 119
    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .line 117
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 123
    .end local v0           #checkSums:[Ljava/lang/String;
    .end local v1           #digest:Ljava/lang/String;
    .end local v2           #i:I
    :catch_0
    move-exception v4

    .line 125
    if-eqz p2, :cond_0

    .line 127
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 130
    :goto_5
    const/4 p2, 0x0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v3

    .line 125
    if-eqz p2, :cond_8

    .line 127
    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 130
    :goto_6
    const/4 p2, 0x0

    .line 132
    :cond_8
    throw v3

    .line 128
    .restart local v0       #checkSums:[Ljava/lang/String;
    .restart local v1       #digest:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1

    .restart local v2       #i:I
    :catch_2
    move-exception v3

    goto :goto_4

    .end local v0           #checkSums:[Ljava/lang/String;
    .end local v1           #digest:Ljava/lang/String;
    .end local v2           #i:I
    :catch_3
    move-exception v4

    goto :goto_5

    :catch_4
    move-exception v4

    goto :goto_6

    .restart local v0       #checkSums:[Ljava/lang/String;
    :catch_5
    move-exception v4

    goto :goto_3
.end method

.method private validateSha256(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "fileName"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v3

    .line 90
    :cond_1
    sget-object v4, Lcom/taobao/security/proc/SOManager;->dataMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 91
    .local v0, checkSums:[Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p2}, Lcom/taobao/security/proc/tools/DigestUtils;->sha256ToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, digest:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 97
    aget-object v4, v0, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    const/4 v3, 0x1

    goto :goto_0

    .line 96
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public validateAndLoadClient()Lcom/taobao/security/proc/SOManager$LoadSoResult;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/taobao/security/proc/SOManager;->SO_LIBRARY_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/security/proc/SOManager;->validateAndLoad(Ljava/lang/String;)Lcom/taobao/security/proc/SOManager$LoadSoResult;

    move-result-object v0

    return-object v0
.end method

.method public validateAndLoadCockroach()Lcom/taobao/security/proc/SOManager$LoadSoResult;
    .locals 1

    .prologue
    .line 141
    const-string v0, "libcockroach.so"

    invoke-direct {p0, v0}, Lcom/taobao/security/proc/SOManager;->validateAndLoad(Ljava/lang/String;)Lcom/taobao/security/proc/SOManager$LoadSoResult;

    move-result-object v0

    return-object v0
.end method

.method public validateAndLoadExeTaobao()V
    .locals 1

    .prologue
    .line 166
    const-string v0, "taobaod"

    invoke-direct {p0, v0}, Lcom/taobao/security/proc/SOManager;->validateAndLoadExe(Ljava/lang/String;)V

    .line 167
    return-void
.end method
