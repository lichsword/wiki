.class public Lcom/etao/kakalib/util/UserTrackHelper;
.super Ljava/lang/Object;
.source "UserTrackHelper.java"


# static fields
.field private static tbsae:Lcom/taobao/statistic/TBSAE; = null

.field private static final text:Ljava/lang/String; = "i>k88f9;gg>>9<h<kh;h8>89j;59fh;g"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destory()V
    .locals 1

    .prologue
    .line 242
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/TBSAE;->uninit()V

    .line 245
    const/4 v0, 0x0

    sput-object v0, Lcom/etao/kakalib/util/UserTrackHelper;->tbsae:Lcom/taobao/statistic/TBSAE;

    .line 248
    :cond_0
    return-void
.end method

.method private static getTbsae()Lcom/taobao/statistic/TBSAE;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/etao/kakalib/util/UserTrackHelper;->tbsae:Lcom/taobao/statistic/TBSAE;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "TAG"

    const-string v1, "$$$$$$TBSAE \u6ca1\u6709\u521d\u59cb\u5316$$$$$$$"

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8bf7\u68c0\u67e5\u662f\u5426\u5bfc\u5165\u4e86Usertrack\u7684jar\u5305\uff0c\u5efa\u8bae\u4e3a1.3.2\u4ee5\u4e0a\u7248\u672c"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    sget-object v0, Lcom/etao/kakalib/util/UserTrackHelper;->tbsae:Lcom/taobao/statistic/TBSAE;

    return-object v0
.end method

.method public static getUTText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "inString"
    .parameter "key"

    .prologue
    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 254
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 255
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 256
    .local v0, c:C
    add-int v4, v0, p1

    int-to-char v0, v4

    .line 257
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 38
    const-class v3, Lcom/etao/kakalib/util/UserTrackHelper;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 39
    :try_start_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    :cond_0
    sget-boolean v2, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 64
    :goto_0
    monitor-exit v3

    return-void

    .line 44
    :cond_1
    :try_start_1
    sget-object v2, Lcom/etao/kakalib/util/UserTrackHelper;->tbsae:Lcom/taobao/statistic/TBSAE;

    if-eqz v2, :cond_2

    .line 45
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->destory()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :cond_2
    :try_start_2
    new-instance v2, Lcom/taobao/statistic/TBSAE;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/taobao/statistic/TBSAE;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/etao/kakalib/util/UserTrackHelper;->tbsae:Lcom/taobao/statistic/TBSAE;

    .line 49
    const-string v2, "i>k88f9;gg>>9<h<kh;h8>89j;59fh;g"

    const/4 v4, -0x5

    invoke-static {v2, v4}, Lcom/etao/kakalib/util/UserTrackHelper;->getUTText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, utText:Ljava/lang/String;
    sget-object v2, Lcom/etao/kakalib/util/UserTrackHelper;->tbsae:Lcom/taobao/statistic/TBSAE;

    const-string v4, "21616878"

    invoke-virtual {v2, v4, v1}, Lcom/taobao/statistic/TBSAE;->setKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v2, Lcom/etao/kakalib/util/UserTrackHelper;->tbsae:Lcom/taobao/statistic/TBSAE;

    invoke-static {p0}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->getMTopTTID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/taobao/statistic/TBSAE;->setChannel(Ljava/lang/String;)V

    .line 53
    sget-boolean v2, Lcom/etao/kakalib/util/KaKaLibConfig;->isReleaseMode:Z

    if-nez v2, :cond_3

    .line 54
    sget-object v2, Lcom/etao/kakalib/util/UserTrackHelper;->tbsae:Lcom/taobao/statistic/TBSAE;

    invoke-virtual {v2}, Lcom/taobao/statistic/TBSAE;->turnDebug()V

    .line 56
    :cond_3
    sget-boolean v2, Lcom/etao/kakalib/util/KaKaLibConfig;->needCatchCrash:Z

    if-eqz v2, :cond_4

    .line 57
    sget-object v2, Lcom/etao/kakalib/util/UserTrackHelper;->tbsae:Lcom/taobao/statistic/TBSAE;

    iget-object v2, v2, Lcom/taobao/statistic/TBSAE;->crashHandler:Lcom/taobao/statistic/TBSAE$CrashHandler;

    invoke-virtual {v2}, Lcom/taobao/statistic/TBSAE$CrashHandler;->turnOn()V

    .line 59
    :cond_4
    sget-object v2, Lcom/etao/kakalib/util/UserTrackHelper;->tbsae:Lcom/taobao/statistic/TBSAE;

    invoke-virtual {v2}, Lcom/taobao/statistic/TBSAE;->init()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 60
    .end local v1           #utText:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Error;
    :try_start_3
    const-string v2, "TAG"

    const-string v4, "$$$$$$TBSAE \u6ca1\u6709\u521d\u59cb\u5316$$$$$$$"

    invoke-static {v2, v4}, Lcom/etao/kakalib/util/KakaLibLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "\u8bf7\u68c0\u67e5\u662f\u5426\u5bfc\u5165\u4e86Usertrack\u7684jar\u5305\uff0c\u5efa\u8bae\u4e3a1.3.2\u4ee5\u4e0a\u7248\u672c"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    .end local v0           #e:Ljava/lang/Error;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static onButtonClick(Ljava/lang/String;)V
    .locals 2
    .parameter "btnName"

    .prologue
    .line 131
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    sget-object v1, Lcom/taobao/statistic/CT;->Button:Lcom/taobao/statistic/CT;

    invoke-virtual {v0, v1, p0}, Lcom/taobao/statistic/TBSAE$Page;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static onButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "btnName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 139
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KaKaLibConfig.needUserTrack="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etao/kakalib/util/KakaLibLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->adv:Lcom/taobao/statistic/TBSAE$Adv;

    sget-object v1, Lcom/taobao/statistic/CT;->Button:Lcom/taobao/statistic/CT;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p0, v2}, Lcom/taobao/statistic/TBSAE$Adv;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static onCreatePage(Ljava/lang/String;)V
    .locals 1
    .parameter "pageName"

    .prologue
    .line 73
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    invoke-virtual {v0, p0}, Lcom/taobao/statistic/TBSAE$Page;->create(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static onDestroyPage(Ljava/lang/String;)V
    .locals 1
    .parameter "pageName"

    .prologue
    .line 106
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    invoke-virtual {v0, p0}, Lcom/taobao/statistic/TBSAE$Page;->destroy(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public static onDialogClick(Ljava/lang/String;)V
    .locals 2
    .parameter "btnName"

    .prologue
    .line 181
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    sget-object v1, Lcom/taobao/statistic/CT;->Dialog:Lcom/taobao/statistic/CT;

    invoke-virtual {v0, v1, p0}, Lcom/taobao/statistic/TBSAE$Page;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public static onFocus(Ljava/lang/String;)V
    .locals 2
    .parameter "btnName"

    .prologue
    .line 168
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    sget-object v1, Lcom/taobao/statistic/CT;->Text:Lcom/taobao/statistic/CT;

    invoke-virtual {v0, v1, p0}, Lcom/taobao/statistic/TBSAE$Page;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public static onImageClick(Ljava/lang/String;)V
    .locals 2
    .parameter "btnName"

    .prologue
    .line 155
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    sget-object v1, Lcom/taobao/statistic/CT;->Image:Lcom/taobao/statistic/CT;

    invoke-virtual {v0, v1, p0}, Lcom/taobao/statistic/TBSAE$Page;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public static onItemClick(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "position"

    .prologue
    .line 231
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    sget-object v1, Lcom/taobao/statistic/CT;->List:Lcom/taobao/statistic/CT;

    invoke-virtual {v0, v1, p0, p1}, Lcom/taobao/statistic/TBSAE$Page;->itemSelected(Lcom/taobao/statistic/CT;Ljava/lang/String;I)V

    .line 236
    :cond_0
    return-void
.end method

.method public static onKeyBack()V
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    invoke-virtual {v0}, Lcom/taobao/statistic/TBSAE$Page;->goBack()V

    .line 123
    :cond_0
    return-void
.end method

.method public static onPausePage(Ljava/lang/String;)V
    .locals 1
    .parameter "pageName"

    .prologue
    .line 95
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    invoke-virtual {v0, p0}, Lcom/taobao/statistic/TBSAE$Page;->leave(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public static onResumePage(Ljava/lang/String;)V
    .locals 1
    .parameter "pageName"

    .prologue
    .line 84
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/statistic/TBSAE;->page:Lcom/taobao/statistic/TBSAE$Page;

    invoke-virtual {v0, p0}, Lcom/taobao/statistic/TBSAE$Page;->enter(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public static searchWord(Ljava/lang/String;)V
    .locals 6
    .parameter "keyword"

    .prologue
    .line 212
    sget-boolean v1, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v1, :cond_0

    .line 213
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "search_keyword="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, args:Ljava/lang/String;
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/statistic/TBSAE;->adv:Lcom/taobao/statistic/TBSAE$Adv;

    sget-object v2, Lcom/taobao/statistic/CT;->Button:Lcom/taobao/statistic/CT;

    const-string v3, "SearchKeywords"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/taobao/statistic/TBSAE$Adv;->ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V

    .line 220
    .end local v0           #args:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static updateLoginUser(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 196
    sget-boolean v0, Lcom/etao/kakalib/util/KaKaLibConfig;->needUserTrack:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/etao/kakalib/util/UserTrackHelper;->getTbsae()Lcom/taobao/statistic/TBSAE;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/statistic/TBSAE;->updateUserAccount(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method
