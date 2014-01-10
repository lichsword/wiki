.class public Lcom/alibaba/adi/collie/business/ServiceDataParser;
.super Ljava/lang/Object;
.source "ServiceDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$business$adiserver$sync$AdiSyncManager$TypeGet:[I = null

.field private static final ERR_ACCOUNT_INVALID:I = 0xc9

.field private static final ERR_INVALID_SESSION:I = 0x68

.field private static final ERR_SID_OUTDATE:I = 0xd1

.field private static final ERR_TAOBAO_ACCOUNT_INVALID:I = 0xd2

.field public static final TAG:Ljava/lang/String; = "ServiceDataParser"


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$business$adiserver$sync$AdiSyncManager$TypeGet()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/adi/collie/business/ServiceDataParser;->$SWITCH_TABLE$com$alibaba$adi$collie$business$adiserver$sync$AdiSyncManager$TypeGet:[I

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
    sput-object v0, Lcom/alibaba/adi/collie/business/ServiceDataParser;->$SWITCH_TABLE$com$alibaba$adi$collie$business$adiserver$sync$AdiSyncManager$TypeGet:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTaoTrackingListDiff(Ljava/util/List;Ljava/util/List;)I
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, oldList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    .local p1, newList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    if-nez p1, :cond_1

    .line 199
    const/4 v5, 0x0

    .line 227
    :cond_0
    :goto_0
    return v5

    .line 201
    :cond_1
    const-string v1, ""

    .line 202
    .local v1, diff:Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v0, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 204
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 208
    :cond_2
    const/4 v5, 0x0

    .line 209
    .local v5, ret:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_4

    .line 223
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 224
    const-string v7, "ServiceDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "set EXPRESS_NEW_KEY to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v7, "tb_tracking_new_ids"

    invoke-static {v7, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    .end local v3           #j:I
    .end local v5           #ret:I
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    .line 205
    .local v2, i:Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getLogisticsInvoiceNo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getLastTransitSteps()Lcom/alibaba/adi/collie/model/service/TaoTransitStep;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->getStatusDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 210
    .end local v2           #i:Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
    .restart local v3       #j:I
    .restart local v5       #ret:I
    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    .line 211
    .restart local v2       #i:Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getLogisticsInvoiceNo()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, k:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getLastTransitSteps()Lcom/alibaba/adi/collie/model/service/TaoTransitStep;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->getStatusDesc()Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, v:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 214
    const-string v7, "ServiceDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ruibo: new package "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    add-int/lit8 v5, v5, 0x1

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 217
    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 218
    const-string v7, "ServiceDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ruibo: package "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has new status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    add-int/lit8 v5, v5, 0x1

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static getImageDataFromJsonObject(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/ImageData;
    .locals 11
    .parameter "jsonObject"

    .prologue
    .line 323
    const/4 v3, 0x0

    .line 324
    .local v3, imageData:Lcom/alibaba/adi/collie/model/service/ImageData;
    if-nez p0, :cond_0

    .line 325
    const/4 v8, 0x0

    .line 341
    :goto_0
    return-object v8

    .line 328
    :cond_0
    :try_start_0
    const-string v8, "urls"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 329
    .local v5, urlArray:Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v6, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 333
    const-string v8, "width"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, width:Ljava/lang/String;
    const-string v8, "height"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, height:Ljava/lang/String;
    new-instance v4, Lcom/alibaba/adi/collie/model/service/ImageData;

    invoke-direct {v4, v6, v7, v1}, Lcom/alibaba/adi/collie/model/service/ImageData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #imageData:Lcom/alibaba/adi/collie/model/service/ImageData;
    .local v4, imageData:Lcom/alibaba/adi/collie/model/service/ImageData;
    move-object v3, v4

    .end local v1           #height:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #imageData:Lcom/alibaba/adi/collie/model/service/ImageData;
    .end local v5           #urlArray:Lorg/json/JSONArray;
    .end local v6           #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #width:Ljava/lang/String;
    .restart local v3       #imageData:Lcom/alibaba/adi/collie/model/service/ImageData;
    :goto_2
    move-object v8, v3

    .line 341
    goto :goto_0

    .line 331
    .restart local v2       #i:I
    .restart local v5       #urlArray:Lorg/json/JSONArray;
    .restart local v6       #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    .end local v2           #i:I
    .end local v5           #urlArray:Lorg/json/JSONArray;
    .end local v6           #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Lorg/json/JSONException;
    const-string v8, "ServiceDataParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "xhh: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 338
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "ServiceDataParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "xhh: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static getImageFunnyFromJson(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/ImageFunnyData;
    .locals 5
    .parameter "jsonEntry"

    .prologue
    .line 573
    :try_start_0
    new-instance v0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;-><init>()V

    .line 574
    .local v0, data:Lcom/alibaba/adi/collie/model/service/ImageFunnyData;
    const-string v2, "display_time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setDisplay_time(Ljava/lang/String;)V

    .line 575
    const-string v2, "thumb_image"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getImageDataFromJsonObject(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/ImageData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setThumb_image(Lcom/alibaba/adi/collie/model/service/ImageData;)V

    .line 576
    const-string v2, "description"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setDescription(Ljava/lang/String;)V

    .line 577
    const-string v2, "bury_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setBury_count(I)V

    .line 578
    const-string v2, "digg_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setDigg_count(I)V

    .line 579
    const-string v2, "comment_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setComment_count(I)V

    .line 580
    const-string v2, "origin_image"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getImageDataFromJsonObject(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/ImageData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setOrigin_image(Lcom/alibaba/adi/collie/model/service/ImageData;)V

    .line 581
    const-string v2, "toutiao_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setToutiao_url(Ljava/lang/String;)V

    .line 582
    const-string v2, "toutiao_wap_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setToutiao_wap_url(Ljava/lang/String;)V

    .line 583
    const-string v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setType(I)V

    .line 584
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setId(Ljava/lang/String;)V

    .line 585
    const-string v2, "favorite_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setFavorite_count(I)V

    .line 586
    const-string v2, "middle_image"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getImageDataFromJsonObject(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/ImageData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setMiddle_image(Lcom/alibaba/adi/collie/model/service/ImageData;)V

    .line 587
    sget-object v2, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;->IMAGE_FUNNY:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->setTag(Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v0           #data:Lcom/alibaba/adi/collie/model/service/ImageFunnyData;
    :goto_0
    return-object v0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ServiceDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImageFunnyJokeListFromJsonstr(Ljava/lang/String;Z)Ljava/util/List;
    .locals 11
    .parameter "jsonStr"
    .parameter "saveDate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    if-nez p0, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-object v1

    .line 649
    :cond_1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 650
    .local v7, jsonObject:Lorg/json/JSONObject;
    const-string v8, "end"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 651
    const-string v8, "end"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, endtime:Ljava/lang/String;
    const-string v8, "joke_last_endtime"

    invoke-static {v8, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .end local v3           #endtime:Ljava/lang/String;
    :cond_2
    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 656
    .local v5, jsonArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 657
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 658
    .local v6, jsonEntry:Lorg/json/JSONObject;
    const-string v8, "category"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, category:Ljava/lang/String;
    const-string v8, "joke"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 660
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getJokeListFromJsonStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 656
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 661
    :cond_4
    const-string v8, "image_funny"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 662
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getImageFunnyListFromJsonStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 665
    .end local v0           #category:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v6           #jsonEntry:Lorg/json/JSONObject;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 666
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "ServiceDataParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "xhh"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getImageFunnyListFromJsonStr(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/ImageFunnyData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v3, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyData;>;"
    if-nez p0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-object v3

    .line 551
    :cond_1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 552
    .local v7, jsonObject:Lorg/json/JSONObject;
    const-string v8, "category"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, category:Ljava/lang/String;
    const-string v8, "image_funny"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 556
    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 558
    .local v2, dataArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 559
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 560
    .local v6, jsonEntry:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getImageFunnyFromJson(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/ImageFunnyData;

    move-result-object v1

    .line 561
    .local v1, data:Lcom/alibaba/adi/collie/model/service/ImageFunnyData;
    if-eqz v1, :cond_2

    .line 562
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 565
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #data:Lcom/alibaba/adi/collie/model/service/ImageFunnyData;
    .end local v2           #dataArray:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v6           #jsonEntry:Lorg/json/JSONObject;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 566
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "ServiceDataParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "xhh: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getJokeFromJson(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/JokeData;
    .locals 5
    .parameter "jsonEntry"

    .prologue
    .line 624
    :try_start_0
    new-instance v0, Lcom/alibaba/adi/collie/model/service/JokeData;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/service/JokeData;-><init>()V

    .line 625
    .local v0, data:Lcom/alibaba/adi/collie/model/service/JokeData;
    const-string v2, "display_time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setDisplay_time(Ljava/lang/String;)V

    .line 626
    const-string v2, "toutiao_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setToutiao_url(Ljava/lang/String;)V

    .line 627
    const-string v2, "toutiao_wap_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setToutiao_wap_url(Ljava/lang/String;)V

    .line 628
    const-string v2, "bury_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setBury_count(I)V

    .line 629
    const-string v2, "digg_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setDigg_count(I)V

    .line 630
    const-string v2, "content"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setContent(Ljava/lang/String;)V

    .line 631
    const-string v2, "comment_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setComment_count(I)V

    .line 632
    const-string v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setType(I)V

    .line 633
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setId(Ljava/lang/String;)V

    .line 634
    const-string v2, "favorite_count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setFavorite_count(I)V

    .line 635
    sget-object v2, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;->JOKE:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/JokeData;->setTag(Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v0           #data:Lcom/alibaba/adi/collie/model/service/JokeData;
    :goto_0
    return-object v0

    .line 637
    :catch_0
    move-exception v1

    .line 638
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ServiceDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getJokeListFromJsonStr(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/JokeData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v3, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/JokeData;>;"
    if-nez p0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-object v3

    .line 601
    :cond_1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 602
    .local v7, jsonObject:Lorg/json/JSONObject;
    const-string v8, "category"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, category:Ljava/lang/String;
    const-string v8, "joke"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 606
    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 608
    .local v2, dataArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 609
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 610
    .local v6, jsonEntry:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getJokeFromJson(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/JokeData;

    move-result-object v1

    .line 611
    .local v1, data:Lcom/alibaba/adi/collie/model/service/JokeData;
    if-eqz v1, :cond_2

    .line 612
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 616
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #data:Lcom/alibaba/adi/collie/model/service/JokeData;
    .end local v2           #dataArray:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v6           #jsonEntry:Lorg/json/JSONObject;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 617
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "ServiceDataParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "xhh: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNewsDataFromJsonStr(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/NewsData;
    .locals 10
    .parameter "jsonEntry"

    .prologue
    const/4 v6, 0x0

    .line 290
    if-nez p0, :cond_0

    move-object v3, v6

    .line 319
    :goto_0
    return-object v3

    .line 294
    :cond_0
    :try_start_0
    new-instance v3, Lcom/alibaba/adi/collie/model/service/NewsData;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/model/service/NewsData;-><init>()V

    .line 295
    .local v3, newsData:Lcom/alibaba/adi/collie/model/service/NewsData;
    const-string v7, "id"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/model/service/NewsData;->setId(Ljava/lang/String;)V

    .line 297
    const-string v7, "display_time"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/model/service/NewsData;->setDisplay_time(Ljava/lang/String;)V

    .line 298
    const-string v7, "title"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/model/service/NewsData;->setTitle(Ljava/lang/String;)V

    .line 299
    const-string v7, "url"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/model/service/NewsData;->setUrl(Ljava/lang/String;)V

    .line 300
    const-string v7, "site"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/model/service/NewsData;->setSite(Ljava/lang/String;)V

    .line 301
    const-string v7, "abstract"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/model/service/NewsData;->setSummary(Ljava/lang/String;)V

    .line 302
    const-string v7, "app_open_url"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/model/service/NewsData;->setApp_open_url(Ljava/lang/String;)V

    .line 303
    const-string v7, "toutiao_wap_url"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/adi/collie/model/service/NewsData;->setToutiao_wap_url(Ljava/lang/String;)V

    .line 304
    const-string v7, "images"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 305
    .local v4, subImageArray:Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v5, subImageList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageData;>;"
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v2, v7, :cond_1

    .line 312
    invoke-virtual {v3, v5}, Lcom/alibaba/adi/collie/model/service/NewsData;->setImages(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 314
    .end local v2           #k:I
    .end local v3           #newsData:Lcom/alibaba/adi/collie/model/service/NewsData;
    .end local v4           #subImageArray:Lorg/json/JSONArray;
    .end local v5           #subImageList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageData;>;"
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Lorg/json/JSONException;
    const-string v7, "ServiceDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #e:Lorg/json/JSONException;
    :goto_2
    move-object v3, v6

    .line 319
    goto :goto_0

    .line 307
    .restart local v2       #k:I
    .restart local v3       #newsData:Lcom/alibaba/adi/collie/model/service/NewsData;
    .restart local v4       #subImageArray:Lorg/json/JSONArray;
    .restart local v5       #subImageList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageData;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getImageDataFromJsonObject(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/ImageData;

    move-result-object v1

    .line 308
    .local v1, imageData:Lcom/alibaba/adi/collie/model/service/ImageData;
    if-eqz v1, :cond_2

    .line 309
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    .end local v1           #imageData:Lcom/alibaba/adi/collie/model/service/ImageData;
    .end local v2           #k:I
    .end local v3           #newsData:Lcom/alibaba/adi/collie/model/service/NewsData;
    .end local v4           #subImageArray:Lorg/json/JSONArray;
    .end local v5           #subImageList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageData;>;"
    :catch_1
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ServiceDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getNewsDataListFromJsonStr(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/NewsData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    if-nez p0, :cond_0

    move-object v2, v1

    .line 269
    .end local v1           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    .local v2, dataList:Ljava/lang/Object;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    :goto_0
    return-object v2

    .line 240
    .end local v2           #dataList:Ljava/lang/Object;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    .restart local v1       #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    :cond_0
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    .local v7, jsonObject:Lorg/json/JSONObject;
    const-string v9, "status"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 242
    const-string v9, "status"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 243
    .local v8, status:I
    const/16 v9, 0x19b

    if-eq v8, v9, :cond_1

    const/16 v9, 0x19c

    if-ne v8, v9, :cond_3

    .line 244
    :cond_1
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/alibaba/adi/collie/business/adiserver/AdiPersistence;->setNewsRegistered(Z)V

    .line 245
    new-instance v9, Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException;

    invoke-direct {v9}, Lcom/alibaba/adi/collie/business/ServiceDataParser$ToutiaoTokenInvalidException;-><init>()V

    throw v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 264
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v8           #status:I
    :catch_0
    move-exception v3

    .line 265
    .local v3, e:Lorg/json/JSONException;
    const-string v9, "ServiceDataParser"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "xhh "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #e:Lorg/json/JSONException;
    :cond_2
    :goto_1
    move-object v2, v1

    .line 269
    .restart local v2       #dataList:Ljava/lang/Object;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    goto :goto_0

    .line 250
    .end local v2           #dataList:Ljava/lang/Object;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string v9, "endtime"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 251
    const-string v9, "endtime"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, endtime:Ljava/lang/String;
    const-string v9, "news_last_endtime"

    invoke-static {v9, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v4           #endtime:Ljava/lang/String;
    :cond_4
    const-string v9, "data"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 255
    .local v0, dataArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 256
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 257
    .local v6, jsonNews:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getNewsDataListFromSingleNewsBlock(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 255
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 259
    .end local v0           #dataArray:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v6           #jsonNews:Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 260
    .restart local v3       #e:Lorg/json/JSONException;
    :try_start_2
    const-string v9, "ServiceDataParser"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "xhh "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {v7}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getNewsDataListFromSingleNewsBlock(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_1

    .line 266
    .end local v3           #e:Lorg/json/JSONException;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    .line 267
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "ServiceDataParser"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "xhh "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getNewsDataListFromSingleNewsBlock(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/NewsData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    const-string v6, "category"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, category:Ljava/lang/String;
    const-string v6, "news"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 286
    :cond_0
    return-object v1

    .line 278
    :cond_1
    const-string v6, "data"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 279
    .local v4, listsArray:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 280
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 281
    .local v3, jsonEntry:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getNewsDataFromJsonStr(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/NewsData;

    move-result-object v5

    .line 282
    .local v5, newsData:Lcom/alibaba/adi/collie/model/service/NewsData;
    if-eqz v5, :cond_2

    .line 283
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getTaoItems(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .parameter "itemArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoItem;>;"
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 499
    return-object v3

    .line 483
    :cond_0
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 484
    .local v2, itemObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/alibaba/adi/collie/model/service/TaoItem;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/model/service/TaoItem;-><init>()V

    .line 485
    .local v1, item:Lcom/alibaba/adi/collie/model/service/TaoItem;
    const-string v5, "orderId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/adi/collie/model/service/TaoItem;->setOrderId(J)V

    .line 486
    const-string v5, "auctionId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/adi/collie/model/service/TaoItem;->setAuctionId(J)V

    .line 487
    const-string v5, "auctionTitle"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/model/service/TaoItem;->setAuctionTitle(Ljava/lang/String;)V

    .line 488
    const-string v5, "auctionPrice"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/model/service/TaoItem;->setAuctionPrice(I)V

    .line 489
    const-string v5, "auctionPictUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/model/service/TaoItem;->setAuctionPictUrl(Ljava/lang/String;)V

    .line 490
    const-string v5, "sellerId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/adi/collie/model/service/TaoItem;->setSellerId(J)V

    .line 491
    const-string v5, "wap_detail"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 492
    const-string v5, "wap_detail"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/adi/collie/model/service/TaoItem;->setWapDetail(Ljava/lang/String;)V

    .line 494
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v1           #item:Lcom/alibaba/adi/collie/model/service/TaoItem;
    .end local v2           #itemObj:Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ServiceDataParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "xhh "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getTaoTrackingData(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
    .locals 9
    .parameter "jsonEntry"

    .prologue
    .line 427
    new-instance v0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;-><init>()V

    .line 429
    .local v0, data:Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
    :try_start_0
    const-string v6, "tb_tracking"

    const-string v7, "display_time"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->setDisplayTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v6, "display_time"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->setPublishTime(Ljava/lang/String;)V

    .line 431
    const-string v6, "logisticsCompanyName"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->setLogisticsCompanyName(Ljava/lang/String;)V

    .line 432
    const-string v6, "logisticsInvoiceNo"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->setLogisticsInvoiceNo(Ljava/lang/String;)V

    .line 433
    const-string v6, "logisticsModifiedTime"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->setLogisticsModifiedTime(Ljava/lang/String;)V

    .line 434
    const-string v6, "totalItems"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->setTotalItems(I)V

    .line 435
    const-string v6, "items"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 436
    .local v2, itemArray:Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoItems(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 437
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoItem;>;"
    invoke-virtual {v0, v3}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->setItems(Ljava/util/List;)V

    .line 439
    const-string v6, "lastTransitSteps"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 440
    .local v5, stepObj:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoTransitStep(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/TaoTransitStep;

    move-result-object v4

    .line 441
    .local v4, lastStep:Lcom/alibaba/adi/collie/model/service/TaoTransitStep;
    invoke-virtual {v0, v4}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->setLastTransitSteps(Lcom/alibaba/adi/collie/model/service/TaoTransitStep;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v2           #itemArray:Lorg/json/JSONArray;
    .end local v3           #items:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoItem;>;"
    .end local v4           #lastStep:Lcom/alibaba/adi/collie/model/service/TaoTransitStep;
    .end local v5           #stepObj:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, e:Lorg/json/JSONException;
    const-string v6, "ServiceDataParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "xhh "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTaoTrackingDataListFromJson(Lorg/json/JSONObject;Z)Ljava/util/List;
    .locals 14
    .parameter "json"
    .parameter "checkNew"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    if-nez p0, :cond_1

    .line 368
    const/4 v10, 0x0

    .line 409
    :cond_0
    :goto_0
    return-object v10

    .line 371
    :cond_1
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v10, taoTrackingDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    const-string v11, "category"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 374
    invoke-static {p0}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoTrackingDataListFromSingleBlock(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v10

    .line 390
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    .line 392
    const-string v11, "tb_tracking_new_ids"

    const-string v12, ""

    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, newIds:Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 394
    .local v6, idList:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v11, v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v11, :cond_0

    .line 396
    :try_start_1
    aget-object v11, v6, v4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 397
    .local v5, id:I
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->setNew(Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    .end local v5           #id:I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 377
    .end local v4           #i:I
    .end local v6           #idList:[Ljava/lang/String;
    .end local v8           #newIds:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v11, "data"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 378
    .local v7, jsonArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v4, v11, :cond_4

    .line 384
    const-string v11, "endtime"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 385
    const-string v11, "endtime"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, endtime:Ljava/lang/String;
    const-string v11, "tb_tranking_last_endtime"

    invoke-static {v11, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 407
    .end local v3           #endtime:Ljava/lang/String;
    .end local v4           #i:I
    .end local v7           #jsonArray:Lorg/json/JSONArray;
    .end local v10           #taoTrackingDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Lorg/json/JSONException;
    const-string v11, "ServiceDataParser"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "xhh: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v10, 0x0

    goto :goto_0

    .line 379
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v4       #i:I
    .restart local v7       #jsonArray:Lorg/json/JSONArray;
    .restart local v10       #taoTrackingDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    :cond_4
    :try_start_3
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoTrackingDataListFromSingleBlock(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v9

    .line 380
    .local v9, subList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    if-eqz v9, :cond_5

    .line 381
    invoke-interface {v10, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 398
    .end local v7           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #subList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    .restart local v6       #idList:[Ljava/lang/String;
    .restart local v8       #newIds:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 399
    .local v1, e1:Ljava/lang/NumberFormatException;
    const-string v11, "ServiceDataParser"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 400
    .end local v1           #e1:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v2

    .line 401
    .local v2, e2:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v11, "ServiceDataParser"

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method public static getTaoTrackingDataListFromJsonStr(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .parameter "jsonStr"
    .parameter "checkNew"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 414
    if-nez p0, :cond_0

    .line 422
    :goto_0
    return-object v2

    .line 418
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    .local v1, jsonObject:Lorg/json/JSONObject;
    invoke-static {v1, p1}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoTrackingDataListFromJson(Lorg/json/JSONObject;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 420
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ServiceDataParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xhh: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getTaoTrackingDataListFromSingleBlock(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 346
    :try_start_0
    const-string v8, "category"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, category:Ljava/lang/String;
    const-string v8, "tb_tracking"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v6, v7

    .line 361
    .end local v0           #category:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 350
    .restart local v0       #category:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v6, taoTrackingDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    const-string v8, "data"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 352
    .local v4, jsonArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 353
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 354
    .local v5, jsonEntry:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoTrackingData(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    move-result-object v1

    .line 355
    .local v1, data:Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
    if-eqz v1, :cond_2

    .line 356
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 360
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #data:Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
    .end local v3           #i:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #jsonEntry:Lorg/json/JSONObject;
    .end local v6           #taoTrackingDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    :catch_0
    move-exception v2

    .local v2, e:Lorg/json/JSONException;
    move-object v6, v7

    .line 361
    goto :goto_0
.end method

.method private static getTaoTransitStep(Lorg/json/JSONObject;)Lcom/alibaba/adi/collie/model/service/TaoTransitStep;
    .locals 5
    .parameter "stepObj"

    .prologue
    .line 459
    new-instance v1, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;-><init>()V

    .line 461
    .local v1, lastStep:Lcom/alibaba/adi/collie/model/service/TaoTransitStep;
    :try_start_0
    const-string v2, "eventType"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->setEventType(I)V

    .line 462
    const-string v2, "statusDesc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->setStatusDesc(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 467
    :try_start_1
    const-string v2, "nodeDescription"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->setNodeDescription(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 472
    :goto_0
    :try_start_2
    const-string v2, "statusTime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->setStatusTime(Ljava/lang/String;)V

    .line 476
    :goto_1
    return-object v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "ServiceDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->setNodeDescription(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 473
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 474
    .restart local v0       #e:Lorg/json/JSONException;
    const-string v2, "ServiceDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getWeatherDataFromJsonStr(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/service/WeatherData;
    .locals 10
    .parameter "jsonStr"

    .prologue
    const/4 v6, 0x0

    .line 503
    new-instance v1, Lcom/alibaba/adi/collie/model/service/WeatherData;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/model/service/WeatherData;-><init>()V

    .line 504
    .local v1, data:Lcom/alibaba/adi/collie/model/service/WeatherData;
    if-nez p0, :cond_0

    move-object v1, v6

    .line 542
    .end local v1           #data:Lcom/alibaba/adi/collie/model/service/WeatherData;
    :goto_0
    return-object v1

    .line 508
    .restart local v1       #data:Lcom/alibaba/adi/collie/model/service/WeatherData;
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 509
    .local v5, jsonObject:Lorg/json/JSONObject;
    const-string v7, "category"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, category:Ljava/lang/String;
    const-string v7, "weather"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v1, v6

    .line 511
    goto :goto_0

    .line 513
    :cond_1
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 514
    .local v3, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 515
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 516
    .local v4, jsonEntry:Lorg/json/JSONObject;
    const-string v7, "tmp"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setTmp(Ljava/lang/String;)V

    .line 517
    const-string v7, "dl"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setDl(Ljava/lang/String;)V

    .line 518
    const-string v7, "ltmp"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setLtmp(Ljava/lang/String;)V

    .line 519
    const-string v7, "gdt"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setGdt(Ljava/lang/String;)V

    .line 520
    const-string v7, "wid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setWid(Ljava/lang/String;)V

    .line 521
    const-string v7, "wd"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setWd(Ljava/lang/String;)V

    .line 522
    const-string v7, "ss"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setSs(Ljava/lang/String;)V

    .line 523
    const-string v7, "hum"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setHum(Ljava/lang/String;)V

    .line 524
    const-string v7, "uvidx"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setUvidx(Ljava/lang/String;)V

    .line 525
    const-string v7, "htmp"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setHtmp(Ljava/lang/String;)V

    .line 526
    const-string v7, "wdir"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setWdir(Ljava/lang/String;)V

    .line 527
    const-string v7, "sr"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setSr(Ljava/lang/String;)V

    .line 528
    const-string v7, "display_time"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setPublishTime(Ljava/lang/String;)V

    .line 529
    const-string v7, "location"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setLocation(Ljava/lang/String;)V

    .line 530
    const-string v7, "wl"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setWl(Ljava/lang/String;)V

    .line 531
    const-string v7, "ldt"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setLdt(Ljava/lang/String;)V

    .line 532
    const-string v7, "upt"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setUpt(Ljava/lang/String;)V

    .line 533
    const-string v7, "type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setType(I)V

    .line 534
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/adi/collie/model/service/WeatherData;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 537
    .end local v0           #category:Ljava/lang/String;
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #jsonEntry:Lorg/json/JSONObject;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 538
    .local v2, e:Lorg/json/JSONException;
    const-string v7, "ServiceDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #e:Lorg/json/JSONException;
    :cond_2
    :goto_1
    move-object v1, v6

    .line 542
    goto/16 :goto_0

    .line 539
    :catch_1
    move-exception v2

    .line 540
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "ServiceDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getYuebaoListFromJsonStr(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/YuebaoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    if-nez p0, :cond_0

    move-object v1, v0

    .line 728
    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    .local v1, dataList:Ljava/lang/Object;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    :goto_0
    return-object v1

    .line 708
    .end local v1           #dataList:Ljava/lang/Object;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 709
    .local v5, jsonObject:Lorg/json/JSONObject;
    const-string v7, "category"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 711
    invoke-static {v5}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getYuebaoListFromSingleBlock(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 722
    :cond_1
    if-eqz v0, :cond_2

    .line 723
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .end local v5           #jsonObject:Lorg/json/JSONObject;
    :cond_2
    :goto_1
    move-object v1, v0

    .line 728
    .restart local v1       #dataList:Ljava/lang/Object;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    goto :goto_0

    .line 714
    .end local v1           #dataList:Ljava/lang/Object;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :cond_3
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 715
    .local v4, jsonArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 716
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getYuebaoListFromSingleBlock(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v6

    .line 717
    .local v6, subDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    if-eqz v6, :cond_4

    .line 718
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 725
    .end local v3           #i:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .end local v6           #subDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    :catch_0
    move-exception v2

    .line 726
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "ServiceDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "xhh "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getYuebaoListFromSingleBlock(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 11
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/YuebaoData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 673
    :try_start_0
    const-string v8, "category"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, category:Ljava/lang/String;
    const-string v8, "yuebao"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v2, v7

    .line 698
    .end local v0           #category:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 677
    .restart local v0       #category:Ljava/lang/String;
    :cond_1
    const-string v8, "data"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 678
    .local v5, jsonArray:Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v2, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-ge v4, v8, :cond_0

    .line 681
    :try_start_1
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 682
    .local v6, jsonEntry:Lorg/json/JSONObject;
    new-instance v1, Lcom/alibaba/adi/collie/model/service/YuebaoData;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/model/service/YuebaoData;-><init>()V

    .line 683
    .local v1, data:Lcom/alibaba/adi/collie/model/service/YuebaoData;
    const-string v8, "date"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->setDate(Ljava/lang/String;)V

    .line 684
    const-string v8, "wfsy"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->setWfsy(D)V

    .line 685
    const-string v8, "qrnh"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->setQrnh(D)V

    .line 686
    const-string v8, "display_time"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->setPublishTime(Ljava/lang/String;)V

    .line 687
    const-string v8, "yuebao"

    const-string v9, "display_time"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->setDisplayTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v8, "type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->setType(I)V

    .line 689
    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->setId(Ljava/lang/String;)V

    .line 690
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 679
    .end local v1           #data:Lcom/alibaba/adi/collie/model/service/YuebaoData;
    .end local v6           #jsonEntry:Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 691
    :catch_0
    move-exception v3

    .line 692
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "ServiceDataParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "xhh "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 696
    .end local v0           #category:Ljava/lang/String;
    .end local v2           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    .line 697
    .local v3, e:Lorg/json/JSONException;
    const-string v8, "ServiceDataParser"

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    .line 698
    goto/16 :goto_0
.end method

.method public static parseServiceData(Ljava/lang/String;[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)Z
    .locals 18
    .parameter "jsonStr"
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException;
        }
    .end annotation

    .prologue
    .line 49
    if-nez p0, :cond_1

    .line 50
    const/4 v11, 0x0

    .line 121
    :cond_0
    :goto_0
    return v11

    .line 52
    :cond_1
    const-string v14, "ServiceDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "xhh: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v6, jsonObject:Lorg/json/JSONObject;
    const-string v14, "status"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 56
    .local v12, status:I
    if-eqz v12, :cond_4

    .line 57
    const-string v14, "ServiceDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "xhh: status "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/16 v14, 0x68

    if-eq v12, v14, :cond_2

    const/16 v14, 0xc9

    if-eq v12, v14, :cond_2

    const/16 v14, 0xd1

    if-eq v12, v14, :cond_2

    .line 60
    const/16 v14, 0xd2

    if-ne v12, v14, :cond_3

    .line 61
    :cond_2
    new-instance v14, Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException;

    invoke-direct {v14}, Lcom/alibaba/adi/collie/business/taobao/login/TaoSessionInvalidException;-><init>()V

    throw v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v12           #status:I
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Lorg/json/JSONException;
    const-string v14, "ServiceDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "xhh: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v11, 0x0

    goto :goto_0

    .line 63
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    .restart local v12       #status:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 66
    :cond_4
    :try_start_1
    const-string v14, "data"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 67
    .local v10, listsArray:Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v7, jsonTbTracking:Lorg/json/JSONObject;
    const-string v14, "data"

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v9, jsonYuebao:Lorg/json/JSONObject;
    const-string v14, "data"

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const/4 v8, 0x0

    .line 75
    .local v8, jsonWeather:Lorg/json/JSONObject;
    const-string v14, "ServiceDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "listArray.length = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v3, v14, :cond_6

    .line 98
    if-nez p1, :cond_5

    .line 99
    invoke-static {}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->values()[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    move-result-object p1

    .line 101
    :cond_5
    const/4 v11, 0x1

    .line 102
    .local v11, ret:Z
    move-object/from16 v0, p1

    array-length v15, v0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_0

    aget-object v13, p1, v14

    .line 103
    .local v13, t:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    invoke-static {}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->$SWITCH_TABLE$com$alibaba$adi$collie$business$adiserver$sync$AdiSyncManager$TypeGet()[I

    move-result-object v16

    invoke-virtual {v13}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->ordinal()I

    move-result v17

    aget v16, v16, v17
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    packed-switch v16, :pswitch_data_0

    .line 102
    :goto_3
    :pswitch_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 78
    .end local v11           #ret:Z
    .end local v13           #t:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    :cond_6
    :try_start_2
    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 79
    .local v5, jsonEntry:Lorg/json/JSONObject;
    const-string v14, "category"

    const-string v15, ""

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, category:Ljava/lang/String;
    const-string v14, "data"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 81
    .local v4, jsonDataArray:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-nez v14, :cond_8

    .line 76
    .end local v1           #category:Ljava/lang/String;
    .end local v4           #jsonDataArray:Lorg/json/JSONArray;
    .end local v5           #jsonEntry:Lorg/json/JSONObject;
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    .restart local v1       #category:Ljava/lang/String;
    .restart local v4       #jsonDataArray:Lorg/json/JSONArray;
    .restart local v5       #jsonEntry:Lorg/json/JSONObject;
    :cond_8
    const-string v14, "ServiceDataParser"

    const-string v15, "vliux category =(%s)"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v1, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v14, "tb_tracking"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 86
    const-string v14, "data"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 93
    .end local v1           #category:Ljava/lang/String;
    .end local v4           #jsonDataArray:Lorg/json/JSONArray;
    .end local v5           #jsonEntry:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 94
    .restart local v2       #e:Lorg/json/JSONException;
    :try_start_3
    const-string v14, "ServiceDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "xhh: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 119
    .end local v2           #e:Lorg/json/JSONException;
    .end local v3           #i:I
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v7           #jsonTbTracking:Lorg/json/JSONObject;
    .end local v8           #jsonWeather:Lorg/json/JSONObject;
    .end local v9           #jsonYuebao:Lorg/json/JSONObject;
    .end local v10           #listsArray:Lorg/json/JSONArray;
    .end local v12           #status:I
    :catch_2
    move-exception v2

    .line 120
    .local v2, e:Ljava/lang/Exception;
    const-string v14, "ServiceDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "xhh: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 87
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #category:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #jsonDataArray:Lorg/json/JSONArray;
    .restart local v5       #jsonEntry:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    .restart local v7       #jsonTbTracking:Lorg/json/JSONObject;
    .restart local v8       #jsonWeather:Lorg/json/JSONObject;
    .restart local v9       #jsonYuebao:Lorg/json/JSONObject;
    .restart local v10       #listsArray:Lorg/json/JSONArray;
    .restart local v12       #status:I
    :cond_9
    :try_start_4
    const-string v14, "weather"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 88
    move-object v8, v5

    .line 89
    goto :goto_4

    :cond_a
    const-string v14, "yuebao"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 90
    const-string v14, "data"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 105
    .end local v1           #category:Ljava/lang/String;
    .end local v4           #jsonDataArray:Lorg/json/JSONArray;
    .end local v5           #jsonEntry:Lorg/json/JSONObject;
    .restart local v11       #ret:Z
    .restart local v13       #t:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    :pswitch_1
    :try_start_5
    invoke-static {v9}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->writeYuebaoData(Lorg/json/JSONObject;)Z

    move-result v16

    and-int v11, v11, v16

    .line 106
    goto/16 :goto_3

    .line 108
    :pswitch_2
    invoke-static {v7}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->writeTaoTrackingData(Lorg/json/JSONObject;)Z

    move-result v16

    and-int v11, v11, v16

    .line 109
    goto/16 :goto_3

    .line 111
    :pswitch_3
    invoke-static {v8}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->writeWeatherdata(Lorg/json/JSONObject;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v16

    and-int v11, v11, v16

    goto/16 :goto_3

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setDisplayTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "category"
    .parameter "time"

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p1, v1}, Lcom/alibaba/adi/collie/util/DateUtil;->getTimeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 450
    const-string v0, "tb_tracking"

    if-ne v0, p0, :cond_1

    .line 451
    const-string v0, "tb_tranking_display_time"

    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const-string v0, "yuebao"

    if-ne v0, p0, :cond_0

    .line 453
    const-string v0, "yuebao_display_time"

    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static writeImageFunnyJokeData(Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 3
    .parameter "jsonImageFunnyJoke"
    .parameter "jsonImageFunnyJokeArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 151
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 155
    const-string v1, "data"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    const/4 v2, 0x0

    .line 156
    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getImageFunnyJokeListFromJsonstr(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, jokeList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 159
    const-string v1, "ServiceDataParser"

    const-string v2, "xhh write joke"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "image_funny_joke_data"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorageSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "com.ali.collie.JOKE_NUM_CHANGE"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static writeTaoTrackingData(Lorg/json/JSONObject;)Z
    .locals 6
    .parameter "jsonTbTracking"

    .prologue
    const/4 v3, 0x0

    .line 168
    const-string v4, "tb_tracking_data"

    invoke-static {v4}, Lcom/alibaba/adi/collie/util/FileUtil;->readStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v4, v3}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoTrackingDataListFromJsonStr(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 169
    .local v2, oldList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    invoke-static {p0, v3}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getTaoTrackingDataListFromJson(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, newList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    invoke-static {v2, v0}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->calcTaoTrackingListDiff(Ljava/util/List;Ljava/util/List;)I

    move-result v1

    .line 171
    .local v1, notifyCount:I
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    if-lez v1, :cond_2

    .line 172
    :cond_0
    const-string v3, "ServiceDataParser"

    const-string v4, "xhh write tb_tracking"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "tb_tracking_data"

    .line 174
    if-nez p0, :cond_3

    const-string v3, ""

    .line 173
    :goto_0
    invoke-static {v4, v3}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorageSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-lez v1, :cond_1

    .line 176
    const-string v3, "com.adi.collie.TAOBAO_NUM_CHANGE"

    invoke-static {v3, v1}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    .line 178
    :cond_1
    const/4 v3, 0x1

    .line 180
    :cond_2
    return v3

    .line 174
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static writeWeatherdata(Lorg/json/JSONObject;)Z
    .locals 4
    .parameter "jsonWeather"

    .prologue
    const/4 v1, 0x0

    .line 184
    if-nez p0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getWeatherDataFromJsonStr(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/service/WeatherData;

    move-result-object v0

    .line 188
    .local v0, weatherData:Lcom/alibaba/adi/collie/model/service/WeatherData;
    if-eqz v0, :cond_0

    .line 189
    const-string v2, "ServiceDataParser"

    const-string v3, "xhh write weather"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "weather_data"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorageSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "com.ali.collie.WEATHER_CHANGE"

    invoke-static {v2, v1}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    .line 192
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static writeYuebaoData(Lorg/json/JSONObject;)Z
    .locals 7
    .parameter "jsonYuebao"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    if-nez p0, :cond_0

    move v4, v5

    .line 147
    :goto_0
    return v4

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getYuebaoListFromJsonStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 130
    .local v3, yuebaoList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 132
    const-string v4, "yuebao_data"

    invoke-static {v4}, Lcom/alibaba/adi/collie/util/FileUtil;->readStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v4}, Lcom/alibaba/adi/collie/business/ServiceDataParser;->getYuebaoListFromJsonStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, oldList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 134
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/adi/collie/model/service/YuebaoData;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, oldDate:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/adi/collie/model/service/YuebaoData;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/service/YuebaoData;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, newDate:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    const-string v4, "ServiceDataParser"

    const-string v5, "yuebao is the same with old, do nothing"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 138
    goto :goto_0

    .line 141
    .end local v0           #newDate:Ljava/lang/String;
    .end local v1           #oldDate:Ljava/lang/String;
    :cond_1
    const-string v4, "ServiceDataParser"

    const-string v5, "write yuebao data to file"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v4, "yuebao_data"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/FileUtil;->writeStorageSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v4, "ServiceDataParser"

    const-string v5, "send broadcast com.adi.collie.YUEBAO_CHANGE"

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v4, "com.adi.collie.YUEBAO_CHANGE"

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    move v4, v6

    .line 145
    goto :goto_0

    .end local v2           #oldList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/YuebaoData;>;"
    :cond_2
    move v4, v5

    .line 147
    goto :goto_0
.end method
