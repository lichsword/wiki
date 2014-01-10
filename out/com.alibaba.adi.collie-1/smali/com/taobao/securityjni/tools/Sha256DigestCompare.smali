.class public Lcom/taobao/securityjni/tools/Sha256DigestCompare;
.super Ljava/lang/Object;
.source "Sha256DigestCompare.java"


# static fields
.field private static COMPARE_DIGEST_RESULT:Z

.field private static CodePathPrefix:Ljava/lang/String;

.field private static CodeSystemPathPrefix:Ljava/lang/String;

.field private static ErrorCode_ExceptionError:Ljava/lang/String;

.field private static ErrorCode_IOError:Ljava/lang/String;

.field private static ErrorCode_NotFindFile:Ljava/lang/String;

.field private static ErrorCode_SecurityError:Ljava/lang/String;

.field private static IsInitialise:Z

.field private static LibPathDir:Ljava/lang/String;

.field private static Lock:[B

.field private static PAGE_NAME_SO256:Ljava/lang/String;

.field private static SOFileName:Ljava/lang/String;

.field private static final Sha256Digest:[Ljava/lang/String;

.field private static SystemLibPathPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDataStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/app/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->CodePathPrefix:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getRootStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/app/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->CodeSystemPathPrefix:Ljava/lang/String;

    .line 19
    const-string v0, "/lib/"

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->LibPathDir:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getRootStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->LibPathDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->SystemLibPathPrefix:Ljava/lang/String;

    .line 22
    const-string v0, "FileNotFindError"

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_NotFindFile:Ljava/lang/String;

    .line 23
    const-string v0, "IOError"

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_IOError:Ljava/lang/String;

    .line 24
    const-string v0, "SecurityError"

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_SecurityError:Ljava/lang/String;

    .line 25
    const-string v0, "ExceptionError"

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_ExceptionError:Ljava/lang/String;

    .line 28
    const-string v0, "SOSha256Check"

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->PAGE_NAME_SO256:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/taobao/securityjni/soversion/SoVersion;->Sha256DigestFinal:[Ljava/lang/String;

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->Sha256Digest:[Ljava/lang/String;

    .line 33
    const-string v0, "libSSECeg-1.0.7.so"

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->SOFileName:Ljava/lang/String;

    .line 35
    new-array v0, v2, [B

    sput-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->Lock:[B

    .line 38
    sput-boolean v2, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->COMPARE_DIGEST_RESULT:Z

    .line 40
    sput-boolean v2, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->IsInitialise:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static CompareString(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "srcData"
    .parameter "desStr"

    .prologue
    const/4 v1, 0x0

    .line 159
    if-eqz p0, :cond_0

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 165
    const/4 v1, 0x1

    .line 167
    .end local v0           #i:I
    :cond_0
    return v1

    .line 161
    .restart local v0       #i:I
    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getDataStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDigestByFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, fileInput:Ljava/io/FileInputStream;
    sget-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_NotFindFile:Ljava/lang/String;

    .line 175
    .local v0, digest:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 176
    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .local v3, fileInput:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Lcom/taobao/securityjni/tools/DigestUtils;->sha256ToHex(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move-result-object v0

    .line 197
    if-eqz v3, :cond_2

    .line 198
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-object v2, v3

    .line 205
    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, ep:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 180
    sget-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_NotFindFile:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    if-eqz v2, :cond_0

    .line 198
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 200
    :catch_1
    move-exception v4

    goto :goto_0

    .line 182
    .end local v1           #ep:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 183
    .local v1, ep:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 184
    sget-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_IOError:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 197
    if-eqz v2, :cond_0

    .line 198
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 200
    :catch_3
    move-exception v4

    goto :goto_0

    .line 186
    .end local v1           #ep:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 187
    .local v1, ep:Ljava/lang/SecurityException;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 188
    sget-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_SecurityError:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 197
    if-eqz v2, :cond_0

    .line 198
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    .line 200
    :catch_5
    move-exception v4

    goto :goto_0

    .line 190
    .end local v1           #ep:Ljava/lang/SecurityException;
    :catch_6
    move-exception v1

    .line 191
    .local v1, ep:Ljava/lang/Exception;
    :goto_4
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    sget-object v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_ExceptionError:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 197
    if-eqz v2, :cond_0

    .line 198
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_0

    .line 200
    :catch_7
    move-exception v4

    goto :goto_0

    .line 194
    .end local v1           #ep:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 197
    :goto_5
    if-eqz v2, :cond_1

    .line 198
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 203
    :cond_1
    :goto_6
    throw v4

    .line 200
    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    goto :goto_0

    :catch_9
    move-exception v5

    goto :goto_6

    .line 194
    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    goto :goto_5

    .line 190
    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    goto :goto_4

    .line 186
    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    goto :goto_3

    .line 182
    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    :catch_c
    move-exception v1

    move-object v2, v3

    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    goto :goto_2

    .line 178
    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    :catch_d
    move-exception v1

    move-object v2, v3

    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #fileInput:Ljava/io/FileInputStream;
    :cond_2
    move-object v2, v3

    .end local v3           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private static getDigestCompareResult(Landroid/content/ContextWrapper;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, i:I
    invoke-static {p0}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getFileDigest(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, digest:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 114
    const/4 v2, 0x0

    :goto_0
    sget-object v5, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->Sha256Digest:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_2

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, build:Ljava/lang/StringBuilder;
    sget-object v5, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->Sha256Digest:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 122
    sget-object v6, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->Sha256Digest:[Ljava/lang/String;

    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "::"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 123
    sget-object v5, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->Sha256Digest:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "::"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 124
    sget-object v5, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->Sha256Digest:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget-object v3, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->PAGE_NAME_SO256:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1.0.7"

    .line 126
    invoke-static {v3, v5, v6, v7}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 129
    .end local v0           #build:Ljava/lang/StringBuilder;
    :cond_1
    return v3

    .line 115
    :cond_2
    sget-object v5, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->Sha256Digest:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getDigestResult(Landroid/content/ContextWrapper;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    sget-boolean v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->IsInitialise:Z

    if-nez v0, :cond_1

    .line 53
    sget-object v1, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->Lock:[B

    monitor-enter v1

    .line 54
    :try_start_0
    sget-boolean v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->IsInitialise:Z

    if-nez v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestCompareResult(Landroid/content/ContextWrapper;)Z

    move-result v0

    sput-boolean v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->COMPARE_DIGEST_RESULT:Z

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->IsInitialise:Z

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-boolean v0, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->COMPARE_DIGEST_RESULT:Z

    return v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getExternalPackagePath(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 82
    :cond_0
    :goto_0
    return-object v2

    .line 68
    :cond_1
    const-string v4, "file.separator"

    const-string v5, "/"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, pathSep:Ljava/lang/String;
    sget-object v4, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->CodePathPrefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    sget-object v2, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->CodePathPrefix:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_2
    sget-object v4, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->CodeSystemPathPrefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    sget-object v2, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->CodeSystemPathPrefix:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, index:I
    const-string v2, "SD"

    .line 79
    .local v2, pathEx:Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 80
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileDigest(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getnativeLibPath(Landroid/content/ContextWrapper;)[Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, path:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 136
    .local v2, i:I
    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-lt v2, v5, :cond_1

    .line 155
    const-string v3, "Error"

    :cond_0
    return-object v3

    .line 137
    :cond_1
    aget-object v5, v4, v2

    if-eqz v5, :cond_2

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->SOFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getDigestByFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, outData:Ljava/lang/String;
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_NotFindFile:Ljava/lang/String;

    aput-object v6, v0, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_IOError:Ljava/lang/String;

    aput-object v6, v0, v5

    const/4 v5, 0x2

    .line 142
    sget-object v6, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_SecurityError:Ljava/lang/String;

    aput-object v6, v0, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->ErrorCode_ExceptionError:Ljava/lang/String;

    aput-object v6, v0, v5

    .line 144
    .local v0, destSrc:[Ljava/lang/String;
    sget-object v5, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->PAGE_NAME_SO256:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "##Infor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    const-string v7, "1.0.7"

    .line 144
    invoke-static {v5, v6, v1, v7}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v3, v0}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->CompareString(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    sget-object v5, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->PAGE_NAME_SO256:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "##Error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 151
    const-string v7, "1.0.7"

    .line 150
    invoke-static {v5, v6, v1, v7}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v0           #destSrc:[Ljava/lang/String;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #outData:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getPhoneCPU_ABI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, build:Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPhoneOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, build:Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPhoneSDKVersionInt()I
    .locals 1

    .prologue
    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static getRootStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getnativeLibPath(Landroid/content/ContextWrapper;)[Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 91
    .local v2, path:[Ljava/lang/String;
    invoke-static {p0}, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->getExternalPackagePath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, external:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 94
    sget-object v3, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->CodePathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->CodeSystemPathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->LibPathDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 100
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 101
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    sget-object v3, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->CodeSystemPathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    sget-object v3, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->SystemLibPathPrefix:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 107
    :goto_1
    return-object v2

    .line 97
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v3, 0x0

    aput-object v3, v2, v6

    goto :goto_0

    .line 104
    .restart local v1       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/taobao/securityjni/tools/Sha256DigestCompare;->LibPathDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_1
.end method
