.class public Lcom/taobao/statistic/module/data/Yolanda;
.super Landroid/app/Service;
.source "Yolanda.java"

# interfaces
.implements Lcom/taobao/statistic/module/data/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/module/data/Yolanda$a;
    }
.end annotation


# static fields
.field private static oh:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/statistic/module/data/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final od:I

.field private oe:Lcom/taobao/statistic/module/data/Yolanda$a;

.field private of:Z

.field private og:Ljava/lang/String;

.field private oi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/taobao/statistic/module/data/Yolanda;->oh:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/statistic/module/data/Yolanda;->od:I

    .line 40
    iput-object v1, p0, Lcom/taobao/statistic/module/data/Yolanda;->oe:Lcom/taobao/statistic/module/data/Yolanda$a;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/module/data/Yolanda;->of:Z

    .line 45
    const-string v0, "TBSEngine:"

    iput-object v0, p0, Lcom/taobao/statistic/module/data/Yolanda;->og:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/taobao/statistic/module/data/Yolanda;->oi:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public static a(Lcom/taobao/statistic/core/c;)Ljava/util/ArrayList;
    .locals 7
    .parameter "hardConfig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/statistic/core/c;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v5, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/taobao/statistic/core/c;->bl()Lcom/taobao/statistic/core/a/c;

    move-result-object v4

    .line 84
    .local v4, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v4}, Lcom/taobao/statistic/core/a/c;->reload()V

    .line 87
    invoke-virtual {v4}, Lcom/taobao/statistic/core/a/c;->getAll()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 88
    .local v1, handlers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;*>;"
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 90
    .local v2, itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    .local v3, key:Ljava/lang/String;
    invoke-static {v3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 94
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1           #handlers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;*>;"
    .end local v2           #itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_1
    return-object v5
.end method

.method static synthetic a(Lcom/taobao/statistic/module/data/Yolanda;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/taobao/statistic/module/data/Yolanda;->of:Z

    return v0
.end method

.method static synthetic b(Lcom/taobao/statistic/module/data/Yolanda;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/taobao/statistic/module/data/Yolanda;->og:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/taobao/statistic/module/data/Yolanda;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/taobao/statistic/module/data/Yolanda;->dD()V

    return-void
.end method

.method private dD()V
    .locals 3

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/taobao/statistic/module/data/Yolanda;->of:Z

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "BackgroundUpload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/statistic/module/data/Yolanda;->og:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "StopSelf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/statistic/module/data/Yolanda;->stopSelf()V

    .line 69
    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const-wide/32 v12, 0x2bf20

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 275
    if-eqz p1, :cond_a

    const-string v8, "url"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "resourceIdentifier"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 278
    const/4 v2, 0x0

    .line 280
    .local v2, lIsDelay:Z
    const-string v8, "logSwitch"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 281
    const-string v8, "logSwitch"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/taobao/statistic/module/data/Yolanda;->of:Z

    .line 283
    :cond_0
    const-string v8, "isDev"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 284
    const-string v8, "isDev"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 285
    invoke-static {v9}, Lcom/taobao/statistic/core/d;->i(Z)V

    .line 289
    :cond_1
    const-string v8, "delay"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 290
    const/4 v2, 0x1

    .line 294
    :cond_2
    const-string v8, "url"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, url:Ljava/lang/String;
    const-string v8, "resourceIdentifier"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, resourceIdentifier:Ljava/lang/String;
    invoke-static {v5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 299
    const-string v8, "TBSEngine(%s):"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/taobao/statistic/module/data/Yolanda;->og:Ljava/lang/String;

    .line 301
    :cond_3
    iget-boolean v8, p0, Lcom/taobao/statistic/module/data/Yolanda;->of:Z

    if-eqz v8, :cond_4

    .line 302
    const-string v8, "BackgroundUpload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/taobao/statistic/module/data/Yolanda;->og:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ResourceIdentifier-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_4
    invoke-static {v7}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 306
    const/4 v0, 0x1

    .line 307
    .local v0, canStart:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Lock_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, key:Ljava/lang/String;
    sget-object v9, Lcom/taobao/statistic/module/data/Yolanda;->oh:Ljava/util/Hashtable;

    monitor-enter v9

    .line 309
    :try_start_0
    sget-object v8, Lcom/taobao/statistic/module/data/Yolanda;->oh:Ljava/util/Hashtable;

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 310
    sget-object v8, Lcom/taobao/statistic/module/data/Yolanda;->oh:Ljava/util/Hashtable;

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/statistic/module/data/d;

    .line 311
    .local v6, uploadLock:Lcom/taobao/statistic/module/data/d;
    if-eqz v6, :cond_5

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 313
    .local v3, now:J
    invoke-virtual {v6}, Lcom/taobao/statistic/module/data/d;->dL()J

    move-result-wide v10

    sub-long v10, v3, v10

    cmp-long v8, v10, v12

    if-gez v8, :cond_7

    .line 314
    const/4 v0, 0x0

    .line 320
    .end local v3           #now:J
    .end local v6           #uploadLock:Lcom/taobao/statistic/module/data/d;
    :cond_5
    :goto_0
    if-eqz v0, :cond_8

    .line 321
    iget-boolean v8, p0, Lcom/taobao/statistic/module/data/Yolanda;->of:Z

    if-eqz v8, :cond_6

    .line 322
    const-string v8, "BackgroundUpload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/taobao/statistic/module/data/Yolanda;->og:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "StartUploadThread"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_6
    iput-object v1, p0, Lcom/taobao/statistic/module/data/Yolanda;->oi:Ljava/lang/String;

    .line 326
    new-instance v6, Lcom/taobao/statistic/module/data/d;

    const-string v8, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v8, v10, v11}, Lcom/taobao/statistic/module/data/d;-><init>(Ljava/lang/String;J)V

    .line 328
    .restart local v6       #uploadLock:Lcom/taobao/statistic/module/data/d;
    sget-object v8, Lcom/taobao/statistic/module/data/Yolanda;->oh:Ljava/util/Hashtable;

    invoke-virtual {v8, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v8, Lcom/taobao/statistic/module/data/Yolanda$a;

    invoke-direct {v8, p0, v7, v5, v2}, Lcom/taobao/statistic/module/data/Yolanda$a;-><init>(Lcom/taobao/statistic/module/data/Yolanda;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v8, p0, Lcom/taobao/statistic/module/data/Yolanda;->oe:Lcom/taobao/statistic/module/data/Yolanda$a;

    .line 331
    iget-object v8, p0, Lcom/taobao/statistic/module/data/Yolanda;->oe:Lcom/taobao/statistic/module/data/Yolanda$a;

    invoke-virtual {v8, p0}, Lcom/taobao/statistic/module/data/Yolanda$a;->a(Lcom/taobao/statistic/module/data/c;)V

    .line 332
    iget-object v8, p0, Lcom/taobao/statistic/module/data/Yolanda;->oe:Lcom/taobao/statistic/module/data/Yolanda$a;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/taobao/statistic/module/data/Yolanda$a;->setDaemon(Z)V

    .line 333
    iget-object v8, p0, Lcom/taobao/statistic/module/data/Yolanda;->oe:Lcom/taobao/statistic/module/data/Yolanda$a;

    invoke-virtual {v8}, Lcom/taobao/statistic/module/data/Yolanda$a;->start()V

    .line 334
    monitor-exit v9

    .line 346
    .end local v0           #canStart:Z
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #lIsDelay:Z
    .end local v5           #resourceIdentifier:Ljava/lang/String;
    .end local v6           #uploadLock:Lcom/taobao/statistic/module/data/d;
    .end local v7           #url:Ljava/lang/String;
    :goto_1
    return-void

    .line 315
    .restart local v0       #canStart:Z
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #lIsDelay:Z
    .restart local v3       #now:J
    .restart local v5       #resourceIdentifier:Ljava/lang/String;
    .restart local v6       #uploadLock:Lcom/taobao/statistic/module/data/d;
    .restart local v7       #url:Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Lcom/taobao/statistic/module/data/d;->dL()J

    move-result-wide v10

    sub-long v10, v3, v10

    cmp-long v8, v10, v12

    if-ltz v8, :cond_5

    .line 316
    sget-object v8, Lcom/taobao/statistic/module/data/Yolanda;->oh:Ljava/util/Hashtable;

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 342
    .end local v3           #now:J
    .end local v6           #uploadLock:Lcom/taobao/statistic/module/data/d;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 336
    :cond_8
    :try_start_1
    iget-boolean v8, p0, Lcom/taobao/statistic/module/data/Yolanda;->of:Z

    if-eqz v8, :cond_9

    .line 337
    const-string v8, "BackgroundUpload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/taobao/statistic/module/data/Yolanda;->og:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Within three minutes,you can not start the background service multiple times for the same resource identification upload."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_9
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    .end local v0           #canStart:Z
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #lIsDelay:Z
    .end local v5           #resourceIdentifier:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/taobao/statistic/module/data/Yolanda;->dD()V

    goto :goto_1
.end method

.method public dE()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/taobao/statistic/module/data/Yolanda;->oi:Ljava/lang/String;

    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    sget-object v0, Lcom/taobao/statistic/module/data/Yolanda;->oh:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/taobao/statistic/module/data/Yolanda;->oi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Lcom/taobao/statistic/module/data/Yolanda;->oh:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/taobao/statistic/module/data/Yolanda;->oi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-boolean v0, p0, Lcom/taobao/statistic/module/data/Yolanda;->of:Z

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "BackgroundUpload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/statistic/module/data/Yolanda;->og:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Remove Background Upload Lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/statistic/module/data/Yolanda;->oi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 57
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/taobao/statistic/module/data/Yolanda;->a(Landroid/content/Intent;)V

    .line 258
    return-void
.end method
