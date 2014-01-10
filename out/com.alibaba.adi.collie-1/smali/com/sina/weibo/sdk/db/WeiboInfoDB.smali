.class public Lcom/sina/weibo/sdk/db/WeiboInfoDB;
.super Ljava/lang/Object;
.source "WeiboInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;
    }
.end annotation


# static fields
.field private static final WEIBO_NAME_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "content://com.sina.weibo.sdkProvider/query/package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/db/WeiboInfoDB;->WEIBO_NAME_URI:Landroid/net/Uri;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportApi()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;->supportApi:I

    return v0
.end method

.method public static getVersionCode()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;->versionCode:I

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public static initWeiboInfo(Landroid/content/Context;Z)V
    .locals 12
    .parameter "ct"
    .parameter "isDownWeibo"

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 15
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 17
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sput-boolean p1, Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;->isDownWeibo:Z

    .line 19
    sget-object v1, Lcom/sina/weibo/sdk/db/WeiboInfoDB;->WEIBO_NAME_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 20
    const-string v1, "package"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 21
    .local v8, packageIndex:I
    const-string v1, "version_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 22
    .local v11, versionNameIndex:I
    const-string v1, "version_code"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 23
    .local v10, versionCodeIndex:I
    const-string v1, "support_api"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 24
    .local v9, supportApiIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;->packageName:Ljava/lang/String;

    .line 26
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;->versionName:Ljava/lang/String;

    .line 27
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;->versionCode:I

    .line 28
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;->supportApi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    if-eqz v6, :cond_1

    .line 34
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 37
    .end local v8           #packageIndex:I
    .end local v9           #supportApiIndex:I
    .end local v10           #versionCodeIndex:I
    .end local v11           #versionNameIndex:I
    :cond_1
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v7

    .line 31
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "WeiboInfoDB"

    const-string v2, "get db error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    if-eqz v6, :cond_1

    .line 34
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 32
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 33
    if-eqz v6, :cond_2

    .line 34
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_2
    throw v1
.end method

.method public static isDownWeibo()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/sina/weibo/sdk/db/WeiboInfoDB$WeiboInfo;->isDownWeibo:Z

    return v0
.end method
