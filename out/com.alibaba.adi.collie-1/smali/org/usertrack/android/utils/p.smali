.class public Lorg/usertrack/android/utils/p;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# direct methods
.method public static eE()Ljava/lang/String;
    .locals 10

    .prologue
    .line 20
    const/4 v7, 0x0

    .line 21
    .local v7, str:Ljava/lang/String;
    const/4 v4, 0x0

    .line 22
    .local v4, localFileReader:Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 24
    .local v1, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .end local v4           #localFileReader:Ljava/io/FileReader;
    .local v5, localFileReader:Ljava/io/FileReader;
    if-eqz v5, :cond_1

    .line 27
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 28
    const/16 v8, 0x400

    .line 27
    invoke-direct {v2, v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 29
    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .local v2, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 31
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .end local v2           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 40
    .end local v5           #localFileReader:Ljava/io/FileReader;
    .restart local v4       #localFileReader:Ljava/io/FileReader;
    :goto_0
    if-eqz v7, :cond_0

    .line 41
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    .line 42
    .local v0, i:I
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 45
    .end local v0           #i:I
    :goto_1
    return-object v8

    .line 32
    .end local v4           #localFileReader:Ljava/io/FileReader;
    .restart local v5       #localFileReader:Ljava/io/FileReader;
    :catch_0
    move-exception v6

    .line 33
    .local v6, localIOException:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "Could not read from file /proc/cpuinfo"

    .line 34
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .line 36
    .end local v5           #localFileReader:Ljava/io/FileReader;
    .restart local v4       #localFileReader:Ljava/io/FileReader;
    goto :goto_0

    .end local v6           #localIOException:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 37
    .local v3, localFileNotFoundException:Ljava/io/FileNotFoundException;
    :goto_3
    const-string v8, "BaseParameter-Could not open file /proc/cpuinfo"

    .line 38
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    .end local v3           #localFileNotFoundException:Ljava/io/FileNotFoundException;
    :cond_0
    const-string v8, ""

    goto :goto_1

    .line 36
    .end local v4           #localFileReader:Ljava/io/FileReader;
    .restart local v5       #localFileReader:Ljava/io/FileReader;
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5           #localFileReader:Ljava/io/FileReader;
    .restart local v4       #localFileReader:Ljava/io/FileReader;
    goto :goto_3

    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v4           #localFileReader:Ljava/io/FileReader;
    .restart local v2       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v5       #localFileReader:Ljava/io/FileReader;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #localFileReader:Ljava/io/FileReader;
    .restart local v4       #localFileReader:Ljava/io/FileReader;
    goto :goto_3

    .line 32
    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v4           #localFileReader:Ljava/io/FileReader;
    .restart local v2       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v5       #localFileReader:Ljava/io/FileReader;
    :catch_4
    move-exception v6

    move-object v1, v2

    .end local v2           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_2

    :cond_1
    move-object v4, v5

    .end local v5           #localFileReader:Ljava/io/FileReader;
    .restart local v4       #localFileReader:Ljava/io/FileReader;
    goto :goto_0
.end method

.method public static eF()I
    .locals 5

    .prologue
    .line 49
    const/4 v0, 0x2

    .line 51
    .local v0, SDK_INT:I
    :try_start_0
    const-class v3, Landroid/os/Build$VERSION;

    const-string v4, "SDK_INT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 52
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-class v3, Landroid/os/Build$VERSION;

    .line 57
    const-string v4, "SDK"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 55
    goto :goto_0

    .line 58
    :catch_1
    move-exception v2

    .line 59
    .local v2, e2:Ljava/lang/Exception;
    const/4 v0, 0x2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 121
    if-eqz p0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, powerManager:Landroid/os/PowerManager;
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .end local v0           #powerManager:Landroid/os/PowerManager;
    check-cast v0, Landroid/os/PowerManager;

    .line 125
    .restart local v0       #powerManager:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 127
    const-string v2, "isScreenOn"

    .line 126
    invoke-static {v0, v2}, Lorg/usertrack/android/utils/m;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, result:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 129
    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #result:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const/4 v2, 0x1

    .line 135
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
