.class public Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;
.super Ljava/lang/Object;
.source "AdiVersionPersistence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "newVersion"
    .parameter "curVersion"

    .prologue
    const/4 v6, 0x0

    .line 56
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 57
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 58
    const/4 v6, -0x1

    .line 89
    :cond_1
    :goto_0
    return v6

    .line 61
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_4

    .line 62
    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 63
    const/4 v6, 0x1

    goto :goto_0

    .line 66
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_6

    .line 67
    :cond_5
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 72
    :cond_6
    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, newV:[Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, curV:[Ljava/lang/String;
    array-length v7, v5

    array-length v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 76
    .local v0, compLen:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 78
    :try_start_0
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 79
    .local v4, newInt:I
    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 80
    .local v1, curInt:I
    if-ne v4, v1, :cond_7

    .line 76
    .end local v1           #curInt:I
    .end local v4           #newInt:I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    .restart local v1       #curInt:I
    .restart local v4       #newInt:I
    :cond_7
    sub-int v6, v4, v1

    goto :goto_0

    .line 85
    .end local v1           #curInt:I
    .end local v4           #newInt:I
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public static getDownloadId()J
    .locals 3

    .prologue
    .line 124
    const-string v0, "ver_downloadId"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDownloadedApk()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    const-string v0, "ver_downloadFile"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotifiedAlready()Z
    .locals 2

    .prologue
    .line 23
    const-string v0, "ver_notifiedAlready"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUpdateFeatureDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    const-string v0, "ver_updateFeatureDesc"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-string v0, "ver_updateUrl"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    const-string v0, "ver_updateVer"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasUpdate(Landroid/content/Context;)Z
    .locals 4
    .parameter "baseContext"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/alibaba/adi/collie/util/ApkUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, curVersion:Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, newVersion:Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getUpdateUrl()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, newApkUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 40
    invoke-static {v2, v0}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->compVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 41
    const/4 v3, 0x1

    .line 43
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static onUpgradeCompleted()V
    .locals 2

    .prologue
    .line 136
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->setDownloadId(J)V

    .line 137
    const-string v0, ""

    invoke-static {v0}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->setDownloadedApk(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static setDownloadId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 120
    const-string v0, "ver_downloadId"

    invoke-static {v0, p0, p1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;J)V

    .line 121
    return-void
.end method

.method public static setDownloadedApk(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 132
    const-string v0, "ver_downloadFile"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static setNotifiedAlready(Z)V
    .locals 1
    .parameter "notified"

    .prologue
    .line 19
    const-string v0, "ver_notifiedAlready"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 20
    return-void
.end method

.method public static setUpdateFeatureDesc(Ljava/lang/String;)V
    .locals 1
    .parameter "desc"

    .prologue
    .line 97
    const-string v0, "ver_updateFeatureDesc"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static setUpdateUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 113
    const-string v0, "ver_updateUrl"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static setUpdateVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 105
    const-string v0, "ver_updateVer"

    invoke-static {v0, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static shouldNotify(Landroid/content/Context;)Z
    .locals 1
    .parameter "baseContext"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->hasUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getNotifiedAlready()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
