.class public Lcom/alibaba/adi/collie/util/DownloadManagerHelper;
.super Ljava/lang/Object;
.source "DownloadManagerHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DownloadManagerHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadInfo(Landroid/content/Context;J)Ljava/util/Map;
    .locals 13
    .parameter "context"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v8, retMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x9

    if-lt v10, v11, :cond_0

    .line 41
    const-string v10, "download"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DownloadManager;

    .line 42
    .local v5, dm:Landroid/app/DownloadManager;
    new-instance v10, Landroid/app/DownloadManager$Query;

    invoke-direct {v10}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [J

    const/4 v12, 0x0

    aput-wide p1, v11, v12

    invoke-virtual {v10, v11}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v6

    .line 43
    .local v6, query:Landroid/app/DownloadManager$Query;
    invoke-virtual {v5, v6}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    .line 44
    .local v4, cursor:Landroid/database/Cursor;
    if-nez v4, :cond_1

    .line 65
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v5           #dm:Landroid/app/DownloadManager;
    .end local v6           #query:Landroid/app/DownloadManager$Query;
    :cond_0
    :goto_0
    return-object v8

    .line 47
    .restart local v4       #cursor:Landroid/database/Cursor;
    .restart local v5       #dm:Landroid/app/DownloadManager;
    .restart local v6       #query:Landroid/app/DownloadManager$Query;
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_0

    .line 50
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    const-string v10, "status"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 52
    .local v9, status:I
    const-string v10, "reason"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 53
    .local v7, reason:I
    const-string v10, "bytes_so_far"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 54
    .local v0, bytesDownloaded:J
    const-string v10, "total_size"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 55
    .local v2, bytesTotal:J
    const-string v10, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v10, "reason"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v10, "bytes_so_far"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v10, "total_size"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v10, "DownloadManagerHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "download status = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v10, "DownloadManagerHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "download reason = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getDownloadStatus(Landroid/content/Context;J)I
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v3, -0x1

    .line 17
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    .line 18
    const-string v4, "download"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 19
    .local v1, dm:Landroid/app/DownloadManager;
    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide p1, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    .line 20
    .local v2, query:Landroid/app/DownloadManager$Query;
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 21
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 33
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #dm:Landroid/app/DownloadManager;
    .end local v2           #query:Landroid/app/DownloadManager$Query;
    :cond_0
    :goto_0
    return v3

    .line 24
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #dm:Landroid/app/DownloadManager;
    .restart local v2       #query:Landroid/app/DownloadManager$Query;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 28
    const-string v4, "status"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 29
    .local v3, ret:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
