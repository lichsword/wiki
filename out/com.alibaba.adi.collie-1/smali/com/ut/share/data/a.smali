.class public Lcom/ut/share/data/a;
.super Ljava/lang/Object;
.source "ShareAppProvider.java"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private po:Lcom/ut/share/a/c;

.field private pp:Lcom/ut/share/a/b;

.field private pq:Lcom/ut/share/a/a;

.field private pr:Lcom/ut/share/data/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .parameter "context"
    .parameter "weixinAppID"
    .parameter "wangxinAppID"
    .parameter "laiwangAppID"
    .parameter "laiwangScretID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/ut/share/SharePlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p6, disablePlatforms:Ljava/util/Set;,"Ljava/util/Set<Lcom/ut/share/SharePlatform;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    .line 32
    if-eqz p2, :cond_0

    .line 33
    new-instance v0, Lcom/ut/share/a/c;

    invoke-direct {v0, p1, p2}, Lcom/ut/share/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ut/share/data/a;->po:Lcom/ut/share/a/c;

    .line 35
    :cond_0
    if-eqz p3, :cond_1

    .line 36
    new-instance v0, Lcom/ut/share/a/b;

    invoke-direct {v0, p1, p3}, Lcom/ut/share/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ut/share/data/a;->pp:Lcom/ut/share/a/b;

    .line 39
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    new-instance v0, Lcom/ut/share/a/a;

    invoke-direct {v0, p1, p4, p5}, Lcom/ut/share/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ut/share/data/a;->pq:Lcom/ut/share/a/a;

    .line 42
    :cond_2
    new-instance v0, Lcom/ut/share/data/c;

    invoke-direct {v0, p1, p6}, Lcom/ut/share/data/c;-><init>(Landroid/app/Activity;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    .line 43
    return-void
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/share/data/ShareAppInfo;
    .locals 6
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    const/4 v3, 0x0

    .line 158
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v0, v3

    .line 186
    :cond_1
    :goto_0
    return-object v0

    .line 161
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, tempPackageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 163
    .local v0, info:Lcom/ut/share/data/ShareAppInfo;
    sget-object v4, Lcom/ut/share/data/c;->pu:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    sget-object v5, Lcom/ut/share/SharePlatform;->SinaWeibo:Lcom/ut/share/SharePlatform;

    invoke-virtual {v4, v5}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 164
    new-instance v0, Lcom/ut/share/data/ShareAppInfo;

    .end local v0           #info:Lcom/ut/share/data/ShareAppInfo;
    invoke-direct {v0}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 165
    .restart local v0       #info:Lcom/ut/share/data/ShareAppInfo;
    sget-object v4, Lcom/ut/share/SharePlatform;->SinaWeibo:Lcom/ut/share/SharePlatform;

    invoke-virtual {v0, v4}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 166
    const-string v4, "\u65b0\u6d6a\u5fae\u535a"

    invoke-virtual {v0, v4}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    sget-object v5, Lcom/ut/share/SharePlatform;->SinaWeibo:Lcom/ut/share/SharePlatform;

    invoke-static {v4, v5, v3, v3, v3}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    .line 180
    :cond_3
    :goto_1
    if-eqz v0, :cond_1

    .line 181
    new-instance v2, Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;

    invoke-direct {v2}, Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;-><init>()V

    .line 182
    .local v2, third:Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;
    iput-object p1, v2, Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;->packageName:Ljava/lang/String;

    .line 183
    iput-object p2, v2, Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;->activityName:Ljava/lang/String;

    .line 184
    invoke-virtual {v0}, Lcom/ut/share/data/ShareAppInfo;->getExecutor()Lcom/ut/share/executor/Executor;

    move-result-object v3

    check-cast v3, Lcom/ut/share/executor/ThirdpartsExecutor;

    invoke-virtual {v3, v2}, Lcom/ut/share/executor/ThirdpartsExecutor;->setThirdPartsInfo(Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;)V

    goto :goto_0

    .line 168
    .end local v2           #third:Lcom/ut/share/executor/ThirdpartsExecutor$ThirdPartsInfo;
    :cond_4
    const-string v4, "com.qzone"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    sget-object v5, Lcom/ut/share/SharePlatform;->QZone:Lcom/ut/share/SharePlatform;

    invoke-virtual {v4, v5}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 169
    new-instance v0, Lcom/ut/share/data/ShareAppInfo;

    .end local v0           #info:Lcom/ut/share/data/ShareAppInfo;
    invoke-direct {v0}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 170
    .restart local v0       #info:Lcom/ut/share/data/ShareAppInfo;
    sget-object v4, Lcom/ut/share/SharePlatform;->QZone:Lcom/ut/share/SharePlatform;

    invoke-virtual {v0, v4}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 171
    const-string v4, "QQ\u7a7a\u95f4"

    invoke-virtual {v0, v4}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    sget-object v5, Lcom/ut/share/SharePlatform;->QZone:Lcom/ut/share/SharePlatform;

    invoke-static {v4, v5, v3, v3, v3}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    goto :goto_1

    .line 173
    :cond_5
    const-string v4, "com.tencent.wblog"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    sget-object v5, Lcom/ut/share/SharePlatform;->TencentWeibo:Lcom/ut/share/SharePlatform;

    invoke-virtual {v4, v5}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    new-instance v0, Lcom/ut/share/data/ShareAppInfo;

    .end local v0           #info:Lcom/ut/share/data/ShareAppInfo;
    invoke-direct {v0}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 175
    .restart local v0       #info:Lcom/ut/share/data/ShareAppInfo;
    sget-object v4, Lcom/ut/share/SharePlatform;->TencentWeibo:Lcom/ut/share/SharePlatform;

    invoke-virtual {v0, v4}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 176
    const-string v4, "\u817e\u8baf\u5fae\u535a"

    invoke-virtual {v0, v4}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 177
    iget-object v4, p0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    sget-object v5, Lcom/ut/share/SharePlatform;->TencentWeibo:Lcom/ut/share/SharePlatform;

    invoke-static {v4, v5, v3, v3, v3}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    goto :goto_1
.end method


# virtual methods
.method public ec()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ut/share/data/ShareAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v12, Landroid/content/Intent;

    const-string v17, "android.intent.action.SEND"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    .local v12, shareIntent:Landroid/content/Intent;
    const-string v17, "image/*"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 50
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 51
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v3, v0, [Lcom/ut/share/data/ShareAppInfo;

    .line 52
    .local v3, array:[Lcom/ut/share/data/ShareAppInfo;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 53
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/ut/share/data/a;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/share/data/ShareAppInfo;

    move-result-object v6

    .line 55
    .local v6, item:Lcom/ut/share/data/ShareAppInfo;
    if-eqz v6, :cond_0

    .line 56
    aput-object v6, v3, v5

    .line 52
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    .end local v6           #item:Lcom/ut/share/data/ShareAppInfo;
    :cond_1
    invoke-static {}, Lcom/ut/share/SharePlatform;->values()[Lcom/ut/share/SharePlatform;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v13, v0, [Lcom/ut/share/data/ShareAppInfo;

    .line 61
    .local v13, sortArray:[Lcom/ut/share/data/ShareAppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pq:Lcom/ut/share/a/a;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->LaiwangChat:Lcom/ut/share/SharePlatform;

    invoke-virtual/range {v17 .. v18}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pq:Lcom/ut/share/a/a;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ut/share/a/a;->ee()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 62
    new-instance v7, Lcom/ut/share/data/ShareAppInfo;

    invoke-direct {v7}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 63
    .local v7, laiwangInfo:Lcom/ut/share/data/ShareAppInfo;
    sget-object v17, Lcom/ut/share/SharePlatform;->LaiwangChat:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 64
    const-string v17, "\u6765\u5f80"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->LaiwangChat:Lcom/ut/share/SharePlatform;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pq:Lcom/ut/share/a/a;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v21}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    .line 66
    const/16 v17, 0x1

    aput-object v7, v13, v17

    .line 69
    .end local v7           #laiwangInfo:Lcom/ut/share/data/ShareAppInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pq:Lcom/ut/share/a/a;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->LaiwangShare:Lcom/ut/share/SharePlatform;

    invoke-virtual/range {v17 .. v18}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pq:Lcom/ut/share/a/a;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ut/share/a/a;->ee()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 70
    new-instance v7, Lcom/ut/share/data/ShareAppInfo;

    invoke-direct {v7}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 71
    .restart local v7       #laiwangInfo:Lcom/ut/share/data/ShareAppInfo;
    sget-object v17, Lcom/ut/share/SharePlatform;->LaiwangShare:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 72
    const-string v17, "\u6765\u5f80\u52a8\u6001"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->LaiwangShare:Lcom/ut/share/SharePlatform;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pq:Lcom/ut/share/a/a;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v21}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    .line 74
    const/16 v17, 0x2

    aput-object v7, v13, v17

    .line 77
    .end local v7           #laiwangInfo:Lcom/ut/share/data/ShareAppInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->po:Lcom/ut/share/a/c;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->po:Lcom/ut/share/a/c;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ut/share/a/c;->eg()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->Weixin:Lcom/ut/share/SharePlatform;

    invoke-virtual/range {v17 .. v18}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 78
    new-instance v15, Lcom/ut/share/data/ShareAppInfo;

    invoke-direct {v15}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 79
    .local v15, weixinInfo:Lcom/ut/share/data/ShareAppInfo;
    sget-object v17, Lcom/ut/share/SharePlatform;->Weixin:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 80
    const-string v17, "\u5fae\u4fe1"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->Weixin:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->po:Lcom/ut/share/a/c;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    .line 82
    const/16 v17, 0x3

    aput-object v15, v13, v17

    .line 84
    .end local v15           #weixinInfo:Lcom/ut/share/data/ShareAppInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->po:Lcom/ut/share/a/c;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->po:Lcom/ut/share/a/c;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ut/share/a/c;->eh()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->WeixinPengyouquan:Lcom/ut/share/SharePlatform;

    invoke-virtual/range {v17 .. v18}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 85
    new-instance v16, Lcom/ut/share/data/ShareAppInfo;

    invoke-direct/range {v16 .. v16}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 86
    .local v16, weixin_penyouInfo:Lcom/ut/share/data/ShareAppInfo;
    sget-object v17, Lcom/ut/share/SharePlatform;->WeixinPengyouquan:Lcom/ut/share/SharePlatform;

    invoke-virtual/range {v16 .. v17}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 87
    const-string v17, "\u670b\u53cb\u5708"

    invoke-virtual/range {v16 .. v17}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->WeixinPengyouquan:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->po:Lcom/ut/share/a/c;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    .line 89
    const/16 v17, 0x4

    aput-object v16, v13, v17

    .line 91
    .end local v16           #weixin_penyouInfo:Lcom/ut/share/data/ShareAppInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pp:Lcom/ut/share/a/b;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pp:Lcom/ut/share/a/b;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ut/share/a/b;->ef()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->Wangxin:Lcom/ut/share/SharePlatform;

    invoke-virtual/range {v17 .. v18}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 92
    new-instance v14, Lcom/ut/share/data/ShareAppInfo;

    invoke-direct {v14}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 93
    .local v14, wangxinInfo:Lcom/ut/share/data/ShareAppInfo;
    sget-object v17, Lcom/ut/share/SharePlatform;->Wangxin:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 94
    const-string v17, "\u65fa\u4fe1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->Wangxin:Lcom/ut/share/SharePlatform;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pp:Lcom/ut/share/a/b;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    .line 96
    const/16 v17, 0x5

    aput-object v14, v13, v17

    .line 100
    .end local v14           #wangxinInfo:Lcom/ut/share/data/ShareAppInfo;
    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v10, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ut/share/data/ShareAppInfo;>;"
    const/4 v5, 0x0

    :goto_1
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_b

    .line 102
    aget-object v17, v3, v5

    if-eqz v17, :cond_7

    .line 103
    aget-object v17, v3, v5

    invoke-virtual/range {v17 .. v17}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v17

    sget-object v18, Lcom/ut/share/SharePlatform;->SinaWeibo:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 104
    const/16 v17, 0x0

    aget-object v18, v3, v5

    aput-object v18, v13, v17

    .line 101
    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 107
    :cond_8
    aget-object v17, v3, v5

    invoke-virtual/range {v17 .. v17}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v17

    sget-object v18, Lcom/ut/share/SharePlatform;->TencentWeibo:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 108
    const/16 v17, 0x6

    aget-object v18, v3, v5

    aput-object v18, v13, v17

    goto :goto_2

    .line 111
    :cond_9
    aget-object v17, v3, v5

    invoke-virtual/range {v17 .. v17}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v17

    sget-object v18, Lcom/ut/share/SharePlatform;->QZone:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 112
    const/16 v17, 0x7

    aget-object v18, v3, v5

    aput-object v18, v13, v17

    goto :goto_2

    .line 115
    :cond_a
    aget-object v17, v3, v5

    invoke-virtual/range {v17 .. v17}, Lcom/ut/share/data/ShareAppInfo;->getSpt()Lcom/ut/share/SharePlatform;

    move-result-object v17

    sget-object v18, Lcom/ut/share/SharePlatform;->SMS:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 116
    const/16 v17, 0x8

    aget-object v18, v3, v5

    aput-object v18, v13, v17

    goto :goto_2

    .line 123
    :cond_b
    const/4 v5, 0x0

    :goto_3
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_d

    .line 124
    aget-object v17, v13, v5

    if-eqz v17, :cond_c

    .line 125
    aget-object v17, v13, v5

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 128
    :cond_d
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_e

    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->SMS:Lcom/ut/share/SharePlatform;

    invoke-virtual/range {v17 .. v18}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 130
    new-instance v9, Lcom/ut/share/data/ShareAppInfo;

    invoke-direct {v9}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 131
    .local v9, messageInfo:Lcom/ut/share/data/ShareAppInfo;
    const-string v17, "\u77ed\u4fe1"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 132
    sget-object v17, Lcom/ut/share/SharePlatform;->SMS:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->SMS:Lcom/ut/share/SharePlatform;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    .line 134
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v9           #messageInfo:Lcom/ut/share/data/ShareAppInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->Copy:Lcom/ut/share/SharePlatform;

    invoke-virtual/range {v17 .. v18}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 137
    new-instance v4, Lcom/ut/share/data/ShareAppInfo;

    invoke-direct {v4}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 138
    .local v4, copyInfo:Lcom/ut/share/data/ShareAppInfo;
    const-string v17, "\u590d\u5236"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 139
    sget-object v17, Lcom/ut/share/SharePlatform;->Copy:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->Copy:Lcom/ut/share/SharePlatform;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    .line 141
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v4           #copyInfo:Lcom/ut/share/data/ShareAppInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pq:Lcom/ut/share/a/a;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pr:Lcom/ut/share/data/c;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->LaiwangActivity:Lcom/ut/share/SharePlatform;

    invoke-virtual/range {v17 .. v18}, Lcom/ut/share/data/c;->a(Lcom/ut/share/SharePlatform;)Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pq:Lcom/ut/share/a/a;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ut/share/a/a;->ee()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 147
    new-instance v7, Lcom/ut/share/data/ShareAppInfo;

    invoke-direct {v7}, Lcom/ut/share/data/ShareAppInfo;-><init>()V

    .line 148
    .restart local v7       #laiwangInfo:Lcom/ut/share/data/ShareAppInfo;
    sget-object v17, Lcom/ut/share/SharePlatform;->LaiwangActivity:Lcom/ut/share/SharePlatform;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/ut/share/data/ShareAppInfo;->setSpt(Lcom/ut/share/SharePlatform;)V

    .line 149
    const-string v17, "\u6765\u5f80\u514d\u5355"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/ut/share/data/ShareAppInfo;->setName(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->mContext:Landroid/app/Activity;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ut/share/SharePlatform;->LaiwangActivity:Lcom/ut/share/SharePlatform;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/share/data/a;->pq:Lcom/ut/share/a/a;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v21}, Lcom/ut/share/executor/ExecutorFactory;->makeExecutor(Landroid/app/Activity;Lcom/ut/share/SharePlatform;Lcom/ut/share/a/c;Lcom/ut/share/a/b;Lcom/ut/share/a/a;)Lcom/ut/share/executor/Executor;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/ut/share/data/ShareAppInfo;->setExecutor(Lcom/ut/share/executor/Executor;)V

    .line 151
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v7           #laiwangInfo:Lcom/ut/share/data/ShareAppInfo;
    :cond_11
    return-object v10
.end method
