.class public Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;
.super Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;
.source "AdiGetConnectHelper.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$business$adiserver$sync$AdiSyncManager$TypeGet:[I


# instance fields
.field private mReqStrGenerators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/IAdiGetReqStrGenerator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$business$adiserver$sync$AdiSyncManager$TypeGet()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->$SWITCH_TABLE$com$alibaba$adi$collie$business$adiserver$sync$AdiSyncManager$TypeGet:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->values()[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->IMAGE_FUNNY:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->WEATHER:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->YUEBAO:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->$SWITCH_TABLE$com$alibaba$adi$collie$business$adiserver$sync$AdiSyncManager$TypeGet:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>([Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "types"
    .parameter "baseUrl"
    .parameter "mainId"
    .parameter "sid"
    .parameter "ver"
    .parameter "eCode"
    .parameter "appKey"
    .parameter "passwd"

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->mReqStrGenerators:Ljava/util/List;

    .line 26
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 49
    return-void

    .line 26
    :cond_0
    aget-object v8, p1, v0

    .line 27
    .local v8, t:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->$SWITCH_TABLE$com$alibaba$adi$collie$business$adiserver$sync$AdiSyncManager$TypeGet()[I

    move-result-object v2

    invoke-virtual {v8}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 26
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->mReqStrGenerators:Ljava/util/List;

    new-instance v3, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiJokeReqStrGenerator;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiJokeReqStrGenerator;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->mReqStrGenerators:Ljava/util/List;

    new-instance v3, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiYuEBaoReqStrGenerator;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiYuEBaoReqStrGenerator;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->mReqStrGenerators:Ljava/util/List;

    new-instance v3, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiNewsReqStrGenerator;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiNewsReqStrGenerator;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->mReqStrGenerators:Ljava/util/List;

    new-instance v3, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiWeatherReqStrGenerator;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiWeatherReqStrGenerator;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    :pswitch_4
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->mReqStrGenerators:Ljava/util/List;

    new-instance v3, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiTbTrackingReqStrGenerator;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiTbTrackingReqStrGenerator;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :pswitch_5
    iget-object v2, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->mReqStrGenerators:Ljava/util/List;

    new-instance v3, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiImageFunnyReqStrGenerator;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/AdiImageFunnyReqStrGenerator;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V
    .locals 5
    .parameter "request"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/business/adiserver/BasicBizConnectHelper;->makeRequest(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;)V

    .line 64
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->mReqStrGenerators:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->mReqStrGenerators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiGetConnectHelper;->mReqStrGenerators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, v:Ljava/lang/String;
    const-string v3, "types"

    invoke-virtual {p1, v3, v2}, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #v:Ljava/lang/String;
    :cond_1
    return-void

    .line 66
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/IAdiGetReqStrGenerator;

    .line 67
    .local v0, gen:Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/IAdiGetReqStrGenerator;
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/alibaba/adi/collie/business/adiserver/sync/reqgen/IAdiGetReqStrGenerator;->getRequestString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 3
    .parameter "all"

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method
