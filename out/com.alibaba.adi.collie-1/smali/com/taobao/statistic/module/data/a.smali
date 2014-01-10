.class public Lcom/taobao/statistic/module/data/a;
.super Lcom/taobao/statistic/c/b;
.source "DataUploader.java"


# static fields
.field private static oo:I

.field private static op:Ljava/util/Hashtable;
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

.field private static ov:I

.field private static ow:Ljava/lang/Object;

.field private static oz:Ljava/lang/Object;


# instance fields
.field private iD:Lcom/taobao/statistic/core/c;

.field private lP:Lcom/taobao/statistic/core/p;

.field private mContext:Landroid/content/Context;

.field private oA:I

.field private on:Ljava/lang/Object;

.field private oq:Z

.field private or:Z

.field private os:Ljava/lang/Object;

.field private ot:Z

.field private ou:I

.field private ox:Ljava/lang/String;

.field private oy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0xc800

    sput v0, Lcom/taobao/statistic/module/data/a;->oo:I

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/taobao/statistic/module/data/a;->ov:I

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/statistic/module/data/a;->ow:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/statistic/module/data/a;->oz:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 5
    .parameter "aRuntime"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 35
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/taobao/statistic/module/data/a;->on:Ljava/lang/Object;

    .line 37
    iput-object v4, p0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    .line 38
    iput-object v4, p0, Lcom/taobao/statistic/module/data/a;->mContext:Landroid/content/Context;

    .line 42
    iput-boolean v3, p0, Lcom/taobao/statistic/module/data/a;->oq:Z

    .line 43
    iput-boolean v3, p0, Lcom/taobao/statistic/module/data/a;->or:Z

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/taobao/statistic/module/data/a;->os:Ljava/lang/Object;

    .line 45
    iput-boolean v3, p0, Lcom/taobao/statistic/module/data/a;->ot:Z

    .line 46
    iput v3, p0, Lcom/taobao/statistic/module/data/a;->ou:I

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/statistic/module/data/a;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/statistic/module/data/a;->ox:Ljava/lang/String;

    .line 51
    iput-object v4, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    .line 53
    iput v3, p0, Lcom/taobao/statistic/module/data/a;->oA:I

    .line 54
    iput-object v4, p0, Lcom/taobao/statistic/module/data/a;->lP:Lcom/taobao/statistic/core/p;

    .line 58
    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/statistic/module/data/a;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lock_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->df()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/taobao/statistic/core/i;->bY()Lcom/taobao/statistic/core/p;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/statistic/module/data/a;->lP:Lcom/taobao/statistic/core/p;

    .line 63
    iget-object v1, p0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 64
    .local v0, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_0

    .line 65
    const-string v1, "USeq"

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/a/c;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/taobao/statistic/module/data/a;->oA:I

    .line 68
    :cond_0
    return-void
.end method

.method public static a(Lcom/taobao/statistic/core/i;)Lcom/taobao/statistic/module/data/a;
    .locals 1
    .parameter "aRuntime"

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->df()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/taobao/statistic/module/data/a;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/module/data/a;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/taobao/statistic/core/a/c;Lcom/taobao/statistic/module/f/a$a;)V
    .locals 8
    .parameter "aPpc"
    .parameter "aGpr"

    .prologue
    .line 257
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 259
    iget-boolean v3, p0, Lcom/taobao/statistic/module/data/a;->ot:Z

    if-nez v3, :cond_3

    .line 260
    iget-object v4, p0, Lcom/taobao/statistic/module/data/a;->on:Ljava/lang/Object;

    monitor-enter v4

    .line 261
    :try_start_0
    iget-boolean v3, p0, Lcom/taobao/statistic/module/data/a;->ot:Z

    if-nez v3, :cond_2

    .line 263
    invoke-virtual {p1}, Lcom/taobao/statistic/core/a/c;->clear()V

    .line 264
    invoke-virtual {p2}, Lcom/taobao/statistic/module/f/a$a;->dO()Ljava/util/ArrayList;

    move-result-object v2

    .line 266
    .local v2, resourcesHandler:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, handler:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    const-string v3, "APP"

    invoke-virtual {p1, v0, v3}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v3, 0x2

    const-string v5, "UploadLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Commit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    .end local v0           #handler:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #resourcesHandler:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 275
    .restart local v2       #resourcesHandler:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 277
    .end local v2           #resourcesHandler:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :cond_3
    return-void
.end method

.method public static b(Lcom/taobao/statistic/core/c;)Ljava/util/ArrayList;
    .locals 7
    .parameter "aHardConfig"
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
    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v5, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/taobao/statistic/core/c;->bm()Lcom/taobao/statistic/core/a/c;

    move-result-object v4

    .line 107
    .local v4, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {v4}, Lcom/taobao/statistic/core/a/c;->reload()V

    .line 109
    invoke-virtual {v4}, Lcom/taobao/statistic/core/a/c;->getAll()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 110
    .local v1, handlers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;*>;"
    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    .local v2, itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    .local v3, key:Ljava/lang/String;
    invoke-static {v3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 116
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1           #handlers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;*>;"
    .end local v2           #itorator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_1
    return-object v5
.end method

.method private dH()Z
    .locals 9

    .prologue
    .line 160
    const/4 v0, 0x1

    .line 162
    .local v0, result:Z
    sget-object v3, Lcom/taobao/statistic/module/data/a;->oz:Ljava/lang/Object;

    monitor-enter v3

    .line 164
    :try_start_0
    sget-object v2, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    if-nez v2, :cond_0

    .line 165
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    .line 166
    sget-object v2, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    new-instance v5, Lcom/taobao/statistic/module/data/d;

    iget-object v6, p0, Lcom/taobao/statistic/module/data/a;->ox:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Lcom/taobao/statistic/module/data/d;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    sget-object v2, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    if-eqz v2, :cond_3

    .line 172
    sget-object v3, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    monitor-enter v3

    .line 174
    :try_start_1
    sget-object v2, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/statistic/module/data/d;

    .line 175
    .local v1, uploadLock:Lcom/taobao/statistic/module/data/d;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taobao/statistic/module/data/d;->dM()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/taobao/statistic/module/data/a;->ox:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/taobao/statistic/module/data/d;->dL()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x13880

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    .line 179
    const/4 v2, 0x2

    const-string v4, "Upload"

    const-string v5, "Release UploadLock by strategy."

    invoke-static {v2, v4, v5}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 181
    sget-object v2, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 187
    sget-object v2, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    new-instance v5, Lcom/taobao/statistic/module/data/d;

    iget-object v6, p0, Lcom/taobao/statistic/module/data/a;->ox:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Lcom/taobao/statistic/module/data/d;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    .end local v1           #uploadLock:Lcom/taobao/statistic/module/data/d;
    :cond_3
    return v0

    .line 169
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 183
    .restart local v1       #uploadLock:Lcom/taobao/statistic/module/data/d;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    .end local v1           #uploadLock:Lcom/taobao/statistic/module/data/d;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private dI()V
    .locals 4

    .prologue
    .line 199
    sget-object v0, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/4 v0, 0x2

    const-string v1, "Upload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release Upload Lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 204
    :cond_0
    return-void
.end method

.method private dJ()V
    .locals 13

    .prologue
    const-wide/16 v9, 0x0

    .line 211
    iget-boolean v7, p0, Lcom/taobao/statistic/module/data/a;->ot:Z

    if-nez v7, :cond_3

    .line 212
    iget-object v8, p0, Lcom/taobao/statistic/module/data/a;->on:Ljava/lang/Object;

    monitor-enter v8

    .line 213
    :try_start_0
    iget-boolean v7, p0, Lcom/taobao/statistic/module/data/a;->ot:Z

    if-nez v7, :cond_2

    .line 214
    iget-object v7, p0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    if-eqz v7, :cond_2

    .line 215
    iget-object v7, p0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 217
    .local v5, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v5, :cond_2

    .line 218
    const-wide/16 v1, 0x0

    .line 220
    .local v1, isYRunning:J
    :try_start_1
    const-string v7, "ISYRunning"

    invoke-virtual {v5, v7}, Lcom/taobao/statistic/core/a/c;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 224
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 226
    .local v3, now:J
    cmp-long v7, v1, v9

    if-eqz v7, :cond_0

    cmp-long v7, v3, v1

    if-lez v7, :cond_2

    sub-long v9, v3, v1

    const-wide/32 v11, 0x493e0

    cmp-long v7, v9, v11

    if-lez v7, :cond_2

    .line 228
    :cond_0
    iget-object v7, p0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    invoke-virtual {v7}, Lcom/taobao/statistic/core/c;->bl()Lcom/taobao/statistic/core/a/c;

    move-result-object v6

    .line 231
    .local v6, ppcServiceLock:Lcom/taobao/statistic/core/a/c;
    if-eqz v6, :cond_1

    .line 232
    invoke-virtual {v6}, Lcom/taobao/statistic/core/a/c;->clear()V

    .line 233
    invoke-virtual {v6}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 234
    const/4 v7, 0x2

    const-string v9, "Upload"

    const-string v10, "Clear Service Hold Lock"

    invoke-static {v7, v9, v10}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 237
    :cond_1
    const-string v7, "ISYRunning"

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v7, v9, v10}, Lcom/taobao/statistic/core/a/c;->putLong(Ljava/lang/String;J)V

    .line 238
    invoke-virtual {v5}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 243
    .end local v1           #isYRunning:J
    .end local v3           #now:J
    .end local v5           #ppc:Lcom/taobao/statistic/core/a/c;
    .end local v6           #ppcServiceLock:Lcom/taobao/statistic/core/a/c;
    :cond_2
    monitor-exit v8

    .line 245
    :cond_3
    return-void

    .line 221
    .restart local v1       #isYRunning:J
    .restart local v5       #ppc:Lcom/taobao/statistic/core/a/c;
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 243
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #isYRunning:J
    .end local v5           #ppc:Lcom/taobao/statistic/core/a/c;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method


# virtual methods
.method public dF()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/statistic/module/data/a;->on:Ljava/lang/Object;

    return-object v0
.end method

.method public dG()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/module/data/a;->ot:Z

    .line 92
    return-void
.end method

.method public dK()V
    .locals 23

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->os:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 284
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/statistic/module/data/a;->or:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 285
    monitor-exit v20

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->lP:Lcom/taobao/statistic/core/p;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 290
    const/16 v19, 0x2

    const-string v20, "Upload"

    const-string v21, "UrlWrapper is null."

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 294
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/taobao/statistic/module/data/a;->dH()Z

    move-result v5

    .line 295
    .local v5, canUpload:Z
    if-nez v5, :cond_3

    .line 296
    const/16 v19, 0x2

    const-string v20, "Upload"

    const-string v21, "Skip:Because uploadLock exist."

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/taobao/statistic/module/data/a;->oq:Z

    .line 301
    const/4 v12, 0x0

    .line 302
    .local v12, isReUpload:Z
    const/4 v6, 0x0

    .line 303
    .local v6, currentTotalUpload:I
    const/16 v16, -0x1

    .line 304
    .local v16, status:I
    const/4 v15, 0x0

    .line 305
    .local v15, recordManager:Lcom/taobao/statistic/module/f/a;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->iF:Lcom/taobao/statistic/core/i;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->iF:Lcom/taobao/statistic/core/i;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/taobao/statistic/core/i;->bT()Lcom/taobao/statistic/module/f/a;

    move-result-object v15

    .line 308
    :cond_4
    if-eqz v15, :cond_0

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/taobao/statistic/module/data/a;->dJ()V

    .line 315
    const/4 v14, 0x0

    .line 316
    .local v14, ppc:Lcom/taobao/statistic/core/a/c;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/taobao/statistic/core/c;->bm()Lcom/taobao/statistic/core/a/c;

    move-result-object v14

    .line 319
    :cond_5
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/taobao/statistic/module/data/Yolanda;->a(Lcom/taobao/statistic/core/c;)Ljava/util/ArrayList;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/taobao/statistic/module/f/a;->a(ZLjava/util/List;)Lcom/taobao/statistic/module/f/a$a;

    move-result-object v10

    .line 322
    .local v10, gpr:Lcom/taobao/statistic/module/f/a$a;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/usertrack/android/utils/i;->l(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_8

    if-eqz v10, :cond_8

    sget v19, Lcom/taobao/statistic/module/data/a;->oo:I

    move/from16 v0, v19

    if-le v0, v6, :cond_8

    .line 324
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/taobao/statistic/module/data/a;->a(Lcom/taobao/statistic/core/a/c;Lcom/taobao/statistic/module/f/a$a;)V

    .line 326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/statistic/module/data/a;->ot:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 327
    const/16 v19, 0x2

    const-string v20, "Upload"

    const-string v21, "Skip:Because the startUploadService module was running."

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 329
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/taobao/statistic/module/data/a;->oq:Z

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/statistic/module/data/a;->destroy()V

    goto/16 :goto_0

    .line 334
    :cond_6
    invoke-virtual {v10}, Lcom/taobao/statistic/module/f/a$a;->dP()[B

    move-result-object v7

    .line 335
    .local v7, data:[B
    if-eqz v7, :cond_10

    array-length v0, v7

    move/from16 v19, v0

    if-lez v19, :cond_10

    .line 336
    const/4 v11, 0x0

    .line 337
    .local v11, isFail:Z
    const/16 v19, 0x1

    const-string v20, "Upload"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UploadSize:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v7

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 339
    const/16 v18, 0x0

    .line 341
    .local v18, url:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->lP:Lcom/taobao/statistic/core/p;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/taobao/statistic/core/p;->cH()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    .line 345
    :goto_2
    invoke-static/range {v18 .. v18}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 346
    const/16 v19, 0x1

    const-string v20, "Upload"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "url:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 348
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v13, lMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v19, "resources"

    move-object/from16 v0, v19

    invoke-interface {v13, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/taobao/statistic/module/data/b;->a(ILjava/lang/String;Ljava/util/Map;)[B

    move-result-object v4

    .line 353
    .local v4, bResult:[B
    if-eqz v4, :cond_c

    .line 355
    :try_start_3
    new-instance v17, Ljava/lang/String;

    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    const-string v21, "UTF-8"

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 357
    .local v17, strResult:Ljava/lang/String;
    const/16 v19, 0x1

    const-string v20, "Upload"

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 358
    invoke-static/range {v17 .. v17}, Lcom/taobao/statistic/d/a/a;->R(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 359
    invoke-virtual {v15, v10}, Lcom/taobao/statistic/module/f/a;->a(Lcom/taobao/statistic/module/f/a$a;)V

    .line 360
    const/16 v19, 0x1

    const-string v20, "Upload"

    const-string v21, "ReleaseRecordPackage"

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 362
    const/16 v16, 0x1

    .line 375
    .end local v17           #strResult:Ljava/lang/String;
    :goto_3
    if-eqz v11, :cond_7

    .line 376
    if-nez v16, :cond_d

    .line 377
    const/16 v16, 0x2

    .line 382
    :cond_7
    :goto_4
    if-eqz v11, :cond_f

    .line 383
    if-eqz v12, :cond_e

    .line 384
    const/16 v19, 0x1

    const-string v20, "Upload"

    const-string v21, "Poor network connection, automatically exit the Upload"

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 402
    .end local v4           #bResult:[B
    .end local v7           #data:[B
    .end local v11           #isFail:Z
    .end local v13           #lMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18           #url:Ljava/lang/String;
    :cond_8
    if-eqz v14, :cond_9

    .line 403
    invoke-virtual {v14}, Lcom/taobao/statistic/core/a/c;->clear()V

    .line 404
    invoke-virtual {v14}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 406
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/taobao/statistic/module/data/a;->oq:Z

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->os:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 408
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/statistic/module/data/a;->or:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 409
    invoke-direct/range {p0 .. p0}, Lcom/taobao/statistic/module/data/a;->dI()V

    .line 411
    :cond_a
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 412
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/statistic/module/data/a;->or:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 413
    const/16 v19, 0x2

    const-string v20, "Upload"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RunDown:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 342
    .restart local v7       #data:[B
    .restart local v11       #isFail:Z
    .restart local v18       #url:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 343
    .local v9, e1:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 364
    .end local v9           #e1:Ljava/lang/Exception;
    .restart local v4       #bResult:[B
    .restart local v13       #lMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v17       #strResult:Ljava/lang/String;
    :cond_b
    const/4 v11, 0x1

    goto :goto_3

    .line 366
    .end local v17           #strResult:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 367
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 370
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    :cond_c
    const/16 v19, 0x2

    const-string v20, "Upload"

    const-string v21, "Response content is null."

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 372
    const/4 v11, 0x1

    goto :goto_3

    .line 379
    :cond_d
    const/16 v16, 0x0

    goto :goto_4

    .line 388
    :cond_e
    const/4 v12, 0x1

    .line 389
    goto/16 :goto_1

    .line 392
    .end local v4           #bResult:[B
    .end local v13           #lMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_f
    array-length v0, v7

    move/from16 v19, v0

    add-int v6, v6, v19

    .line 394
    .end local v11           #isFail:Z
    .end local v18           #url:Ljava/lang/String;
    :cond_10
    if-eqz v14, :cond_11

    .line 395
    invoke-virtual {v14}, Lcom/taobao/statistic/core/a/c;->clear()V

    .line 396
    invoke-virtual {v14}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 399
    :cond_11
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/taobao/statistic/module/data/Yolanda;->a(Lcom/taobao/statistic/core/c;)Ljava/util/ArrayList;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/taobao/statistic/module/f/a;->a(ZLjava/util/List;)Lcom/taobao/statistic/module/f/a$a;

    move-result-object v10

    .line 401
    goto/16 :goto_1

    .line 411
    .end local v7           #data:[B
    :catchall_1
    move-exception v19

    :try_start_5
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v19

    .line 416
    :cond_12
    const/16 v19, 0x2

    const-string v20, "Upload"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Complete:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 7

    .prologue
    .line 129
    iget-object v3, p0, Lcom/taobao/statistic/module/data/a;->os:Ljava/lang/Object;

    monitor-enter v3

    .line 130
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/taobao/statistic/module/data/a;->or:Z

    .line 131
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/statistic/module/data/a;->mContext:Landroid/content/Context;

    .line 133
    iget-object v2, p0, Lcom/taobao/statistic/module/data/a;->iD:Lcom/taobao/statistic/core/c;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 135
    .local v0, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_0

    .line 136
    const-string v2, "USeq"

    iget v4, p0, Lcom/taobao/statistic/module/data/a;->oA:I

    invoke-virtual {v0, v2, v4}, Lcom/taobao/statistic/core/a/c;->putInt(Ljava/lang/String;I)V

    .line 137
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 139
    :cond_0
    iget-boolean v2, p0, Lcom/taobao/statistic/module/data/a;->oq:Z

    if-nez v2, :cond_1

    .line 140
    sget-object v2, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 141
    sget-object v2, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/statistic/module/data/d;

    .line 142
    .local v1, uploadLock:Lcom/taobao/statistic/module/data/d;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taobao/statistic/module/data/d;->dM()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/taobao/statistic/module/data/a;->ox:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    sget-object v2, Lcom/taobao/statistic/module/data/a;->op:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v2, 0x2

    const-string v4, "Upload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Release Upload Lock(destroy):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/statistic/module/data/a;->oy:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 151
    .end local v1           #uploadLock:Lcom/taobao/statistic/module/data/d;
    :cond_1
    monitor-exit v3

    .line 152
    return-void

    .line 151
    .end local v0           #ppc:Lcom/taobao/statistic/core/a/c;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 423
    iget v0, p0, Lcom/taobao/statistic/module/data/a;->ou:I

    if-nez v0, :cond_1

    .line 424
    sget-object v1, Lcom/taobao/statistic/module/data/a;->ow:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    iget v0, p0, Lcom/taobao/statistic/module/data/a;->ou:I

    if-nez v0, :cond_0

    .line 426
    sget v0, Lcom/taobao/statistic/module/data/a;->ov:I

    mul-int/lit16 v0, v0, 0x151

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x989680

    rem-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/taobao/statistic/module/data/a;->ou:I

    .line 428
    sget v0, Lcom/taobao/statistic/module/data/a;->ov:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/taobao/statistic/module/data/a;->ov:I

    .line 429
    sget v0, Lcom/taobao/statistic/module/data/a;->ov:I

    const/16 v2, 0x2710

    if-ne v0, v2, :cond_0

    .line 430
    const/4 v0, 0x1

    sput v0, Lcom/taobao/statistic/module/data/a;->ov:I

    .line 433
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :cond_1
    iget v0, p0, Lcom/taobao/statistic/module/data/a;->ou:I

    return v0

    .line 433
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
