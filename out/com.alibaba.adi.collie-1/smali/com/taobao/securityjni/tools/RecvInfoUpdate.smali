.class public Lcom/taobao/securityjni/tools/RecvInfoUpdate;
.super Ljava/lang/Object;
.source "RecvInfoUpdate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SecurityUpLoadInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "fileName"
    .parameter "pageName"

    .prologue
    .line 17
    const-string v12, "file.separator"

    const-string v13, "/"

    invoke-static {v12, v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 19
    .local v11, pathSep:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v12, ""

    invoke-virtual {v12, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 25
    .local v7, externalPath:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 27
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    .end local v7           #externalPath:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v8, file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v5, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 39
    const-string v9, ""

    .line 40
    .local v9, line:Ljava/lang/String;
    const/4 v1, 0x0

    .line 41
    .local v1, Reader:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 44
    .local v3, bufRead:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 45
    .end local v1           #Reader:Ljava/io/FileReader;
    .local v2, Reader:Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 46
    .end local v3           #bufRead:Ljava/io/BufferedReader;
    .local v4, bufRead:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v9

    if-nez v9, :cond_5

    .line 65
    if-eqz v4, :cond_3

    .line 66
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 68
    :cond_3
    if-eqz v2, :cond_c

    .line 69
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v3, v4

    .end local v4           #bufRead:Ljava/io/BufferedReader;
    .restart local v3       #bufRead:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 75
    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    :cond_4
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, CrashInfo:Ljava/lang/String;
    if-eqz v0, :cond_b

    const-string v12, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 86
    const-string v12, "1.0.7"

    .line 85
    invoke-static {p1, v0, p0, v12}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0           #CrashInfo:Ljava/lang/String;
    .end local v1           #Reader:Ljava/io/FileReader;
    .end local v3           #bufRead:Ljava/io/BufferedReader;
    .restart local v2       #Reader:Ljava/io/FileReader;
    .restart local v4       #bufRead:Ljava/io/BufferedReader;
    :cond_5
    :try_start_4
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "##"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_1

    .line 50
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4           #bufRead:Ljava/io/BufferedReader;
    .restart local v3       #bufRead:Ljava/io/BufferedReader;
    move-object v1, v2

    .line 51
    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    .local v6, ep:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    if-eqz v3, :cond_6

    .line 66
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 68
    :cond_6
    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 71
    :catch_1
    move-exception v12

    goto :goto_2

    .line 53
    .end local v6           #ep:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 54
    .local v6, ep:Ljava/lang/SecurityException;
    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 65
    if-eqz v3, :cond_7

    .line 66
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 68
    :cond_7
    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 71
    :catch_3
    move-exception v12

    goto :goto_2

    .line 56
    .end local v6           #ep:Ljava/lang/SecurityException;
    :catch_4
    move-exception v6

    .line 57
    .local v6, ep:Ljava/lang/Exception;
    :goto_5
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "##"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, message:Ljava/lang/String;
    const-string v12, "1.0.7"

    .line 60
    invoke-static {p1, v10, p0, v12}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 65
    if-eqz v3, :cond_8

    .line 66
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 68
    :cond_8
    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .line 71
    :catch_5
    move-exception v12

    goto :goto_2

    .line 62
    .end local v6           #ep:Ljava/lang/Exception;
    .end local v10           #message:Ljava/lang/String;
    :catchall_0
    move-exception v12

    .line 65
    :goto_6
    if-eqz v3, :cond_9

    .line 66
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 68
    :cond_9
    if-eqz v1, :cond_a

    .line 69
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 74
    :cond_a
    :goto_7
    throw v12

    .line 71
    .end local v1           #Reader:Ljava/io/FileReader;
    .end local v3           #bufRead:Ljava/io/BufferedReader;
    .restart local v2       #Reader:Ljava/io/FileReader;
    .restart local v4       #bufRead:Ljava/io/BufferedReader;
    :catch_6
    move-exception v12

    move-object v3, v4

    .end local v4           #bufRead:Ljava/io/BufferedReader;
    .restart local v3       #bufRead:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    goto/16 :goto_2

    .line 89
    .restart local v0       #CrashInfo:Ljava/lang/String;
    :cond_b
    const-string v12, "HaveNoInfo"

    const-string v13, "1.0.7"

    .line 88
    invoke-static {p1, v12, p0, v13}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    .end local v0           #CrashInfo:Ljava/lang/String;
    :catch_7
    move-exception v13

    goto :goto_7

    .line 62
    .end local v1           #Reader:Ljava/io/FileReader;
    .restart local v2       #Reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v12

    move-object v1, v2

    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    goto :goto_6

    .end local v1           #Reader:Ljava/io/FileReader;
    .end local v3           #bufRead:Ljava/io/BufferedReader;
    .restart local v2       #Reader:Ljava/io/FileReader;
    .restart local v4       #bufRead:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v12

    move-object v3, v4

    .end local v4           #bufRead:Ljava/io/BufferedReader;
    .restart local v3       #bufRead:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    goto :goto_6

    .line 56
    .end local v1           #Reader:Ljava/io/FileReader;
    .restart local v2       #Reader:Ljava/io/FileReader;
    :catch_8
    move-exception v6

    move-object v1, v2

    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    goto :goto_5

    .end local v1           #Reader:Ljava/io/FileReader;
    .end local v3           #bufRead:Ljava/io/BufferedReader;
    .restart local v2       #Reader:Ljava/io/FileReader;
    .restart local v4       #bufRead:Ljava/io/BufferedReader;
    :catch_9
    move-exception v6

    move-object v3, v4

    .end local v4           #bufRead:Ljava/io/BufferedReader;
    .restart local v3       #bufRead:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    goto :goto_5

    .line 53
    .end local v1           #Reader:Ljava/io/FileReader;
    .restart local v2       #Reader:Ljava/io/FileReader;
    :catch_a
    move-exception v6

    move-object v1, v2

    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    goto :goto_4

    .end local v1           #Reader:Ljava/io/FileReader;
    .end local v3           #bufRead:Ljava/io/BufferedReader;
    .restart local v2       #Reader:Ljava/io/FileReader;
    .restart local v4       #bufRead:Ljava/io/BufferedReader;
    :catch_b
    move-exception v6

    move-object v3, v4

    .end local v4           #bufRead:Ljava/io/BufferedReader;
    .restart local v3       #bufRead:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    goto :goto_4

    .line 50
    :catch_c
    move-exception v6

    goto/16 :goto_3

    .end local v1           #Reader:Ljava/io/FileReader;
    .restart local v2       #Reader:Ljava/io/FileReader;
    :catch_d
    move-exception v6

    move-object v1, v2

    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v1           #Reader:Ljava/io/FileReader;
    .end local v3           #bufRead:Ljava/io/BufferedReader;
    .restart local v2       #Reader:Ljava/io/FileReader;
    .restart local v4       #bufRead:Ljava/io/BufferedReader;
    :cond_c
    move-object v3, v4

    .end local v4           #bufRead:Ljava/io/BufferedReader;
    .restart local v3       #bufRead:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #Reader:Ljava/io/FileReader;
    .restart local v1       #Reader:Ljava/io/FileReader;
    goto/16 :goto_2
.end method
