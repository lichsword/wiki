.class public Lcom/taobao/statistic/core/l;
.super Lcom/taobao/statistic/c/b;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/core/l$1;,
        Lcom/taobao/statistic/core/l$a;
    }
.end annotation


# instance fields
.field private iS:Ljava/util/Properties;

.field private lF:Z

.field private lX:Ljava/lang/String;

.field private lY:Z

.field private lZ:Z

.field private ma:Z

.field private mb:J

.field private mc:J

.field private md:J

.field private me:J

.field private mf:Ljava/lang/String;

.field private mg:Ljava/lang/String;

.field private mh:Ljava/lang/String;

.field private mi:Ljava/lang/String;

.field private mj:Ljava/lang/String;

.field private mk:Ljava/lang/String;

.field private ml:Ljava/lang/String;

.field private mm:Ljava/lang/String;

.field private mn:Ljava/lang/String;

.field private mo:I

.field private mp:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mq:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mr:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ms:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/statistic/core/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 4
    .parameter "aRuntime"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->lX:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/taobao/statistic/core/l;->lF:Z

    .line 27
    iput-boolean v1, p0, Lcom/taobao/statistic/core/l;->lY:Z

    .line 28
    iput-boolean v1, p0, Lcom/taobao/statistic/core/l;->lZ:Z

    .line 29
    iput-boolean v1, p0, Lcom/taobao/statistic/core/l;->ma:Z

    .line 30
    iput-wide v2, p0, Lcom/taobao/statistic/core/l;->mb:J

    .line 31
    iput-wide v2, p0, Lcom/taobao/statistic/core/l;->mc:J

    .line 32
    iput-wide v2, p0, Lcom/taobao/statistic/core/l;->md:J

    .line 33
    iput-wide v2, p0, Lcom/taobao/statistic/core/l;->me:J

    .line 34
    const-string v0, "-"

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mf:Ljava/lang/String;

    .line 35
    const-string v0, "-"

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mg:Ljava/lang/String;

    .line 37
    const-string v0, "-"

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mh:Ljava/lang/String;

    .line 38
    const-string v0, "-"

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mi:Ljava/lang/String;

    .line 39
    const-string v0, "-"

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mj:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mk:Ljava/lang/String;

    .line 41
    const-string v0, "-"

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->ml:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mm:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mn:Ljava/lang/String;

    .line 44
    iput v1, p0, Lcom/taobao/statistic/core/l;->mo:I

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mp:Ljava/util/Hashtable;

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->ms:Ljava/util/Hashtable;

    .line 49
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->iS:Ljava/util/Properties;

    .line 53
    return-void
.end method

.method private D(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 596
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const-string p1, "-"

    .line 599
    .end local p1
    :cond_0
    return-object p1
.end method

.method private cg()V
    .locals 5

    .prologue
    .line 235
    const-string v0, "%s_%s_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bN()Lcom/ut/device/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/m;->cy()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->lX:Ljava/lang/String;

    .line 238
    return-void
.end method

.method private ci()V
    .locals 7

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, xmlLongLoginUserNick:Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 273
    .local v0, cpc:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_0

    .line 274
    const-string v3, "longLoginUserNick"

    invoke-virtual {v0, v3}, Lcom/taobao/statistic/core/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    :cond_0
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    invoke-static {v1}, Lorg/usertrack/a/a/a/a/a;->ar(Ljava/lang/String;)[B

    move-result-object v2

    .line 280
    .local v2, xmlLongLoginUserNickByte:[B
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 282
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/taobao/statistic/core/l;->mg:Ljava/lang/String;

    .line 283
    const/4 v3, 0x2

    const-string v4, "loadLongLoginUserNick"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "longLoginUserNick is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/statistic/core/l;->mg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 287
    .end local v2           #xmlLongLoginUserNickByte:[B
    :cond_1
    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 6
    .parameter "userNick"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/taobao/statistic/core/l;->mg:Ljava/lang/String;

    .line 253
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v1

    .line 255
    .local v1, cpc:Lcom/taobao/statistic/core/a/c;
    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/a/a/a/a/a;->k([B)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, base64userNick:Ljava/lang/String;
    const-string v2, "longLoginUserNick"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 261
    const/4 v2, 0x2

    const-string v3, "saveLongLoginUserNick"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userNick is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 264
    .end local v0           #base64userNick:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .locals 1
    .parameter "pageKey"

    .prologue
    .line 443
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget v0, p0, Lcom/taobao/statistic/core/l;->mo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/taobao/statistic/core/l;->mo:I

    .line 448
    :cond_0
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pageKey"

    .prologue
    .line 455
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    .local v0, page:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    .end local v0           #page:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public C(Ljava/lang/String;)V
    .locals 1
    .parameter "currentControlName"

    .prologue
    .line 491
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-boolean v0, p0, Lcom/taobao/statistic/core/l;->ma:Z

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mi:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mh:Ljava/lang/String;

    .line 497
    :goto_0
    iput-object p1, p0, Lcom/taobao/statistic/core/l;->mi:Ljava/lang/String;

    .line 499
    :cond_0
    return-void

    .line 495
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/core/l;->ma:Z

    goto :goto_0
.end method

.method public b([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "keysName"

    .prologue
    const/4 v7, 0x0

    .line 114
    if-eqz p1, :cond_2

    .line 115
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 116
    .local v6, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 117
    .local v2, keyName:Ljava/lang/String;
    invoke-static {v2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 118
    iget-object v8, p0, Lcom/taobao/statistic/core/l;->mp:Ljava/util/Hashtable;

    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 119
    .local v5, value:Ljava/lang/String;
    invoke-static {v5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v2           #keyName:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 125
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 126
    .local v4, results:[Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 130
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #results:[Ljava/lang/String;
    .end local v6           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v7
.end method

.method public cc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mf:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized cd()V
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->iS:Ljava/util/Properties;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->iS:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mg:Ljava/lang/String;

    return-object v0
.end method

.method public cf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->lX:Ljava/lang/String;

    return-object v0
.end method

.method public ch()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/taobao/statistic/core/l;->mb:J

    return-wide v0
.end method

.method public cj()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/taobao/statistic/core/l;->lY:Z

    return v0
.end method

.method public declared-synchronized ck()V
    .locals 2

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/statistic/core/l;->lF:Z

    if-nez v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/taobao/statistic/core/l;->cg()V

    .line 310
    invoke-direct {p0}, Lcom/taobao/statistic/core/l;->ci()V

    .line 312
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bV()Lcom/taobao/statistic/module/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/module/b/a;->dt()V

    .line 317
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bV()Lcom/taobao/statistic/module/b/a;

    move-result-object v0

    const-string v1, "http://m.xx.com"

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/module/b/a;->updateUTSIDToCookie(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->db()V

    .line 320
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/g;->bw()V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/statistic/core/l;->lF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_0
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public cm()J
    .locals 2

    .prologue
    .line 467
    iget-wide v0, p0, Lcom/taobao/statistic/core/l;->me:J

    return-wide v0
.end method

.method public cn()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/taobao/statistic/core/l;->mo:I

    return v0
.end method

.method public co()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->ml:Ljava/lang/String;

    return-object v0
.end method

.method public cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mj:Ljava/lang/String;

    return-object v0
.end method

.method public cq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mi:Ljava/lang/String;

    return-object v0
.end method

.method public cr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mk:Ljava/lang/String;

    return-object v0
.end method

.method public cs()J
    .locals 4

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/taobao/statistic/core/l;->mc:J

    .line 508
    .local v0, resident:J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/taobao/statistic/core/l;->mc:J

    .line 509
    return-wide v0
.end method

.method public declared-synchronized ct()Ljava/lang/String;
    .locals 41

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v37

    .line 519
    .local v37, variables:Lcom/taobao/statistic/core/q;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/taobao/statistic/core/i;->bN()Lcom/ut/device/b;

    move-result-object v12

    .line 520
    .local v12, device:Lcom/ut/device/b;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v9

    .line 521
    .local v9, config:Lcom/taobao/statistic/core/m;
    invoke-virtual/range {v37 .. v37}, Lcom/taobao/statistic/core/q;->cL()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 523
    .local v23, ndkReleaseVersion:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getImei()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 524
    .local v16, imei:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getImsi()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 525
    .local v17, imsi:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getBrand()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, brand:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getCpu()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 527
    .local v11, cpu:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getDeviceId()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 528
    .local v13, deviceId:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getDeviceModel()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 529
    .local v14, deviceModel:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getResolution()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 530
    .local v33, resolution:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getCarrier()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, carrier:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getAccess()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, access:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->dX()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, accessSubType:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/taobao/statistic/core/m;->getChannel()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 534
    .local v8, channel:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/taobao/statistic/core/m;->cy()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 535
    .local v4, appKey:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getAppVersion()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, appVersion:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/statistic/core/l;->ce()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 537
    .local v22, longLoginUserNick:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/statistic/core/l;->cc()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 538
    .local v36, userNick:Ljava/lang/String;
    const-string v26, "-"

    .line 539
    .local v26, phoneNumber:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getCountry()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 540
    .local v10, country:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getLanguage()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 541
    .local v21, language:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->dY()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 542
    .local v24, os:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getOsVersion()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 543
    .local v25, osVersion:Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Lcom/taobao/statistic/core/q;->cM()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 544
    .local v35, sdkType:Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Lcom/taobao/statistic/core/q;->cN()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 546
    .local v34, sdkReleaseVersion:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/statistic/core/l;->cf()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 547
    .local v27, reserve1:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ut/device/b;->getUtdid()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 548
    .local v28, reserve2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/taobao/statistic/core/q;->df()Ljava/lang/String;

    move-result-object v15

    .line 549
    .local v15, identifier:Ljava/lang/String;
    const-string v29, "-"

    .line 551
    .local v29, reserve3:Ljava/lang/String;
    invoke-static {v15}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/taobao/statistic/core/q;->dk()Z

    move-result v38

    if-nez v38, :cond_0

    .line 553
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/taobao/statistic/core/l;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 555
    :cond_0
    const-string v30, "-"

    .line 556
    .local v30, reserve4:Ljava/lang/String;
    const-string v31, "-"

    .line 557
    .local v31, reserve5:Ljava/lang/String;
    const-string v32, "-"

    .line 559
    .local v32, reserve6:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v19

    .line 560
    .local v19, lPPC:Lcom/taobao/statistic/core/a/c;
    if-eqz v19, :cond_1

    .line 561
    const-string v38, "_at"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/a/c;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 562
    .local v20, lValue:I
    const/16 v38, 0x1

    move/from16 v0, v38

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iS:Ljava/util/Properties;

    move-object/from16 v38, v0

    const-string v39, "_at"

    const-string v40, "id"

    invoke-virtual/range {v38 .. v40}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .end local v20           #lValue:I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iS:Ljava/util/Properties;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iS:Ljava/util/Properties;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lorg/usertrack/android/utils/l;->c(Ljava/util/Properties;)Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 573
    .local v18, lP:Ljava/util/Properties;
    if-eqz v18, :cond_2

    .line 575
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v38

    const-string v39, "[{}]"

    const-string v40, ""

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v32

    .line 581
    .end local v18           #lP:Ljava/util/Properties;
    :cond_2
    :goto_1
    :try_start_2
    invoke-static/range {v32 .. v32}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 582
    const-string v32, "-"

    .line 584
    :cond_3
    const-string v38, "%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||%s||"

    const/16 v39, 0x1d

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v23, v39, v40

    const/16 v40, 0x1

    aput-object v16, v39, v40

    const/16 v40, 0x2

    aput-object v17, v39, v40

    const/16 v40, 0x3

    aput-object v6, v39, v40

    const/16 v40, 0x4

    aput-object v11, v39, v40

    const/16 v40, 0x5

    aput-object v13, v39, v40

    const/16 v40, 0x6

    aput-object v14, v39, v40

    const/16 v40, 0x7

    aput-object v33, v39, v40

    const/16 v40, 0x8

    aput-object v7, v39, v40

    const/16 v40, 0x9

    aput-object v2, v39, v40

    const/16 v40, 0xa

    aput-object v3, v39, v40

    const/16 v40, 0xb

    aput-object v8, v39, v40

    const/16 v40, 0xc

    aput-object v4, v39, v40

    const/16 v40, 0xd

    aput-object v5, v39, v40

    const/16 v40, 0xe

    aput-object v22, v39, v40

    const/16 v40, 0xf

    aput-object v36, v39, v40

    const/16 v40, 0x10

    aput-object v26, v39, v40

    const/16 v40, 0x11

    aput-object v10, v39, v40

    const/16 v40, 0x12

    aput-object v21, v39, v40

    const/16 v40, 0x13

    aput-object v24, v39, v40

    const/16 v40, 0x14

    aput-object v25, v39, v40

    const/16 v40, 0x15

    aput-object v35, v39, v40

    const/16 v40, 0x16

    aput-object v34, v39, v40

    const/16 v40, 0x17

    aput-object v27, v39, v40

    const/16 v40, 0x18

    aput-object v28, v39, v40

    const/16 v40, 0x19

    aput-object v29, v39, v40

    const/16 v40, 0x1a

    aput-object v30, v39, v40

    const/16 v40, 0x1b

    aput-object v31, v39, v40

    const/16 v40, 0x1c

    aput-object v32, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v38

    monitor-exit p0

    return-object v38

    .line 565
    .restart local v20       #lValue:I
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iS:Ljava/util/Properties;

    move-object/from16 v38, v0

    const-string v39, "_at"

    invoke-virtual/range {v38 .. v39}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/l;->iS:Ljava/util/Properties;

    move-object/from16 v38, v0

    const-string v39, "_at"

    invoke-virtual/range {v38 .. v39}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 518
    .end local v2           #access:Ljava/lang/String;
    .end local v3           #accessSubType:Ljava/lang/String;
    .end local v4           #appKey:Ljava/lang/String;
    .end local v5           #appVersion:Ljava/lang/String;
    .end local v6           #brand:Ljava/lang/String;
    .end local v7           #carrier:Ljava/lang/String;
    .end local v8           #channel:Ljava/lang/String;
    .end local v9           #config:Lcom/taobao/statistic/core/m;
    .end local v10           #country:Ljava/lang/String;
    .end local v11           #cpu:Ljava/lang/String;
    .end local v12           #device:Lcom/ut/device/b;
    .end local v13           #deviceId:Ljava/lang/String;
    .end local v14           #deviceModel:Ljava/lang/String;
    .end local v15           #identifier:Ljava/lang/String;
    .end local v16           #imei:Ljava/lang/String;
    .end local v17           #imsi:Ljava/lang/String;
    .end local v19           #lPPC:Lcom/taobao/statistic/core/a/c;
    .end local v20           #lValue:I
    .end local v21           #language:Ljava/lang/String;
    .end local v22           #longLoginUserNick:Ljava/lang/String;
    .end local v23           #ndkReleaseVersion:Ljava/lang/String;
    .end local v24           #os:Ljava/lang/String;
    .end local v25           #osVersion:Ljava/lang/String;
    .end local v26           #phoneNumber:Ljava/lang/String;
    .end local v27           #reserve1:Ljava/lang/String;
    .end local v28           #reserve2:Ljava/lang/String;
    .end local v29           #reserve3:Ljava/lang/String;
    .end local v30           #reserve4:Ljava/lang/String;
    .end local v31           #reserve5:Ljava/lang/String;
    .end local v32           #reserve6:Ljava/lang/String;
    .end local v33           #resolution:Ljava/lang/String;
    .end local v34           #sdkReleaseVersion:Ljava/lang/String;
    .end local v35           #sdkType:Ljava/lang/String;
    .end local v36           #userNick:Ljava/lang/String;
    .end local v37           #variables:Lcom/taobao/statistic/core/q;
    :catchall_0
    move-exception v38

    monitor-exit p0

    throw v38

    .line 576
    .restart local v2       #access:Ljava/lang/String;
    .restart local v3       #accessSubType:Ljava/lang/String;
    .restart local v4       #appKey:Ljava/lang/String;
    .restart local v5       #appVersion:Ljava/lang/String;
    .restart local v6       #brand:Ljava/lang/String;
    .restart local v7       #carrier:Ljava/lang/String;
    .restart local v8       #channel:Ljava/lang/String;
    .restart local v9       #config:Lcom/taobao/statistic/core/m;
    .restart local v10       #country:Ljava/lang/String;
    .restart local v11       #cpu:Ljava/lang/String;
    .restart local v12       #device:Lcom/ut/device/b;
    .restart local v13       #deviceId:Ljava/lang/String;
    .restart local v14       #deviceModel:Ljava/lang/String;
    .restart local v15       #identifier:Ljava/lang/String;
    .restart local v16       #imei:Ljava/lang/String;
    .restart local v17       #imsi:Ljava/lang/String;
    .restart local v18       #lP:Ljava/util/Properties;
    .restart local v19       #lPPC:Lcom/taobao/statistic/core/a/c;
    .restart local v21       #language:Ljava/lang/String;
    .restart local v22       #longLoginUserNick:Ljava/lang/String;
    .restart local v23       #ndkReleaseVersion:Ljava/lang/String;
    .restart local v24       #os:Ljava/lang/String;
    .restart local v25       #osVersion:Ljava/lang/String;
    .restart local v26       #phoneNumber:Ljava/lang/String;
    .restart local v27       #reserve1:Ljava/lang/String;
    .restart local v28       #reserve2:Ljava/lang/String;
    .restart local v29       #reserve3:Ljava/lang/String;
    .restart local v30       #reserve4:Ljava/lang/String;
    .restart local v31       #reserve5:Ljava/lang/String;
    .restart local v32       #reserve6:Ljava/lang/String;
    .restart local v33       #resolution:Ljava/lang/String;
    .restart local v34       #sdkReleaseVersion:Ljava/lang/String;
    .restart local v35       #sdkType:Ljava/lang/String;
    .restart local v36       #userNick:Ljava/lang/String;
    .restart local v37       #variables:Lcom/taobao/statistic/core/q;
    :catch_0
    move-exception v38

    goto/16 :goto_1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "pageKey"
    .parameter "page"

    .prologue
    .line 355
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/statistic/core/l;->md:J

    .line 357
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mj:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    iget v1, p0, Lcom/taobao/statistic/core/l;->mo:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/taobao/statistic/core/l;->mo:I

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iput-object p2, p0, Lcom/taobao/statistic/core/l;->mj:Ljava/lang/String;

    .line 365
    iput-object p1, p0, Lcom/taobao/statistic/core/l;->mk:Ljava/lang/String;

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, pageTimeStamps:Lcom/taobao/statistic/core/l$a;
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->ms:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 368
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->ms:Ljava/util/Hashtable;

    new-instance v0, Lcom/taobao/statistic/core/l$a;

    .end local v0           #pageTimeStamps:Lcom/taobao/statistic/core/l$a;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/taobao/statistic/core/l$a;-><init>(Lcom/taobao/statistic/core/l;Lcom/taobao/statistic/core/l$1;)V

    .restart local v0       #pageTimeStamps:Lcom/taobao/statistic/core/l$a;
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :goto_0
    if-eqz v0, :cond_2

    .line 374
    iget-wide v1, v0, Lcom/taobao/statistic/core/l$a;->mt:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/statistic/core/l$a;->mt:J

    iput-wide v1, v0, Lcom/taobao/statistic/core/l$a;->mu:J

    .line 381
    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/statistic/core/l;->lY:Z

    .line 383
    .end local v0           #pageTimeStamps:Lcom/taobao/statistic/core/l$a;
    :cond_3
    return-void

    .line 371
    .restart local v0       #pageTimeStamps:Lcom/taobao/statistic/core/l$a;
    :cond_4
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->ms:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #pageTimeStamps:Lcom/taobao/statistic/core/l$a;
    check-cast v0, Lcom/taobao/statistic/core/l$a;

    .restart local v0       #pageTimeStamps:Lcom/taobao/statistic/core/l$a;
    goto :goto_0

    .line 378
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/statistic/core/l$a;->mu:J

    goto :goto_1
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "pageKey"
    .parameter "keys"

    .prologue
    .line 78
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    if-eqz v5, :cond_1

    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    .line 80
    iget-object v5, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 81
    .local v3, keyNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #keyNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .restart local v3       #keyNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 84
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    invoke-virtual {v5, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #keyNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #len$:I
    :cond_1
    return-void

    .line 88
    .restart local v3       #keyNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object v0, p2

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 89
    .restart local v2       #key:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 90
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "pageKey"
    .parameter "keys"

    .prologue
    .line 98
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    if-eqz v5, :cond_1

    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    .line 100
    iget-object v5, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 102
    .local v3, keyNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 103
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 104
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keyNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "page"

    .prologue
    const/4 v1, 0x1

    .line 333
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-boolean v0, p0, Lcom/taobao/statistic/core/l;->lZ:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mj:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->ml:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mk:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mm:Ljava/lang/String;

    .line 343
    :goto_0
    iput-object p1, p0, Lcom/taobao/statistic/core/l;->mk:Ljava/lang/String;

    .line 344
    iput-object p2, p0, Lcom/taobao/statistic/core/l;->mj:Ljava/lang/String;

    .line 345
    iput-object p1, p0, Lcom/taobao/statistic/core/l;->mn:Ljava/lang/String;

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/core/l;->lY:Z

    .line 347
    iput v1, p0, Lcom/taobao/statistic/core/l;->mo:I

    .line 348
    return-void

    .line 341
    :cond_1
    iput-boolean v1, p0, Lcom/taobao/statistic/core/l;->lZ:Z

    goto :goto_0
.end method

.method public putKvs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 147
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, v:Ljava/lang/String;
    invoke-static {v0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mp:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mp:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .end local v0           #v:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v0       #v:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mp:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mp:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mp:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 613
    iput-boolean v1, p0, Lcom/taobao/statistic/core/l;->lY:Z

    .line 614
    iput-boolean v1, p0, Lcom/taobao/statistic/core/l;->lZ:Z

    .line 615
    iput-boolean v1, p0, Lcom/taobao/statistic/core/l;->ma:Z

    .line 616
    iput-wide v2, p0, Lcom/taobao/statistic/core/l;->mb:J

    .line 617
    iput-wide v2, p0, Lcom/taobao/statistic/core/l;->mc:J

    .line 618
    iput-wide v2, p0, Lcom/taobao/statistic/core/l;->me:J

    .line 619
    iput-wide v2, p0, Lcom/taobao/statistic/core/l;->md:J

    .line 621
    const-string v0, "-"

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mh:Ljava/lang/String;

    .line 622
    const-string v0, "-"

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mi:Ljava/lang/String;

    .line 623
    const-string v0, "-"

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mj:Ljava/lang/String;

    .line 624
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mk:Ljava/lang/String;

    .line 625
    const-string v0, "-"

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->ml:Ljava/lang/String;

    .line 626
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mm:Ljava/lang/String;

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mn:Ljava/lang/String;

    .line 628
    iput v1, p0, Lcom/taobao/statistic/core/l;->mo:I

    .line 629
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mp:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mp:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 632
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mp:Ljava/util/Hashtable;

    .line 633
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 636
    :cond_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    .line 637
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 640
    :cond_2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    .line 641
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->ms:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    .line 642
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->ms:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 644
    :cond_3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->ms:Ljava/util/Hashtable;

    .line 645
    return-void
.end method

.method public declared-synchronized updateSessionProperties(Ljava/util/Properties;)V
    .locals 1
    .parameter "pProperties"

    .prologue
    .line 60
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->iS:Ljava/util/Properties;

    invoke-static {v0, p1}, Lorg/usertrack/android/utils/l;->a(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/statistic/core/l;->iS:Ljava/util/Properties;

    .line 63
    iget-object v0, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/g;->bw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "userNick"
    .parameter "userid"

    .prologue
    const/16 v5, 0x3f0

    const/4 v3, 0x0

    .line 167
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->mf:Ljava/lang/String;

    .line 168
    .local v1, oldUserNick:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 169
    const-string p1, ""

    .line 171
    :cond_0
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    move-object p1, p2

    .line 174
    :cond_1
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 175
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->mf:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 176
    iput-object v3, p0, Lcom/taobao/statistic/core/l;->mf:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 179
    :cond_2
    iput-object v3, p0, Lcom/taobao/statistic/core/l;->mg:Ljava/lang/String;

    .line 181
    :cond_3
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v2

    const-string v3, "_at"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/taobao/statistic/core/a/c;->putInt(Ljava/lang/String;I)V

    .line 183
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 202
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 203
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 206
    :cond_4
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 208
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    const-string v3, "Page_Usertrack"

    invoke-virtual {v2, v3, v5, v1}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 225
    :cond_5
    :goto_1
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    .line 226
    .local v0, b1:Z
    if-eqz v0, :cond_6

    .line 227
    const-string p1, "-"

    .line 229
    :cond_6
    iput-object p1, p0, Lcom/taobao/statistic/core/l;->mf:Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/g;->bw()V

    .line 232
    .end local v0           #b1:Z
    :cond_7
    return-void

    .line 188
    :cond_8
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->mf:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 189
    iput-object v3, p0, Lcom/taobao/statistic/core/l;->mf:Ljava/lang/String;

    .line 190
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 192
    :cond_9
    iput-object v3, p0, Lcom/taobao/statistic/core/l;->mg:Ljava/lang/String;

    .line 194
    :cond_a
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v2

    const-string v3, "_at"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/taobao/statistic/core/a/c;->putInt(Ljava/lang/String;I)V

    .line 196
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/a/c;->commit()Z

    goto :goto_0

    .line 214
    :cond_b
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 216
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    const-string v3, "Page_Usertrack"

    invoke-virtual {v2, v3, v5, v1}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 220
    :cond_c
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->getExecProxy()Lcom/taobao/statistic/core/b;

    move-result-object v2

    const-string v3, "Page_Usertrack"

    const/16 v4, 0x3ef

    invoke-virtual {v2, v3, v4, p1}, Lcom/taobao/statistic/core/b;->commitEvent(Ljava/lang/String;ILjava/lang/Object;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/taobao/statistic/core/l;->x(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public w(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "pageKey"

    .prologue
    .line 134
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/taobao/statistic/core/l;->mq:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 137
    .local v0, keyNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 139
    .local v1, keys:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 143
    .end local v0           #keyNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #keys:[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public y(Ljava/lang/String;)J
    .locals 8
    .parameter "pageKey"

    .prologue
    const-wide/16 v2, 0x0

    .line 403
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->ms:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/taobao/statistic/core/l;->ms:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/statistic/core/l$a;

    iget-wide v4, v1, Lcom/taobao/statistic/core/l$a;->mt:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 406
    .local v0, value:Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    move-wide v1, v2

    .line 416
    .end local v0           #value:Ljava/lang/Long;
    :goto_0
    return-wide v1

    .line 411
    .restart local v0       #value:Ljava/lang/Long;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .end local v0           #value:Ljava/lang/Long;
    :cond_1
    move-wide v1, v2

    .line 416
    goto :goto_0
.end method

.method public z(Ljava/lang/String;)Z
    .locals 7
    .parameter "pageKey"

    .prologue
    const/4 v2, 0x1

    .line 420
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 421
    iget-object v3, p0, Lcom/taobao/statistic/core/l;->mr:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    iget-object v3, p0, Lcom/taobao/statistic/core/l;->mk:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    iget-wide v3, p0, Lcom/taobao/statistic/core/l;->md:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/taobao/statistic/core/l;->md:J

    sub-long v0, v3, v5

    .line 427
    .local v0, perForegroundResident:J
    iget-wide v3, p0, Lcom/taobao/statistic/core/l;->mc:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/taobao/statistic/core/l;->mc:J

    .line 428
    iput-wide v0, p0, Lcom/taobao/statistic/core/l;->me:J

    .line 429
    iget-wide v3, p0, Lcom/taobao/statistic/core/l;->mb:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/taobao/statistic/core/l;->mb:J

    .line 432
    .end local v0           #perForegroundResident:J
    :cond_0
    iget-object v3, p0, Lcom/taobao/statistic/core/l;->mk:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    iget v3, p0, Lcom/taobao/statistic/core/l;->mo:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/taobao/statistic/core/l;->mo:I

    .line 435
    :cond_1
    iput-boolean v2, p0, Lcom/taobao/statistic/core/l;->lY:Z

    .line 439
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
