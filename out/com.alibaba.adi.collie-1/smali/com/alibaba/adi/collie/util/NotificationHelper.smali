.class public Lcom/alibaba/adi/collie/util/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field private static final MEIZU:Ljava/lang/String; = "meizu"

.field public static final SORT_LIMIT:Ljava/lang/String; = "date desc limit 99"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/alibaba/adi/collie/util/NotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static debugCurValues(Landroid/database/Cursor;)V
    .locals 10
    .parameter "cur"

    .prologue
    .line 469
    const-string v4, ""

    .line 470
    .local v4, output:Ljava/lang/String;
    const-string v0, "==============================================="

    .line 472
    .local v0, bar:Ljava/lang/String;
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 483
    :goto_1
    sget-object v6, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "xhh "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void

    .line 473
    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, columns:[Ljava/lang/String;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_2
    if-lt v6, v7, :cond_1

    .line 478
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 480
    .end local v2           #columns:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 481
    .local v3, e:Ljava/lang/Exception;
    sget-object v6, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 474
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #columns:[Ljava/lang/String;
    :cond_1
    :try_start_2
    aget-object v1, v2, v6

    .line 475
    .local v1, column:Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, value:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 474
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private static getCallIsReadLimit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    const-string v0, " and new=1"

    .line 187
    .local v0, is_read_limit:Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->useIsRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string v0, " and (new=1 or is_read=0 or is_read is null)"

    .line 190
    :cond_0
    return-object v0
.end method

.method private static getContactsNameFromAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 437
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v8, v3

    .line 457
    :cond_1
    :goto_0
    return-object v8

    .line 440
    :cond_2
    const/4 v8, 0x0

    .line 443
    .local v8, name:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v4

    .line 444
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 445
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 447
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 453
    :cond_3
    if-eqz v6, :cond_1

    .line 454
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 450
    :catch_0
    move-exception v7

    .line 451
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xhh "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    if-eqz v6, :cond_1

    .line 454
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 452
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 453
    if-eqz v6, :cond_4

    .line 454
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_4
    throw v0
.end method

.method public static getMissedCall(Landroid/content/Context;[I)Ljava/util/LinkedHashMap;
    .locals 25
    .parameter "context"
    .parameter "notifyCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/CallData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 98
    .local v10, callMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/CallData;>;>;"
    const-string v2, "date_call"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 99
    .local v19, lastDate:Ljava/lang/String;
    const/4 v15, 0x0

    .line 100
    .local v15, firstDate:Ljava/lang/String;
    const/16 v16, 0x1

    .line 101
    .local v16, firstFlag:Z
    const/4 v8, 0x1

    .line 110
    .local v8, afterFlag:Z
    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->getCallIsReadLimit()Ljava/lang/String;

    move-result-object v18

    .line 111
    .local v18, is_read_limit:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "number"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v4, v2

    .line 114
    .local v4, fields:[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " type=? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 116
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v24, "3"

    aput-object v24, v6, v7

    const-string v7, "date desc limit 99"

    .line 114
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 122
    .local v11, cur:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 182
    .end local v11           #cur:Landroid/database/Cursor;
    :goto_0
    return-object v10

    .line 117
    :catch_0
    move-exception v14

    .line 118
    .local v14, e:Ljava/lang/Exception;
    sget-object v2, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v11       #cur:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    .line 181
    :goto_2
    invoke-static {v15}, Lcom/alibaba/adi/collie/util/NotificationHelper;->saveCallDate(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    :try_start_3
    const-string v2, "name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 128
    .local v20, name:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/alibaba/adi/collie/util/NotificationHelper;->limitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 129
    const-string v2, "number"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 130
    .local v23, number:Ljava/lang/String;
    const-string v2, "date"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, date:Ljava/lang/String;
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v13, v2}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 132
    if-eqz v16, :cond_2

    .line 133
    move-object v15, v13

    .line 134
    const-string v2, "cache_date_call"

    invoke-static {v2, v13}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/16 v16, 0x0

    .line 137
    :cond_2
    if-eqz v8, :cond_4

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v19

    invoke-static {v13, v0, v2}, Lcom/alibaba/adi/collie/util/DateUtil;->after(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    const/4 v2, 0x0

    aget v3, p1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p1, v2

    .line 142
    :goto_3
    move-object/from16 v17, v23

    .line 143
    .local v17, from:Ljava/lang/String;
    if-eqz v20, :cond_5

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 144
    move-object/from16 v17, v20

    .line 163
    :cond_3
    :goto_4
    new-instance v9, Lcom/alibaba/adi/collie/model/CallData;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v13, v1}, Lcom/alibaba/adi/collie/model/CallData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v9, callData:Lcom/alibaba/adi/collie/model/CallData;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 165
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 172
    .end local v9           #callData:Lcom/alibaba/adi/collie/model/CallData;
    .end local v13           #date:Ljava/lang/String;
    .end local v17           #from:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v23           #number:Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 173
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "xhh "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 177
    :catch_2
    move-exception v14

    .line 178
    .local v14, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "xhh "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 140
    .end local v14           #e:Ljava/lang/RuntimeException;
    .restart local v13       #date:Ljava/lang/String;
    .restart local v20       #name:Ljava/lang/String;
    .restart local v23       #number:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 146
    .restart local v17       #from:Ljava/lang/String;
    :cond_5
    if-eqz v23, :cond_6

    :try_start_6
    const-string v2, ""

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 147
    :cond_6
    const v2, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v17

    .line 148
    goto :goto_4

    .line 153
    :cond_7
    :try_start_7
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 154
    .local v21, numLong:J
    const-wide/16 v2, 0x0

    cmp-long v2, v21, v2

    if-gtz v2, :cond_3

    .line 155
    const v2, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v17

    goto/16 :goto_4

    .line 157
    .end local v21           #numLong:J
    :catch_3
    move-exception v14

    .line 158
    .local v14, e:Ljava/lang/NumberFormatException;
    const v2, 0x7f0a0093

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 167
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #callData:Lcom/alibaba/adi/collie/model/CallData;
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v12, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/CallData;>;"
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_5

    .line 174
    .end local v9           #callData:Lcom/alibaba/adi/collie/model/CallData;
    .end local v12           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/CallData;>;"
    .end local v13           #date:Ljava/lang/String;
    .end local v17           #from:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v23           #number:Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 176
    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    .line 180
    :goto_6
    throw v2

    .line 177
    :catch_4
    move-exception v14

    .line 178
    .local v14, e:Ljava/lang/RuntimeException;
    sget-object v3, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xhh "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 177
    .end local v14           #e:Ljava/lang/RuntimeException;
    :catch_5
    move-exception v14

    .line 178
    .restart local v14       #e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "xhh "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static getMissedMms(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 30
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/MmsData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v22, Ljava/util/LinkedHashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashMap;-><init>()V

    .line 199
    .local v22, mmsMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/MmsData;>;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://mms"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date desc limit 99"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 207
    .local v14, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    if-eqz v14, :cond_0

    .line 267
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_0
    :goto_1
    return-object v22

    .line 208
    :cond_1
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, _id:Ljava/lang/String;
    const-string v3, "thread_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 210
    .local v28, thread_id:Ljava/lang/String;
    const-string v3, "date"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 211
    .local v18, date:Ljava/lang/String;
    const-string v3, "read"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 212
    .local v25, read:Ljava/lang/String;
    const-string v3, "seen"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 214
    .local v26, seen:Ljava/lang/String;
    const-string v10, ""

    .line 215
    .local v10, address:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://mms/addr"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "msg_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 215
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 217
    .local v15, curAddr:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    const-string v3, "contact_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, contact_id:Ljava/lang/String;
    const-string v3, "address"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 220
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/alibaba/adi/collie/util/NotificationHelper;->getContactsNameFromAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 221
    .local v23, name:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/alibaba/adi/collie/util/NotificationHelper;->limitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 222
    if-eqz v23, :cond_2

    const-string v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    move-object/from16 v10, v23

    .line 227
    .end local v13           #contact_id:Ljava/lang/String;
    .end local v23           #name:Ljava/lang/String;
    :cond_2
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 228
    new-instance v20, Lcom/alibaba/adi/collie/model/MmsData;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-direct {v0, v10, v1, v2}, Lcom/alibaba/adi/collie/model/MmsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v20, mmsData:Lcom/alibaba/adi/collie/model/MmsData;
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 230
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://mms/part"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 237
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 239
    .local v16, curPart:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    :cond_3
    const-string v3, "seq"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 242
    .local v27, seq:Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 243
    .local v24, partId:Ljava/lang/String;
    const-string v3, "ct"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 244
    .local v29, type:Ljava/lang/String;
    const-string v3, "text/plain"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 245
    const-string v3, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 247
    .local v17, data:Ljava/lang/String;
    if-eqz v17, :cond_8

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/NotificationHelper;->getMmsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, body:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/adi/collie/model/MmsData;->getParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v12           #body:Ljava/lang/String;
    .end local v17           #data:Ljava/lang/String;
    :cond_4
    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 207
    .end local v24           #partId:Ljava/lang/String;
    .end local v27           #seq:Ljava/lang/String;
    .end local v29           #type:Ljava/lang/String;
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 263
    .end local v9           #_id:Ljava/lang/String;
    .end local v10           #address:Ljava/lang/String;
    .end local v15           #curAddr:Landroid/database/Cursor;
    .end local v16           #curPart:Landroid/database/Cursor;
    .end local v18           #date:Ljava/lang/String;
    .end local v20           #mmsData:Lcom/alibaba/adi/collie/model/MmsData;
    .end local v25           #read:Ljava/lang/String;
    .end local v26           #seen:Ljava/lang/String;
    .end local v28           #thread_id:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 264
    .local v19, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xhh "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    if-eqz v14, :cond_0

    .line 267
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 232
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v9       #_id:Ljava/lang/String;
    .restart local v10       #address:Ljava/lang/String;
    .restart local v15       #curAddr:Landroid/database/Cursor;
    .restart local v18       #date:Ljava/lang/String;
    .restart local v20       #mmsData:Lcom/alibaba/adi/collie/model/MmsData;
    .restart local v25       #read:Ljava/lang/String;
    .restart local v26       #seen:Ljava/lang/String;
    .restart local v28       #thread_id:Ljava/lang/String;
    :cond_6
    :try_start_3
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v21, mmsDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/MmsData;>;"
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 265
    .end local v9           #_id:Ljava/lang/String;
    .end local v10           #address:Ljava/lang/String;
    .end local v15           #curAddr:Landroid/database/Cursor;
    .end local v18           #date:Ljava/lang/String;
    .end local v20           #mmsData:Lcom/alibaba/adi/collie/model/MmsData;
    .end local v21           #mmsDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/MmsData;>;"
    .end local v25           #read:Ljava/lang/String;
    .end local v26           #seen:Ljava/lang/String;
    .end local v28           #thread_id:Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 266
    if-eqz v14, :cond_7

    .line 267
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_7
    throw v3

    .line 251
    .restart local v9       #_id:Ljava/lang/String;
    .restart local v10       #address:Ljava/lang/String;
    .restart local v15       #curAddr:Landroid/database/Cursor;
    .restart local v16       #curPart:Landroid/database/Cursor;
    .restart local v17       #data:Ljava/lang/String;
    .restart local v18       #date:Ljava/lang/String;
    .restart local v20       #mmsData:Lcom/alibaba/adi/collie/model/MmsData;
    .restart local v24       #partId:Ljava/lang/String;
    .restart local v25       #read:Ljava/lang/String;
    .restart local v26       #seen:Ljava/lang/String;
    .restart local v27       #seq:Ljava/lang/String;
    .restart local v28       #thread_id:Ljava/lang/String;
    .restart local v29       #type:Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v3, "text"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #body:Ljava/lang/String;
    goto :goto_3

    .line 255
    .end local v12           #body:Ljava/lang/String;
    .end local v17           #data:Ljava/lang/String;
    :cond_9
    const-string v3, "image/jpeg"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "image/bmp"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "image/gif"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 256
    const-string v3, "image/jpg"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "image/png"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/NotificationHelper;->getMmsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 258
    .local v11, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/adi/collie/model/MmsData;->getParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4
.end method

.method public static getMissedSms(Landroid/content/Context;[I)Ljava/util/LinkedHashMap;
    .locals 24
    .parameter "context"
    .parameter "notifyCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/SmsData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v21, Ljava/util/LinkedHashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedHashMap;-><init>()V

    .line 325
    .local v21, smsMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;>;"
    const/16 v16, 0x1

    .line 326
    .local v16, firstFlag:Z
    const/4 v10, 0x1

    .line 327
    .local v10, afterFlag:Z
    const-string v3, "date_sms"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 328
    .local v17, lastDate:Ljava/lang/String;
    const/4 v15, 0x0

    .line 329
    .local v15, firstDate:Ljava/lang/String;
    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "address"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "body"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "thread_id"

    aput-object v4, v5, v3

    .line 332
    .local v5, fields:[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://sms"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 333
    const-string v6, "type=? and read=? "

    .line 334
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v23, "1"

    aput-object v23, v7, v8

    const/4 v8, 0x1

    const-string v23, "0"

    aput-object v23, v7, v8

    const-string v8, "date desc limit 99"

    .line 332
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 340
    .local v12, cur:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 388
    .end local v12           #cur:Landroid/database/Cursor;
    :goto_0
    return-object v21

    .line 335
    :catch_0
    move-exception v14

    .line 336
    .local v14, e:Ljava/lang/Exception;
    sget-object v3, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v12       #cur:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 387
    :goto_2
    invoke-static {v15}, Lcom/alibaba/adi/collie/util/NotificationHelper;->saveSmsDate(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_1
    :try_start_3
    const-string v3, "address"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, address:Ljava/lang/String;
    const-string v3, "date"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 351
    .local v13, date:Ljava/lang/String;
    const-string v3, "body"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 352
    .local v11, body:Ljava/lang/String;
    const-string v3, "thread_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 353
    .local v22, threadId:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/alibaba/adi/collie/util/NotificationHelper;->getContactsNameFromAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 354
    .local v18, name:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/alibaba/adi/collie/util/NotificationHelper;->limitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 355
    if-eqz v18, :cond_2

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 356
    move-object/from16 v9, v18

    .line 358
    :cond_2
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v13, v3}, Lcom/alibaba/adi/collie/util/DateUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 359
    if-eqz v16, :cond_3

    .line 360
    move-object v15, v13

    .line 361
    const-string v3, "cache_date_sms"

    invoke-static {v3, v13}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/16 v16, 0x0

    .line 364
    :cond_3
    if-eqz v10, :cond_4

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v17

    invoke-static {v13, v0, v3}, Lcom/alibaba/adi/collie/util/DateUtil;->after(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 365
    const/4 v3, 0x0

    aget v4, p1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, p1, v3

    .line 369
    :goto_3
    new-instance v19, Lcom/alibaba/adi/collie/model/SmsData;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v9, v13, v11, v1}, Lcom/alibaba/adi/collie/model/SmsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .local v19, smsData:Lcom/alibaba/adi/collie/model/SmsData;
    invoke-virtual/range {v21 .. v22}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 371
    invoke-virtual/range {v21 .. v22}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 378
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #body:Ljava/lang/String;
    .end local v13           #date:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #smsData:Lcom/alibaba/adi/collie/model/SmsData;
    .end local v22           #threadId:Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 379
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_4
    sget-object v3, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "xhh "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 382
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 383
    :catch_2
    move-exception v14

    .line 384
    .local v14, e:Ljava/lang/RuntimeException;
    sget-object v3, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "xhh "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 367
    .end local v14           #e:Ljava/lang/RuntimeException;
    .restart local v9       #address:Ljava/lang/String;
    .restart local v11       #body:Ljava/lang/String;
    .restart local v13       #date:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v22       #threadId:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 373
    .restart local v19       #smsData:Lcom/alibaba/adi/collie/model/SmsData;
    :cond_5
    :try_start_6
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v20, smsDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 380
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #body:Ljava/lang/String;
    .end local v13           #date:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #smsData:Lcom/alibaba/adi/collie/model/SmsData;
    .end local v20           #smsDataList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;"
    .end local v22           #threadId:Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 382
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 386
    :goto_5
    throw v3

    .line 383
    :catch_3
    move-exception v14

    .line 384
    .restart local v14       #e:Ljava/lang/RuntimeException;
    sget-object v4, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "xhh "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 383
    .end local v14           #e:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v14

    .line 384
    .restart local v14       #e:Ljava/lang/RuntimeException;
    sget-object v3, Lcom/alibaba/adi/collie/util/NotificationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "xhh "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static getMmsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "partId"

    .prologue
    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://mms/part/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 303
    .local v2, partURI:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 304
    .local v1, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 306
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 307
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 310
    if-eqz v1, :cond_0

    .line 312
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 317
    :cond_0
    :goto_0
    return-object v0

    .line 308
    :catch_0
    move-exception v3

    .line 310
    if-eqz v1, :cond_0

    .line 312
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 313
    :catch_1
    move-exception v3

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v3

    .line 310
    if-eqz v1, :cond_1

    .line 312
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 316
    :cond_1
    :goto_1
    throw v3

    .line 313
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private static getMmsText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "partId"

    .prologue
    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "content://mms/part/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 275
    .local v2, partURI:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 276
    .local v0, is:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v4, sb:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v1, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 281
    .local v1, isr:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 282
    .local v3, reader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 283
    .local v5, temp:Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_2

    .line 291
    .end local v1           #isr:Ljava/io/InputStreamReader;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v5           #temp:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 293
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 298
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 284
    .restart local v1       #isr:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v5       #temp:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_0

    .line 288
    .end local v1           #isr:Ljava/io/InputStreamReader;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v5           #temp:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 291
    if-eqz v0, :cond_1

    .line 293
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 294
    :catch_1
    move-exception v6

    goto :goto_1

    .line 290
    :catchall_0
    move-exception v6

    .line 291
    if-eqz v0, :cond_3

    .line 293
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 297
    :cond_3
    :goto_2
    throw v6

    .line 294
    :catch_2
    move-exception v7

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method private static limitName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 461
    const/16 v0, 0xa

    .line 462
    .local v0, limit:I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 465
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static declared-synchronized resetSmsCallNotify()V
    .locals 3

    .prologue
    .line 38
    const-class v1, Lcom/alibaba/adi/collie/util/NotificationHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication;->getNotificationInfo()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->getPhoneCallNotifyNum()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->saveCallDate()V

    .line 40
    const-string v0, "com.adi.collie.ACTION_PHONE_CALL_NUM_CHANGE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V

    .line 42
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication;->getNotificationInfo()Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/CoreApplication$NotificationInfo;->getSmsNotifyNum()I

    move-result v0

    if-lez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->saveSmsDate()V

    .line 44
    const-string v0, "com.adi.collie.ACTION_SMS_NUM_CHANGE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/adi/collie/broadcast/BroadcastHelper;->send(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    monitor-exit v1

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveCallDate()V
    .locals 4

    .prologue
    .line 62
    const-class v2, Lcom/alibaba/adi/collie/util/NotificationHelper;

    monitor-enter v2

    :try_start_0
    const-string v1, "cache_date_call"

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, callCacheDate:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const-string v1, "date_call"

    invoke-static {v1, v0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v2

    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveCallDate(Ljava/lang/String;)V
    .locals 4
    .parameter "firstDate"

    .prologue
    .line 73
    const-class v2, Lcom/alibaba/adi/collie/util/NotificationHelper;

    monitor-enter v2

    :try_start_0
    const-string v1, "date_call"

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, callDate:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    if-nez p0, :cond_0

    .line 76
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/DateUtil;->now(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    :cond_0
    const-string v1, "date_call"

    invoke-static {v1, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    monitor-exit v2

    return-void

    .line 73
    .end local v0           #callDate:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveSmsDate()V
    .locals 4

    .prologue
    .line 52
    const-class v2, Lcom/alibaba/adi/collie/util/NotificationHelper;

    monitor-enter v2

    :try_start_0
    const-string v1, "cache_date_sms"

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, smsCacheDate:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string v1, "date_sms"

    invoke-static {v1, v0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit v2

    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveSmsDate(Ljava/lang/String;)V
    .locals 4
    .parameter "firstDate"

    .prologue
    .line 87
    const-class v2, Lcom/alibaba/adi/collie/util/NotificationHelper;

    monitor-enter v2

    :try_start_0
    const-string v1, "date_sms"

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, smsDate:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    if-nez p0, :cond_0

    .line 90
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/DateUtil;->now(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 92
    :cond_0
    const-string v1, "date_sms"

    invoke-static {v1, p0}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    monitor-exit v2

    return-void

    .line 87
    .end local v0           #smsDate:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setCallNotifySeen(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 425
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "new"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->useIsRead()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    const-string v6, "is_read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "type=?"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/adi/collie/util/NotificationHelper;->getCallIsReadLimit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, where:Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    const-string v6, "3"

    aput-object v6, v2, v5

    .line 432
    .local v2, seletionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 433
    .local v0, count:I
    if-lez v0, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method public static setSmsNotifySeen(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 392
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 393
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    const-string v3, "type=? and read=? "

    .line 395
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v2, v5

    const-string v6, "0"

    aput-object v6, v2, v4

    .line 396
    .local v2, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://sms"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 397
    .local v0, count:I
    if-lez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public static setSmsNotifySeen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 401
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 402
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    const-string v3, "thread_id=?"

    .line 404
    .local v3, where:Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 405
    .local v2, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://sms"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 406
    .local v0, count:I
    if-lez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public static setSmsNotifySeen(Landroid/content/Context;Ljava/util/Set;)Z
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, threadIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 415
    .local v1, status:Z
    if-nez p1, :cond_0

    move v2, v1

    .line 421
    .end local v1           #status:Z
    .local v2, status:I
    :goto_0
    return v2

    .line 418
    .end local v2           #status:I
    .restart local v1       #status:Z
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v1

    .line 421
    .restart local v2       #status:I
    goto :goto_0

    .line 418
    .end local v2           #status:I
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    .local v0, id:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Lcom/alibaba/adi/collie/util/NotificationHelper;->setSmsNotifySeen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static useIsRead()Z
    .locals 2

    .prologue
    .line 194
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
