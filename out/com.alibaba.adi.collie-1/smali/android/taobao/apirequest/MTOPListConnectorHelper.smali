.class public Landroid/taobao/apirequest/MTOPListConnectorHelper;
.super Landroid/taobao/apirequest/MTOPConnectorHelper;
.source "MTOPListConnectorHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTOPListConnectorHelper"


# instance fields
.field private dataRestructor:Landroid/taobao/apirequest/IDataRestructor;

.field private mDataListKey:Ljava/lang/String;

.field private mExtKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalNumKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "baseUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, outputDOClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Landroid/taobao/apirequest/MTOPConnectorHelper;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getDataListKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->mDataListKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalNumKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->mTotalNumKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmExtKey()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->mExtKey:Ljava/util/List;

    return-object v0
.end method

.method public setDataListKey(Ljava/lang/String;)V
    .locals 0
    .parameter "dataListKey"

    .prologue
    .line 38
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->mDataListKey:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setDataRestructor(Landroid/taobao/apirequest/IDataRestructor;)V
    .locals 0
    .parameter "dataRestructor"

    .prologue
    .line 30
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->dataRestructor:Landroid/taobao/apirequest/IDataRestructor;

    .line 31
    return-void
.end method

.method public setTotalNumKey(Ljava/lang/String;)V
    .locals 0
    .parameter "totalNumKey"

    .prologue
    .line 53
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->mTotalNumKey:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setmExtKey(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, mExtKey:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->mExtKey:Ljava/util/List;

    .line 69
    return-void
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 18
    .parameter "all"

    .prologue
    .line 86
    new-instance v10, Landroid/taobao/common/dataobject/PageDataObject;

    invoke-direct {v10}, Landroid/taobao/common/dataobject/PageDataObject;-><init>()V

    .line 87
    .local v10, object:Landroid/taobao/common/dataobject/PageDataObject;
    if-eqz p1, :cond_d

    move-object/from16 v0, p1

    array-length v15, v0

    if-lez v15, :cond_d

    .line 88
    const-string v15, "MTOPListConnectorHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "tag:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "length:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/taobao/util/TaoLog;->Logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v9, 0x0

    .line 91
    .local v9, o:Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->outDOClass:Ljava/lang/Class;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/alibaba/fastjson/JSON;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 99
    .end local v9           #o:Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->object2ApiResult(Ljava/lang/Object;)Landroid/taobao/apirequest/ApiResult;

    move-result-object v11

    .line 102
    .local v11, result:Landroid/taobao/apirequest/ApiResult;
    iget-object v15, v11, Landroid/taobao/apirequest/ApiResult;->errCode:Ljava/lang/String;

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    .line 103
    iget-object v15, v11, Landroid/taobao/apirequest/ApiResult;->errDescription:Ljava/lang/String;

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->errStr:Ljava/lang/String;

    .line 110
    iput-object v11, v10, Landroid/taobao/common/dataobject/PageDataObject;->result:Landroid/taobao/apirequest/ApiResult;

    .line 112
    iget-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->result:Landroid/taobao/apirequest/ApiResult;

    invoke-virtual {v15}, Landroid/taobao/apirequest/ApiResult;->isApiSuccess()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, dataListKey:Ljava/lang/String;
    const/4 v14, 0x0

    .line 117
    .local v14, totalNumKey:Ljava/lang/String;
    :try_start_1
    const-string v15, "API_NAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->inputObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/taobao/apirequest/ReflectUtil;->getPublicFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->getDataListKey()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1

    const-string v3, "itemsArray"

    .line 120
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->getTotalNumKey()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2

    const-string v14, "totalResults"

    .line 121
    :goto_2
    invoke-static {v3, v9}, Landroid/taobao/apirequest/ReflectUtil;->getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/taobao/common/dataobject/ItemDataObject;

    check-cast v15, [Landroid/taobao/common/dataobject/ItemDataObject;

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    .line 122
    invoke-static {v14, v9}, Landroid/taobao/apirequest/ReflectUtil;->getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 123
    .local v13, tmp:Ljava/lang/Object;
    if-eqz v13, :cond_0

    .line 124
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iput v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    .end local v3           #dataListKey:Ljava/lang/String;
    .end local v11           #result:Landroid/taobao/apirequest/ApiResult;
    .end local v13           #tmp:Ljava/lang/Object;
    .end local v14           #totalNumKey:Ljava/lang/String;
    :cond_0
    :goto_3
    return-object v10

    .line 93
    .restart local v9       #o:Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 94
    .local v5, e:Ljava/lang/Exception;
    const-string v15, "MTOPListConnectorHelper"

    const-string v16, "PARSE EXCEPTION"

    invoke-static/range {v15 .. v16}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/16 v15, -0x3e8

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    .line 96
    const-string v15, "\u670d\u52a1\u7aef\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e"

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->errStr:Ljava/lang/String;

    goto :goto_0

    .line 119
    .end local v5           #e:Ljava/lang/Exception;
    .end local v9           #o:Ljava/lang/Object;
    .restart local v3       #dataListKey:Ljava/lang/String;
    .restart local v11       #result:Landroid/taobao/apirequest/ApiResult;
    .restart local v14       #totalNumKey:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->getDataListKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->getTotalNumKey()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 128
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->dataRestructor:Landroid/taobao/apirequest/IDataRestructor;

    if-eqz v15, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->dataRestructor:Landroid/taobao/apirequest/IDataRestructor;

    invoke-interface {v15, v9}, Landroid/taobao/apirequest/IDataRestructor;->restruct(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 130
    .local v12, tempO:Ljava/lang/Object;
    instance-of v15, v12, Landroid/taobao/common/dataobject/PageDataObject;

    if-eqz v15, :cond_0

    .line 131
    move-object v0, v12

    check-cast v0, Landroid/taobao/common/dataobject/PageDataObject;

    move-object v10, v0

    goto :goto_3

    .line 135
    .end local v12           #tempO:Ljava/lang/Object;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->getDataListKey()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_5

    const-string v3, "list"

    .line 136
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->getTotalNumKey()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_6

    const-string v14, "num"

    .line 139
    :goto_5
    const-string v15, "data"

    invoke-static {v15, v9}, Landroid/taobao/apirequest/ReflectUtil;->getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 140
    .local v2, data:Ljava/lang/Object;
    if-nez v2, :cond_7

    .line 141
    const/4 v15, 0x0

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 180
    .end local v2           #data:Ljava/lang/Object;
    :catch_1
    move-exception v5

    .line 181
    .restart local v5       #e:Ljava/lang/Exception;
    const/4 v15, 0x0

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    .line 182
    const/4 v15, -0x1

    iput v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    goto :goto_3

    .line 135
    .end local v5           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->getDataListKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 136
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/taobao/apirequest/MTOPListConnectorHelper;->getTotalNumKey()Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    .line 147
    .restart local v2       #data:Ljava/lang/Object;
    :cond_7
    invoke-static {v3, v2}, Landroid/taobao/apirequest/ReflectUtil;->getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 149
    .local v7, lists:Ljava/util/List;,"Ljava/util/List<*>;"
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_9

    .line 150
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    new-array v4, v15, [Landroid/taobao/common/dataobject/ItemDataObject;

    .line 151
    .local v4, datas:[Landroid/taobao/common/dataobject/ItemDataObject;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_8

    .line 152
    new-instance v15, Landroid/taobao/common/dataobject/ItemDataObject;

    invoke-direct {v15}, Landroid/taobao/common/dataobject/ItemDataObject;-><init>()V

    aput-object v15, v4, v6

    .line 153
    aget-object v15, v4, v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/taobao/common/dataobject/ItemDataObject;->setData(Ljava/lang/Object;)V

    .line 151
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 155
    :cond_8
    iput-object v4, v10, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    .line 163
    .end local v4           #datas:[Landroid/taobao/common/dataobject/ItemDataObject;
    .end local v6           #i:I
    :goto_7
    invoke-static {v14, v2}, Landroid/taobao/apirequest/ReflectUtil;->getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 164
    .restart local v13       #tmp:Ljava/lang/Object;
    if-eqz v13, :cond_0

    .line 165
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 166
    .local v6, i:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v0, v10, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_a

    .line 168
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iput v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    goto/16 :goto_3

    .line 158
    .end local v6           #i:Ljava/lang/Integer;
    .end local v13           #tmp:Ljava/lang/Object;
    :cond_9
    const/4 v15, 0x0

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    goto :goto_7

    .line 172
    .restart local v6       #i:Ljava/lang/Integer;
    .restart local v13       #tmp:Ljava/lang/Object;
    :cond_a
    const/4 v15, -0x2

    iput v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 186
    .end local v2           #data:Ljava/lang/Object;
    .end local v3           #dataListKey:Ljava/lang/String;
    .end local v6           #i:Ljava/lang/Integer;
    .end local v7           #lists:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v13           #tmp:Ljava/lang/Object;
    .end local v14           #totalNumKey:Ljava/lang/String;
    :cond_b
    const-string v8, ""

    .line 187
    .local v8, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->outDOClass:Ljava/lang/Class;

    if-eqz v15, :cond_c

    .line 189
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/taobao/apirequest/MTOPListConnectorHelper;->outDOClass:Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 191
    :cond_c
    invoke-static {v11, v8}, Landroid/taobao/apirequest/ApiResMonitor;->report(Landroid/taobao/apirequest/ApiResult;Ljava/lang/String;)V

    .line 193
    const/4 v15, 0x0

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->data:[Landroid/taobao/common/dataobject/ItemDataObject;

    .line 194
    const/4 v15, -0x1

    iput v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->totalnum:I

    goto/16 :goto_3

    .line 198
    .end local v8           #name:Ljava/lang/String;
    .end local v11           #result:Landroid/taobao/apirequest/ApiResult;
    :cond_d
    const-string v15, "MTOPListConnectorHelper"

    const-string v16, "PARSE INPUT PARMA IS NULL OR LENGHT = 0---"

    invoke-static/range {v15 .. v16}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/16 v15, -0x3e8

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->errorCode:Ljava/lang/String;

    .line 200
    const-string v15, "\u670d\u52a1\u7aef\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e!"

    iput-object v15, v10, Landroid/taobao/common/dataobject/PageDataObject;->errStr:Ljava/lang/String;

    goto/16 :goto_3
.end method
