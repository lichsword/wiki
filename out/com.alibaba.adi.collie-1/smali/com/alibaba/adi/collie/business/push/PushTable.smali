.class public Lcom/alibaba/adi/collie/business/push/PushTable;
.super Lcom/alibaba/adi/collie/util/db/DbTable;
.source "PushTable.java"


# static fields
.field public static final DB_COL_DATE_INTEGER_2:Ljava/lang/String; = "date"

.field public static final DB_COL_ET_TEXT_2:Ljava/lang/String; = "et"

.field public static final DB_COL_GID_TEXT_2:Ljava/lang/String; = "gid"

.field public static final DB_COL_ID_TEXT_2:Ljava/lang/String; = "id"

.field public static final DB_COL_JSON_TEXT_2:Ljava/lang/String; = "json"

.field public static final DB_COL_ST_TEXT_2:Ljava/lang/String; = "st"

.field public static final TAG:Ljava/lang/String; = "PushTable"


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/util/db/DbTable;-><init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V

    .line 31
    return-void
.end method

.method private getCurrentTime()I
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private msgExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "column"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v3

    .line 98
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v0, v3

    .line 99
    .local v0, columns:[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v2, cv:Landroid/content/ContentValues;
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v2, v5}, Lcom/alibaba/adi/collie/business/push/PushTable;->__select([Ljava/lang/String;Landroid/content/ContentValues;[I)Landroid/database/Cursor;

    move-result-object v1

    .line 102
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    move v3, v4

    .line 103
    .local v3, ret:Z
    :cond_2
    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public deleteMsg(Ljava/lang/String;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 112
    const-string v0, "id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/business/push/PushTable;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteMsg(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/adi/collie/business/push/PushTable;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteMsgAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0, v0}, Lcom/alibaba/adi/collie/business/push/PushTable;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 117
    return-void
.end method

.method public getMsgList(Z)Ljava/util/List;
    .locals 7
    .parameter "isDesc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 124
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "json"

    aput-object v4, v0, v5

    .line 125
    .local v0, columns:[Ljava/lang/String;
    invoke-virtual {p0, v0, v6, v6, p1}, Lcom/alibaba/adi/collie/business/push/PushTable;->__select([Ljava/lang/String;Landroid/content/ContentValues;[IZ)Landroid/database/Cursor;

    move-result-object v1

    .line 126
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 127
    .local v3, msgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #msgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .restart local v3       #msgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    :cond_0
    if-eqz v1, :cond_1

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_1
    return-object v3

    .line 131
    :cond_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, json:Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method protected getUpdateSql(II)Ljava/lang/String;
    .locals 1
    .parameter "oldVer"
    .parameter "newVer"

    .prologue
    .line 35
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/push/PushTable;->getCreateSql()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/adi/collie/util/db/DbTable;->getUpdateSql(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public gidExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "gid"

    .prologue
    .line 87
    const-string v0, "gid"

    invoke-direct {p0, v0, p1}, Lcom/alibaba/adi/collie/business/push/PushTable;->msgExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public idExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 91
    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/alibaba/adi/collie/business/push/PushTable;->msgExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public insertMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 47
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return v2

    .line 50
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :try_start_0
    const-string v3, "json"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const-string v2, "st"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getSt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    const-string v2, "et"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getEt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    const-string v2, "date"

    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/push/PushTable;->getCurrentTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v2, "gid"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getGid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/business/push/PushTable;->insert(Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Lcom/alibaba/fastjson/JSONException;
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTableCreated(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 43
    const-string v0, "PushTable"

    const-string v1, "PushTable onTableCreated"

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public updateMsg(Lcom/alibaba/adi/collie/model/push/PushMsg;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 67
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return v2

    .line 70
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :try_start_0
    const-string v3, "json"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const-string v3, "st"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getSt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    const-string v3, "et"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getEt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    const-string v3, "date"

    invoke-direct {p0}, Lcom/alibaba/adi/collie/business/push/PushTable;->getCurrentTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v3, "gid"

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getGid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "gid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getGid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v0, v3, v4}, Lcom/alibaba/adi/collie/business/push/PushTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Lcom/alibaba/fastjson/JSONException;
    sget-object v3, Lcom/alibaba/adi/collie/model/push/PushMsg;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_0
.end method
