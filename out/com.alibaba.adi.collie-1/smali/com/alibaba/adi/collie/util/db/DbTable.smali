.class public abstract Lcom/alibaba/adi/collie/util/db/DbTable;
.super Ljava/lang/Object;
.source "DbTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;
    }
.end annotation


# instance fields
.field protected final DB_COLUMN_PREFIX:Ljava/lang/String;

.field protected final DB_COLUMN_SECTIONS:I

.field protected final PRIMARY_COLUMN_NAME:Ljava/lang/String;

.field protected mColumnDefinitions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;",
            ">;"
        }
    .end annotation
.end field

.field protected mDbHelper:Lcom/alibaba/adi/collie/util/db/DbHelper;


# direct methods
.method protected constructor <init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V
    .locals 1
    .parameter "helper"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "_id"

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbTable;->PRIMARY_COLUMN_NAME:Ljava/lang/String;

    .line 22
    const-string v0, "DB_COL_"

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbTable;->DB_COLUMN_PREFIX:Ljava/lang/String;

    .line 23
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/adi/collie/util/db/DbTable;->DB_COLUMN_SECTIONS:I

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/util/db/DbTable;->mColumnDefinitions:Ljava/util/HashMap;

    .line 28
    iput-object p1, p0, Lcom/alibaba/adi/collie/util/db/DbTable;->mDbHelper:Lcom/alibaba/adi/collie/util/db/DbHelper;

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->initColumns()V

    .line 30
    return-void
.end method


# virtual methods
.method protected __select([Ljava/lang/String;Landroid/content/ContentValues;[I)Landroid/database/Cursor;
    .locals 1
    .parameter "columns"
    .parameter "cv"
    .parameter "limits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/adi/collie/util/db/DbTable;->__select([Ljava/lang/String;Landroid/content/ContentValues;[IZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected __select([Ljava/lang/String;Landroid/content/ContentValues;[IZ)Landroid/database/Cursor;
    .locals 18
    .parameter "columns"
    .parameter "cv"
    .parameter "limits"
    .parameter "isDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 170
    const-string v4, ""

    .line 171
    .local v4, whereClause:Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v16, selectArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 173
    :cond_0
    const/4 v4, 0x0

    .line 200
    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    array-length v2, v0

    if-gtz v2, :cond_6

    .line 201
    :cond_2
    const/4 v9, 0x0

    .line 208
    .local v9, limitClause:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 210
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/adi/collie/util/db/DbTable;->mDbHelper:Lcom/alibaba/adi/collie/util/db/DbHelper;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/util/db/DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    .line 214
    if-eqz v4, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v5, v3

    .line 215
    :goto_1
    const/4 v6, 0x0

    .line 216
    const/4 v7, 0x0

    .line 217
    if-eqz p4, :cond_9

    const-string v8, "_id DESC"

    :goto_2
    move-object/from16 v3, p1

    .line 211
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 175
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #limitClause:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 176
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 177
    .local v14, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/adi/collie/util/db/DbTable;->mColumnDefinitions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    const-string v3, "%s=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, clause:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " AND %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    :goto_4
    const-string v17, ""

    .line 185
    .local v17, value:Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 187
    .local v15, object:Ljava/lang/Object;
    :try_start_1
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    :goto_5
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 182
    .end local v15           #object:Ljava/lang/Object;
    .end local v17           #value:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 188
    .restart local v15       #object:Ljava/lang/Object;
    .restart local v17       #value:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 189
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 194
    .end local v10           #clause:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v15           #object:Ljava/lang/Object;
    .end local v17           #value:Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'%s\' is not a db column"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14           #key:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 203
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 204
    .restart local v9       #limitClause:Ljava/lang/String;
    goto/16 :goto_0

    .line 205
    .end local v9           #limitClause:Ljava/lang/String;
    :cond_7
    const-string v2, "%d, %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #limitClause:Ljava/lang/String;
    goto/16 :goto_0

    .line 214
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 217
    :cond_9
    :try_start_2
    const-string v8, "_id ASC"
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 219
    :catch_1
    move-exception v13

    .line 220
    .local v13, exp:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    throw v13
.end method

.method protected delete(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, sqliteDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/util/db/DbTable;->mDbHelper:Lcom/alibaba/adi/collie/util/db/DbHelper;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/util/db/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 150
    .local v1, ret:I
    if-lez v1, :cond_0

    .line 151
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    if-lez v1, :cond_2

    const/4 v3, 0x1

    .line 158
    :goto_0
    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 153
    :cond_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 154
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 155
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v0           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    .line 158
    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 161
    :cond_3
    throw v3
.end method

.method public getCreateSql()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CREATE TABLE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 69
    const-string v4, " (%s INTEGER DEFAULT \'0\' NOT NULL PRIMARY KEY AUTOINCREMENT"

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "_id"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/alibaba/adi/collie/util/db/DbTable;->mColumnDefinitions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 70
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, colName:Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/adi/collie/util/db/DbTable;->mColumnDefinitions:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;

    .line 72
    .local v0, colDef:Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 73
    const-string v5, ",%s %s DEFAULT \'%s\'"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->getColumn()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->getType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->getDefaultValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 72
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUpdateSql(II)Ljava/lang/String;
    .locals 1
    .parameter "oldVer"
    .parameter "newVer"

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initColumns()V
    .locals 17

    .prologue
    .line 33
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 34
    .local v7, fields:[Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v11, v7

    if-lt v8, v11, :cond_0

    .line 61
    return-void

    .line 35
    :cond_0
    aget-object v11, v7, v8

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, fieldName:Ljava/lang/String;
    const-string v11, "DB_COL_"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 37
    const-string v11, "_"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 38
    .local v10, sects:[Ljava/lang/String;
    if-eqz v10, :cond_1

    array-length v11, v10

    const/4 v12, 0x4

    if-ge v11, v12, :cond_2

    .line 39
    :cond_1
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "DB column definition %s is not in valid format in %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, msgError:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v11, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v11, v9}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 43
    .end local v9           #msgError:Ljava/lang/String;
    :cond_2
    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 44
    .local v4, dbVer:Ljava/lang/Integer;
    array-length v11, v10

    add-int/lit8 v11, v11, -0x2

    aget-object v3, v10, v11

    .line 45
    .local v3, dbType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 47
    .local v2, dbColumnName:Ljava/lang/String;
    :try_start_0
    aget-object v11, v7, v8

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dbColumnName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .restart local v2       #dbColumnName:Ljava/lang/String;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 53
    new-instance v1, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;-><init>(Lcom/alibaba/adi/collie/util/db/DbTable;)V

    .line 54
    .local v1, columnDef:Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;
    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->setColumn(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->setIntroducedVersion(I)V

    .line 56
    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;->setType(Ljava/lang/String;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/adi/collie/util/db/DbTable;->mColumnDefinitions:Ljava/util/HashMap;

    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .end local v1           #columnDef:Lcom/alibaba/adi/collie/util/db/DbTable$DbColumnDef;
    .end local v2           #dbColumnName:Ljava/lang/String;
    .end local v3           #dbType:Ljava/lang/String;
    .end local v4           #dbVer:Ljava/lang/Integer;
    .end local v10           #sects:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 48
    .restart local v3       #dbType:Ljava/lang/String;
    .restart local v4       #dbVer:Ljava/lang/Integer;
    .restart local v10       #sects:[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 49
    .local v5, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 50
    new-instance v11, Landroid/database/sqlite/SQLiteException;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "Unable to get column name for %s in %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method protected insert(Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "cv"

    .prologue
    const-wide/16 v6, -0x1

    .line 105
    const/4 v3, 0x0

    .line 107
    .local v3, sqliteDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/util/db/DbTable;->mDbHelper:Lcom/alibaba/adi/collie/util/db/DbHelper;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/util/db/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 110
    .local v1, ret:J
    cmp-long v4, v1, v6

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    cmp-long v4, v6, v1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 118
    :goto_0
    if-eqz v3, :cond_1

    .line 119
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    :cond_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 114
    .end local v1           #ret:J
    :catch_0
    move-exception v0

    .line 115
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local v0           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    .line 118
    if-eqz v3, :cond_3

    .line 119
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    :cond_3
    throw v4
.end method

.method protected insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "sqliteDb"
    .parameter "cv"

    .prologue
    const-wide/16 v5, -0x1

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 90
    .local v1, ret:J
    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    cmp-long v3, v5, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 98
    :goto_0
    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 93
    :cond_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 94
    .end local v1           #ret:J
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 96
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    .line 98
    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 101
    :cond_3
    throw v3
.end method

.method public abstract onTableCreated(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "cv"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 127
    .local v2, sqliteDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/util/db/DbTable;->mDbHelper:Lcom/alibaba/adi/collie/util/db/DbHelper;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/util/db/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, ret:I
    if-lez v1, :cond_0

    .line 131
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    if-lez v1, :cond_2

    const/4 v3, 0x1

    .line 138
    :goto_0
    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    :cond_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 134
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 135
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/util/db/DbTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .end local v0           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    .line 138
    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 141
    :cond_3
    throw v3
.end method
