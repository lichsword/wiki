.class public Lcom/taobao/statistic/core/c;
.super Ljava/lang/Object;
.source "HardConfig.java"


# instance fields
.field private jN:Landroid/content/Context;

.field private jO:Ljava/lang/String;

.field private jP:Ljava/lang/String;

.field private jQ:Lcom/taobao/statistic/core/a/c;

.field private jR:Lcom/taobao/statistic/core/a/c;

.field private jS:Lcom/taobao/statistic/core/a/c;

.field private jT:Lcom/taobao/statistic/core/a/c;

.field private jU:Lcom/taobao/statistic/core/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resourceIdentifier"
    .parameter "configDir"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jO:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jQ:Lcom/taobao/statistic/core/a/c;

    .line 20
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jR:Lcom/taobao/statistic/core/a/c;

    .line 21
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jS:Lcom/taobao/statistic/core/a/c;

    .line 22
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jT:Lcom/taobao/statistic/core/a/c;

    .line 23
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jU:Lcom/taobao/statistic/core/a/c;

    .line 27
    iput-object p1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/taobao/statistic/core/c;->jO:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public bi()Lcom/taobao/statistic/core/a/c;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 72
    const/4 v6, 0x0

    .line 73
    .local v6, pcTmp:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jQ:Lcom/taobao/statistic/core/a/c;

    if-eqz v1, :cond_0

    .line 74
    iget-object v6, p0, Lcom/taobao/statistic/core/c;->jQ:Lcom/taobao/statistic/core/a/c;

    .line 76
    :cond_0
    if-eqz v6, :cond_1

    .line 92
    .end local v6           #pcTmp:Lcom/taobao/statistic/core/a/c;
    :goto_0
    return-object v6

    .line 79
    .restart local v6       #pcTmp:Lcom/taobao/statistic/core/a/c;
    :cond_1
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    .local v0, commonPersistentConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jO:Ljava/lang/String;

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 84
    new-instance v0, Lcom/taobao/statistic/core/a/c;

    .end local v0           #commonPersistentConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UTCommon_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/taobao/statistic/core/c;->jO:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/statistic/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 91
    .restart local v0       #commonPersistentConfig:Lcom/taobao/statistic/core/a/c;
    :goto_1
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jQ:Lcom/taobao/statistic/core/a/c;

    move-object v6, v0

    .line 92
    goto :goto_0

    .line 88
    :cond_4
    new-instance v0, Lcom/taobao/statistic/core/a/c;

    .end local v0           #commonPersistentConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    const-string v3, "UTCommon"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/statistic/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .restart local v0       #commonPersistentConfig:Lcom/taobao/statistic/core/a/c;
    goto :goto_1
.end method

.method public bj()Lcom/taobao/statistic/core/a/c;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 97
    const/4 v6, 0x0

    .line 98
    .local v6, pcTmp:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jU:Lcom/taobao/statistic/core/a/c;

    if-eqz v1, :cond_0

    .line 99
    iget-object v6, p0, Lcom/taobao/statistic/core/c;->jU:Lcom/taobao/statistic/core/a/c;

    .line 101
    :cond_0
    if-eqz v6, :cond_1

    .line 111
    .end local v6           #pcTmp:Lcom/taobao/statistic/core/a/c;
    :goto_0
    return-object v6

    .line 104
    .restart local v6       #pcTmp:Lcom/taobao/statistic/core/a/c;
    :cond_1
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 107
    :cond_3
    new-instance v0, Lcom/taobao/statistic/core/a/c;

    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    sget-object v2, Lcom/taobao/statistic/a;->iw:Ljava/lang/String;

    const-string v3, "UTGlobal"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/statistic/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 110
    .local v0, globalPersistentConfig:Lcom/taobao/statistic/core/a/c;
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jU:Lcom/taobao/statistic/core/a/c;

    move-object v6, v0

    .line 111
    goto :goto_0
.end method

.method public bk()Lcom/taobao/statistic/core/a/c;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 116
    const/4 v6, 0x0

    .line 117
    .local v6, pcTmp:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jR:Lcom/taobao/statistic/core/a/c;

    if-eqz v1, :cond_0

    .line 118
    iget-object v6, p0, Lcom/taobao/statistic/core/c;->jR:Lcom/taobao/statistic/core/a/c;

    .line 120
    :cond_0
    if-eqz v6, :cond_1

    .line 136
    .end local v6           #pcTmp:Lcom/taobao/statistic/core/a/c;
    :goto_0
    return-object v6

    .line 123
    .restart local v6       #pcTmp:Lcom/taobao/statistic/core/a/c;
    :cond_1
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 126
    :cond_3
    const/4 v0, 0x0

    .line 127
    .local v0, packagePersistentConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jO:Ljava/lang/String;

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 128
    new-instance v0, Lcom/taobao/statistic/core/a/c;

    .end local v0           #packagePersistentConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UTPackage_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/taobao/statistic/core/c;->jO:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/statistic/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 135
    .restart local v0       #packagePersistentConfig:Lcom/taobao/statistic/core/a/c;
    :goto_1
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jR:Lcom/taobao/statistic/core/a/c;

    move-object v6, v0

    .line 136
    goto :goto_0

    .line 132
    :cond_4
    new-instance v0, Lcom/taobao/statistic/core/a/c;

    .end local v0           #packagePersistentConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    const-string v3, "UTPackage"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/statistic/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .restart local v0       #packagePersistentConfig:Lcom/taobao/statistic/core/a/c;
    goto :goto_1
.end method

.method public bl()Lcom/taobao/statistic/core/a/c;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 141
    const/4 v6, 0x0

    .line 142
    .local v6, pcTmp:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jT:Lcom/taobao/statistic/core/a/c;

    if-eqz v1, :cond_0

    .line 143
    iget-object v6, p0, Lcom/taobao/statistic/core/c;->jT:Lcom/taobao/statistic/core/a/c;

    .line 145
    :cond_0
    if-eqz v6, :cond_1

    .line 162
    .end local v6           #pcTmp:Lcom/taobao/statistic/core/a/c;
    :goto_0
    return-object v6

    .line 148
    .restart local v6       #pcTmp:Lcom/taobao/statistic/core/a/c;
    :cond_1
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 151
    :cond_3
    const/4 v0, 0x0

    .line 152
    .local v0, UTPackageServiceLockConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jO:Ljava/lang/String;

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    new-instance v0, Lcom/taobao/statistic/core/a/c;

    .end local v0           #UTPackageServiceLockConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    const-string v3, "UTPackageServiceLock"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/statistic/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 161
    .restart local v0       #UTPackageServiceLockConfig:Lcom/taobao/statistic/core/a/c;
    :goto_1
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jT:Lcom/taobao/statistic/core/a/c;

    move-object v6, v0

    .line 162
    goto :goto_0

    .line 157
    :cond_4
    new-instance v0, Lcom/taobao/statistic/core/a/c;

    .end local v0           #UTPackageServiceLockConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UTPackageServiceLock_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/taobao/statistic/core/c;->jO:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/statistic/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .restart local v0       #UTPackageServiceLockConfig:Lcom/taobao/statistic/core/a/c;
    goto :goto_1
.end method

.method public bm()Lcom/taobao/statistic/core/a/c;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 167
    const/4 v6, 0x0

    .line 168
    .local v6, pcTmp:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jS:Lcom/taobao/statistic/core/a/c;

    if-eqz v1, :cond_0

    .line 169
    iget-object v6, p0, Lcom/taobao/statistic/core/c;->jS:Lcom/taobao/statistic/core/a/c;

    .line 171
    :cond_0
    if-eqz v6, :cond_1

    .line 187
    .end local v6           #pcTmp:Lcom/taobao/statistic/core/a/c;
    :goto_0
    return-object v6

    .line 174
    .restart local v6       #pcTmp:Lcom/taobao/statistic/core/a/c;
    :cond_1
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 177
    :cond_3
    const/4 v0, 0x0

    .line 178
    .local v0, UTPackageAPPLockConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jO:Ljava/lang/String;

    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    new-instance v0, Lcom/taobao/statistic/core/a/c;

    .end local v0           #UTPackageAPPLockConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    const-string v3, "UTPackageAPPLock"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/statistic/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 186
    .restart local v0       #UTPackageAPPLockConfig:Lcom/taobao/statistic/core/a/c;
    :goto_1
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jS:Lcom/taobao/statistic/core/a/c;

    move-object v6, v0

    .line 187
    goto :goto_0

    .line 182
    :cond_4
    new-instance v0, Lcom/taobao/statistic/core/a/c;

    .end local v0           #UTPackageAPPLockConfig:Lcom/taobao/statistic/core/a/c;
    iget-object v1, p0, Lcom/taobao/statistic/core/c;->jN:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/statistic/core/c;->jP:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UTPackageAPPLock_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/taobao/statistic/core/c;->jO:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/statistic/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .restart local v0       #UTPackageAPPLockConfig:Lcom/taobao/statistic/core/a/c;
    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jQ:Lcom/taobao/statistic/core/a/c;

    .line 34
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jR:Lcom/taobao/statistic/core/a/c;

    .line 35
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jS:Lcom/taobao/statistic/core/a/c;

    .line 36
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jT:Lcom/taobao/statistic/core/a/c;

    .line 37
    iput-object v0, p0, Lcom/taobao/statistic/core/c;->jU:Lcom/taobao/statistic/core/a/c;

    .line 38
    return-void
.end method
