.class public Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;
.super Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;
.source "AdiSyncConnectHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCity:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mLatitude:D

.field private mLongtitude:D

.field private mStartTime:[Ljava/lang/String;

.field private mSyncTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;DDLjava/lang/String;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V
    .locals 2
    .parameter "baseUrl"
    .parameter "mainId"
    .parameter "sid"
    .parameter "ver"
    .parameter "ecode"
    .parameter "appKey"
    .parameter "passwd"
    .parameter "ip"
    .parameter "startTime"
    .parameter "longtitude"
    .parameter "latitude"
    .parameter "city"
    .parameter "types"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p9, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mStartTime:[Ljava/lang/String;

    .line 32
    iput-wide p12, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mLatitude:D

    .line 33
    iput-wide p10, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mLongtitude:D

    .line 34
    iput-object p8, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mIp:Ljava/lang/String;

    .line 35
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mCity:Ljava/lang/String;

    .line 36
    if-nez p15, :cond_0

    .line 37
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->values()[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mSyncTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mSyncTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V
    .locals 8
    .parameter "baseUrl"
    .parameter "types"

    .prologue
    const-wide/16 v5, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v3, "192.168.2.1"

    iput-object v3, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mIp:Ljava/lang/String;

    .line 46
    const-string v3, "tb_tranking_display_time"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, tTime:Ljava/lang/String;
    const-string v3, "yuebao_display_time"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, YTime:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mStartTime:[Ljava/lang/String;

    .line 49
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mStartTime:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 50
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mStartTime:[Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 51
    sget-object v3, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "adi tTime = "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " yTime = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v3, "choice_city_code_key"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mCity:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/alibaba/adi/collie/util/LocationUtil;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 55
    .local v1, loc:Landroid/location/Location;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mLatitude:D

    .line 56
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    :cond_0
    iput-wide v5, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mLongtitude:D

    .line 57
    if-nez p2, :cond_2

    .line 58
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->values()[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mSyncTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    .line 62
    :goto_1
    return-void

    :cond_1
    move-wide v3, v5

    .line 55
    goto :goto_0

    .line 60
    :cond_2
    iput-object p2, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mSyncTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    goto :goto_1
.end method


# virtual methods
.method protected makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V
    .locals 10
    .parameter "request"

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V

    .line 77
    const-string v2, ";"

    .line 79
    .local v2, separator:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, sBuilder:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mSyncTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_2

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 95
    const-string v5, "starttime"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string v5, "ip"

    iget-object v6, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mIp:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v5, "lo"

    iget-wide v6, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mLongtitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v5, "la"

    iget-wide v6, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mLatitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "city"

    iget-object v6, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mSyncTypes:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    array-length v6, v5

    :goto_1
    if-lt v4, v6, :cond_6

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 115
    const-string v4, "types"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    return-void

    .line 80
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_2
    aget-object v3, v6, v5

    .line 81
    .local v3, tg:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    sget-object v8, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    if-ne v8, v3, :cond_4

    .line 82
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mSid:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 83
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mStartTime:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    :cond_4
    sget-object v8, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->YUEBAO:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    if-ne v8, v3, :cond_5

    .line 87
    iget-object v8, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mStartTime:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 90
    :cond_5
    const-string v8, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 106
    .end local v3           #tg:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_6
    aget-object v3, v5, v4

    .line 108
    .restart local v3       #tg:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    sget-object v7, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    if-ne v7, v3, :cond_7

    iget-object v7, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncConnectHelper;->mSid:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 106
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 111
    :cond_7
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 3
    .parameter "all"

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 70
    const/4 v1, 0x0

    goto :goto_0
.end method
