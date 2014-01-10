.class public Lcom/ut/device/d;
.super Ljava/lang/Object;
.source "HardConfig.java"


# direct methods
.method public static dZ()Z
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, mountedProperty:Ljava/lang/String;
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    const-string v3, "mounted_ro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 32
    .local v2, sdCardFile:Ljava/io/File;
    if-eqz v2, :cond_1

    .line 33
    new-instance v0, Ljava/io/File;

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ut/device/a;->iw:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Alvin2.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    const/4 v3, 0x1

    .line 42
    .end local v0           #f:Ljava/io/File;
    .end local v2           #sdCardFile:Ljava/io/File;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Lorg/usertrack/android/library/b/c;
    .locals 6
    .parameter "aContext"

    .prologue
    .line 16
    if-eqz p0, :cond_0

    .line 17
    new-instance v0, Lorg/usertrack/android/library/b/c;

    .line 18
    sget-object v2, Lcom/ut/device/a;->iw:Ljava/lang/String;

    const-string v3, "Alvin2"

    .line 19
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    .line 17
    invoke-direct/range {v0 .. v5}, Lorg/usertrack/android/library/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
