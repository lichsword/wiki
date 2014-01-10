.class public Lcom/alibaba/adi/collie/business/push/PushIdTable;
.super Lcom/alibaba/adi/collie/util/db/DbTable;
.source "PushIdTable.java"


# static fields
.field public static final DB_COL_ID_TEXT_2:Ljava/lang/String; = "id"

.field public static final DB_COL_INSERT_TEXT_2:Ljava/lang/String; = "insertDate"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/alibaba/adi/collie/business/push/PushIdTable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/business/push/PushIdTable;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/util/db/DbTable;-><init>(Lcom/alibaba/adi/collie/util/db/DbHelper;)V

    .line 19
    return-void
.end method


# virtual methods
.method public deleteMsg(Ljava/lang/String;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 63
    const-string v0, "id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/adi/collie/business/push/PushIdTable;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteMsg(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/adi/collie/business/push/PushIdTable;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getUpdateSql(II)Ljava/lang/String;
    .locals 1
    .parameter "oldVer"
    .parameter "newVer"

    .prologue
    .line 23
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/business/push/PushIdTable;->getCreateSql()Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/adi/collie/util/db/DbTable;->getUpdateSql(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public idExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v0, v4

    .line 52
    .local v0, columns:[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v2, cv:Landroid/content/ContentValues;
    const-string v5, "id"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v2, v5}, Lcom/alibaba/adi/collie/business/push/PushIdTable;->__select([Ljava/lang/String;Landroid/content/ContentValues;[I)Landroid/database/Cursor;

    move-result-object v1

    .line 55
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 56
    .local v3, ret:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 57
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_0
    return v3

    .end local v3           #ret:Z
    :cond_1
    move v3, v4

    .line 55
    goto :goto_0
.end method

.method public insertMsg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "id"
    .parameter "insertDate"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    return v1

    .line 38
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 39
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "insertDate"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/business/push/PushIdTable;->insert(Landroid/content/ContentValues;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTableCreated(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 32
    return-void
.end method

.method public updateMsg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "id"
    .parameter "deleteDate"

    .prologue
    .line 45
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "insertDate"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/adi/collie/business/push/PushIdTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
