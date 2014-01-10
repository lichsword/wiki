.class public Lcom/taobao/statistic/core/a;
.super Lcom/taobao/statistic/c/b;
.source "Exec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/core/a$b;,
        Lcom/taobao/statistic/core/a$a;,
        Lcom/taobao/statistic/core/a$c;
    }
.end annotation


# instance fields
.field private iM:J

.field private iN:Ljava/lang/Object;

.field private iO:Lcom/taobao/statistic/core/a$c;

.field private iP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/statistic/core/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private iQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/statistic/core/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 2
    .parameter "aRuntime"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/statistic/core/a;->iM:J

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/a;->iN:Ljava/lang/Object;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/a;->iO:Lcom/taobao/statistic/core/a$c;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    .line 36
    return-void
.end method

.method private static a(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 10
    .parameter "pProperties"

    .prologue
    .line 320
    if-eqz p0, :cond_1

    .line 321
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 322
    .local v4, lPreperties:Ljava/util/Properties;
    invoke-virtual {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 323
    .local v3, lKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 324
    .local v2, key:Ljava/lang/Object;
    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 325
    invoke-virtual {p0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 326
    .local v7, lValue:Ljava/lang/Object;
    invoke-static {v2}, Lorg/usertrack/android/utils/o;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, lSKey:Ljava/lang/String;
    invoke-static {v7}, Lorg/usertrack/android/utils/o;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, lSValue:Ljava/lang/String;
    invoke-static {v5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 331
    :try_start_0
    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #lKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v4           #lPreperties:Ljava/util/Properties;
    .end local v5           #lSKey:Ljava/lang/String;
    .end local v6           #lSValue:Ljava/lang/String;
    .end local v7           #lValue:Ljava/lang/Object;
    :cond_1
    move-object v4, p0

    .line 342
    :cond_2
    return-object v4
.end method

.method private a(Ljava/util/Date;)V
    .locals 9
    .parameter "opTime"

    .prologue
    const/4 v5, 0x0

    .line 704
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/q;->de()Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    const-string v2, "Page_Usertrack"

    const/16 v3, 0x3f2

    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/l;->cs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v7, v5

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v0

    const-string v1, "Page_Usertrack"

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/g;->u(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v8

    .line 713
    .local v8, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v8, :cond_0

    .line 714
    const-string v0, "APP_STATUS"

    sget-object v1, Lcom/taobao/statistic/APPSTATUS;->SCREEN_OFF:Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v1}, Lcom/taobao/statistic/APPSTATUS;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v8}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/q;->t(Z)V

    .line 718
    invoke-direct {p0}, Lcom/taobao/statistic/core/a;->aH()V

    .line 720
    .end local v8           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Date;Ljava/lang/String;JJLjava/util/Properties;Ljava/util/Properties;)V
    .locals 13
    .parameter "pOpTime"
    .parameter "pEventID"
    .parameter "pStartTime"
    .parameter "pEndTime"
    .parameter "pOldProperties"
    .parameter "pNewProperties"

    .prologue
    .line 362
    const-string v4, "Page_Extend"

    .line 363
    .local v4, lPageName:Ljava/lang/String;
    const/16 v5, 0x4e1f

    .line 364
    .local v5, lEventID:I
    move-object v6, p2

    .line 365
    .local v6, lArg1:Ljava/lang/String;
    sub-long v11, p5, p3

    .line 366
    .local v11, lTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-gez v2, :cond_0

    .line 367
    const-wide/16 v11, 0x0

    .line 369
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, lArg3:Ljava/lang/String;
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lorg/usertrack/android/utils/l;->a(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v10

    .line 372
    .local v10, lMergedProperties:Ljava/util/Properties;
    invoke-static {v10}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v10

    .line 373
    invoke-static {v10}, Lorg/usertrack/android/utils/l;->d(Ljava/util/Properties;)[Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, lArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method private a([Ljava/lang/String;Ljava/util/Properties;)[Ljava/lang/String;
    .locals 9
    .parameter "pKvs1"
    .parameter "pKvs2"

    .prologue
    .line 501
    if-nez p2, :cond_1

    .line 517
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 504
    .restart local p1
    :cond_1
    invoke-virtual {p2}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 505
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 506
    .local v3, lNValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 507
    .local v1, key:Ljava/lang/Object;
    invoke-static {v1}, Lorg/usertrack/android/utils/o;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, sKey:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/usertrack/android/utils/o;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 509
    .local v6, sValue:Ljava/lang/String;
    invoke-static {v5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 510
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 513
    .end local v1           #key:Ljava/lang/Object;
    .end local v5           #sKey:Ljava/lang/String;
    .end local v6           #sValue:Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 514
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 515
    .local v4, lV:[Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lcom/taobao/statistic/core/a;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "pKvs1"
    .parameter "pKvs2"

    .prologue
    const/4 v3, 0x0

    .line 488
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p2

    .line 497
    :goto_0
    return-object v0

    .line 491
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    :cond_2
    move-object v0, p1

    .line 492
    goto :goto_0

    .line 494
    :cond_3
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/String;

    .line 495
    .local v0, new_kvs:[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private aH()V
    .locals 2

    .prologue
    .line 724
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/taobao/statistic/core/a;->K(I)V

    .line 726
    iget-object v1, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 728
    .local v0, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 732
    :cond_0
    return-void
.end method


# virtual methods
.method public K(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/g;->M(I)V

    .line 50
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .parameter "howLongToastShow"
    .parameter "toastString"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/module/c/a;->setToastStyle(ILjava/lang/String;)V

    .line 836
    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 1
    .parameter "mainActivityForRestart"
    .parameter "howLongAppRestart"
    .parameter "howManyTimes"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/statistic/module/c/a;->withRestart(Landroid/app/Activity;II)V

    .line 831
    return-void
.end method

.method public a(Lcom/taobao/statistic/core/a$c;)V
    .locals 0
    .parameter "pUvDataReadyListener"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/taobao/statistic/core/a;->iO:Lcom/taobao/statistic/core/a$c;

    .line 46
    return-void
.end method

.method public a(Ljava/util/Date;I)V
    .locals 7
    .parameter "opTime"
    .parameter "eventID"

    .prologue
    const/4 v3, 0x0

    .line 106
    move-object v6, v3

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public a(Ljava/util/Date;ILjava/lang/Object;)V
    .locals 7
    .parameter "opTime"
    .parameter "eventID"
    .parameter "arg"

    .prologue
    const/4 v4, 0x0

    .line 110
    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public a(Ljava/util/Date;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "opTime"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v5, 0x0

    .line 114
    move-object v6, v5

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public a(Ljava/util/Date;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "opTime"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 119
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public varargs a(Ljava/util/Date;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 124
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;)V
    .locals 3
    .parameter "opTime"
    .parameter "bizOrderID"

    .prologue
    .line 447
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    const-string v0, "Page_Trade"

    const/16 v1, 0x1f41

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)V

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x1

    const-string v1, "TradeInvalidException"

    const-string v2, "BizOrderID can not be empty."

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;DD)V
    .locals 8
    .parameter "opTime"
    .parameter "pageKeyOrPageName"
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x2

    .line 63
    cmpg-double v0, p3, v3

    if-gez v0, :cond_0

    .line 64
    const-string v0, "UpdateGPSInfo"

    const-string v1, "Longitude not less than 0."

    invoke-static {v2, v0, v1}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 81
    :goto_0
    return-void

    .line 68
    :cond_0
    cmpg-double v0, p5, v3

    if-gez v0, :cond_1

    .line 69
    const-string v0, "UpdateGPSInfo"

    const-string v1, "Latitude not less than 0."

    invoke-static {v2, v0, v1}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    :cond_2
    const-string v0, "UpdateGPSInfo"

    const-string v1, "The pageKeyOrPageName can not be empty or \'-\'."

    invoke-static {v2, v0, v1}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_3
    const/16 v3, 0x3ed

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v7, v6

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;I)V
    .locals 8
    .parameter "opTime"
    .parameter "pageName"
    .parameter "eventID"

    .prologue
    const/4 v4, 0x0

    .line 84
    move-object v7, v4

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 8
    .parameter "opTime"
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg"

    .prologue
    const/4 v5, 0x0

    .line 90
    move-object v7, v5

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .parameter "opTime"
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v6, 0x0

    .line 95
    move-object v7, v6

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .parameter "opTime"
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 101
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public varargs a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 438
    if-lez p3, :cond_0

    .line 439
    invoke-static {p4}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p5}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p6}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 444
    :cond_0
    return-void
.end method

.method varargs a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 26
    .parameter "opTime"
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 151
    invoke-static/range {p2 .. p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 154
    :cond_0
    invoke-static/range {p4 .. p4}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 157
    :cond_1
    invoke-static/range {p5 .. p5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 160
    :cond_2
    invoke-static/range {p6 .. p6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 161
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p6

    .line 163
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->cP()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 164
    const/16 v2, 0x7d0

    move/from16 v0, p3

    if-lt v0, v2, :cond_4

    const/16 v2, 0xbb8

    move/from16 v0, p3

    if-le v0, v2, :cond_5

    :cond_4
    const/16 v2, 0x3f2

    move/from16 v0, p3

    if-eq v0, v2, :cond_5

    const/16 v2, 0x3f1

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 166
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/m;->cv()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 167
    const/4 v2, 0x1

    const-string v4, "EventID is not permitted in background mode[TBSSE]."

    const-string v5, "Buried in background mode, does not allow page event."

    invoke-static {v2, v4, v5}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 317
    :cond_6
    :goto_0
    return-void

    .line 175
    :cond_7
    invoke-static/range {p2 .. p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object p2

    .line 178
    :cond_8
    move-object/from16 v3, p2

    .line 179
    .local v3, page:Ljava/lang/String;
    invoke-static {v3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "com."

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "Page_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/taobao/statistic/core/l;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    :cond_9
    invoke-static {v3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 185
    const-string v2, "Page_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    :cond_a
    invoke-static {v3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 191
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/m;->cv()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->cP()Z

    move-result v2

    if-nez v2, :cond_6

    .line 193
    const/4 v2, 0x1

    const-string v4, "PageNameUndefinedException"

    const-string v5, "Please call create(TBS.Page.create) method first.(EentID:%s,arg1:%s,arg2:%s,arg3:%s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p4, v6, v7

    const/4 v7, 0x2

    aput-object p5, v6, v7

    const/4 v7, 0x3

    aput-object p6, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 203
    :cond_c
    invoke-static/range {p2 .. p7}, Lcom/taobao/statistic/module/h/l;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 205
    const/4 v2, 0x1

    const-string v4, "TraceFormatError"

    const-string v5, "Args can not contain the \"dep\" and \"idx\".PageName,arg1,arg2,arg3 can not contain \"||\" and \"\\n\".\n(PageName:%s,EventID:%s,arg1:%s,arg2:%s,arg3:%s,kvs:%s)"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    const/4 v7, 0x3

    aput-object p5, v6, v7

    const/4 v7, 0x4

    aput-object p6, v6, v7

    const/4 v7, 0x5

    invoke-static/range {p7 .. p7}, Lcom/taobao/statistic/module/h/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 214
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/m;->cv()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 215
    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 216
    const/16 v2, 0x5f

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    .line 217
    .local v25, pos:I
    if-lez v25, :cond_e

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bU()Lcom/taobao/statistic/module/d/a;

    move-result-object v2

    add-int/lit8 v4, v25, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/taobao/statistic/module/d/a;->X(Ljava/lang/String;)V

    .line 225
    .end local v25           #pos:I
    :cond_e
    :goto_1
    invoke-static/range {p4 .. p4}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 226
    const-string p4, "-"

    .line 229
    :cond_f
    invoke-static/range {p5 .. p5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 230
    const-string p5, "-"

    .line 233
    :cond_10
    invoke-static/range {p6 .. p6}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 234
    const-string p6, "-"

    .line 237
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bS()Lcom/taobao/statistic/module/e/a;

    move-result-object v2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/taobao/statistic/module/e/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    const/16 v2, 0x898

    move/from16 v0, p3

    if-gt v0, v2, :cond_1d

    const/16 v2, 0x834

    move/from16 v0, p3

    if-lt v0, v2, :cond_1d

    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x834

    const/16 v4, 0x834

    if-ne v2, v4, :cond_1d

    .line 242
    invoke-static/range {p4 .. p4}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 244
    :cond_12
    const/4 v2, 0x1

    const-string v4, "ControlNameUndefinedException"

    const-string v5, "The controls buried point, check the transmission control name is the empty value or \'-\'"

    invoke-static {v2, v4, v5}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 221
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bU()Lcom/taobao/statistic/module/d/a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/taobao/statistic/module/d/a;->X(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/m;->cv()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 251
    const-string v2, "-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 252
    const/16 v2, 0x2d

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    .line 253
    .restart local v25       #pos:I
    if-lez v25, :cond_15

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bU()Lcom/taobao/statistic/module/d/a;

    move-result-object v2

    add-int/lit8 v4, v25, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/taobao/statistic/module/d/a;->Y(Ljava/lang/String;)V

    .line 262
    .end local v25           #pos:I
    :cond_15
    :goto_2
    const-string v2, "-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cq()Ljava/lang/String;

    move-result-object v11

    .line 268
    .local v11, lastControlName:Ljava/lang/String;
    invoke-static {v11}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 269
    const-string v11, "-"

    .line 272
    :cond_16
    const/16 v22, 0x0

    .line 273
    .local v22, keepKeysName:[Ljava/lang/String;
    if-eqz p2, :cond_17

    .line 274
    const-string v2, "com."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/taobao/statistic/core/l;->w(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 283
    :cond_17
    :goto_3
    if-eqz v22, :cond_18

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/taobao/statistic/core/l;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 286
    .local v23, keepKeysValue:[Ljava/lang/String;
    if-eqz v23, :cond_18

    .line 287
    if-nez p7, :cond_1c

    .line 288
    move-object/from16 p7, v23

    .line 299
    .end local v23           #keepKeysValue:[Ljava/lang/String;
    :cond_18
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bP()Lcom/taobao/statistic/core/o;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/taobao/statistic/core/a;->iM:J

    move-object/from16 v5, p1

    move-object v8, v3

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v4 .. v13}, Lcom/taobao/statistic/core/o;->a(Ljava/util/Date;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 301
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/taobao/statistic/core/a;->iM:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/taobao/statistic/core/a;->iM:J

    .line 303
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/taobao/statistic/core/l;->C(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    .end local v11           #lastControlName:Ljava/lang/String;
    .end local v22           #keepKeysName:[Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bU()Lcom/taobao/statistic/module/d/a;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/taobao/statistic/module/d/a;->Y(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 277
    .restart local v11       #lastControlName:Ljava/lang/String;
    .restart local v22       #keepKeysName:[Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/statistic/core/l;->cr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/taobao/statistic/core/l;->w(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_3

    .line 290
    .restart local v23       #keepKeysValue:[Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v23

    array-length v2, v0

    move-object/from16 v0, p7

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 292
    .local v24, new_kvs:[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p7

    array-length v5, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v24

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    const/4 v2, 0x0

    move-object/from16 v0, p7

    array-length v4, v0

    move-object/from16 v0, v23

    array-length v5, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    move-object/from16 p7, v24

    goto/16 :goto_4

    .line 306
    .end local v11           #lastControlName:Ljava/lang/String;
    .end local v22           #keepKeysName:[Ljava/lang/String;
    .end local v23           #keepKeysValue:[Ljava/lang/String;
    .end local v24           #new_kvs:[Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bP()Lcom/taobao/statistic/core/o;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/taobao/statistic/core/a;->iM:J

    move-object/from16 v13, p1

    move-object/from16 v16, v3

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    invoke-virtual/range {v12 .. v21}, Lcom/taobao/statistic/core/o;->a(Ljava/util/Date;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 308
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/taobao/statistic/core/a;->iM:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/taobao/statistic/core/a;->iM:J

    .line 311
    :cond_1e
    const/16 v2, 0x3eb

    move/from16 v0, p3

    if-eq v0, v2, :cond_1f

    const/16 v2, 0x3ea

    move/from16 v0, p3

    if-eq v0, v2, :cond_1f

    const/16 v2, 0x3f1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 313
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iO:Lcom/taobao/statistic/core/a$c;

    if-eqz v2, :cond_6

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iO:Lcom/taobao/statistic/core/a$c;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/taobao/statistic/core/a$c;->L(I)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "opTime"
    .parameter "userNick"
    .parameter "userid"

    .prologue
    .line 53
    invoke-static {p2}, Lcom/taobao/statistic/module/h/l;->ae(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    const-string v1, "ArgsError"

    const-string v2, "Usernick can not be \'\\n\' or \"||\""

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/statistic/core/l;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .parameter "opTime"
    .parameter "control"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "NULL"

    .prologue
    .line 995
    const/4 v5, 0x0

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public varargs a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "control"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1002
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x836

    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/l;->cq()Ljava/lang/String;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "opTime"
    .parameter "category"
    .parameter "itemId"
    .parameter "size"
    .parameter "timeConsumer"
    .parameter "startDate"
    .parameter "finishDate"
    .parameter "isContinue"

    .prologue
    .line 871
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 873
    :cond_0
    const/4 v1, 0x1

    const-string v2, "Category Name Error"

    const-string v3, "The download category can not be empty or \'-\'."

    invoke-static {v1, v2, v3}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 903
    :goto_0
    return-void

    .line 877
    :cond_1
    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 879
    :cond_2
    const/4 v1, 0x1

    const-string v2, "Item ID Error"

    const-string v3, "The download item id can not be empty or \'-\'."

    invoke-static {v1, v2, v3}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 883
    :cond_3
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-gez v1, :cond_4

    .line 884
    const/4 v1, 0x1

    const-string v2, "Size Format Error"

    const-string v3, "The size of the download content can not be less than 0."

    invoke-static {v1, v2, v3}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 888
    :cond_4
    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-gez v1, :cond_5

    .line 889
    const/4 v1, 0x1

    const-string v2, "Time Format Error"

    const-string v3, "Download time consumption can not be less than 0."

    invoke-static {v1, v2, v3}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 893
    :cond_5
    invoke-static/range {p8 .. p8}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static/range {p9 .. p9}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 894
    :cond_6
    const-string v3, "Page_Usertrack"

    const/16 v4, 0xfa8

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "continue="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "category="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v8}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 898
    :cond_7
    const-string v3, "Page_Usertrack"

    const/16 v4, 0xfa8

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v1, 0x4

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "continue="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "category="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v8}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 11
    .parameter "opTime"
    .parameter "aCategory"
    .parameter "aItemId"
    .parameter "aSize"
    .parameter "aTimeConsumer"
    .parameter "aIsContinue"

    .prologue
    .line 864
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    .line 866
    return-void
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .parameter "opTime"
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "NULL"

    .prologue
    .line 980
    const/4 v6, 0x0

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method public varargs a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    .line 987
    const/16 v3, 0x836

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/l;->cq()Ljava/lang/String;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "opTime"
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"

    .prologue
    .line 929
    const/4 v5, 0x0

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method public varargs a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    const/4 v5, 0x0

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 936
    const/16 v3, 0x835

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "opTime"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"

    .prologue
    .line 942
    const/4 v4, 0x0

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 943
    return-void
.end method

.method public varargs a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    const/4 v5, 0x0

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 948
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x835

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public varargs a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .parameter "opTime"
    .parameter "pageKey"
    .parameter "page"
    .parameter "kvs"

    .prologue
    .line 522
    invoke-static/range {p3 .. p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 523
    :cond_0
    const/4 v2, 0x1

    const-string v3, "PageNameUndefinedException"

    const-string v4, "Please call create(TBS.Page.create) method first.(PageKey:%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 616
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    const-string v2, "Page_"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Page_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 534
    :cond_3
    invoke-static/range {p2 .. p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cr()Ljava/lang/String;

    move-result-object v11

    .line 538
    .local v11, currentPageKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cj()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 540
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    .line 543
    .end local v11           #currentPageKey:Ljava/lang/String;
    :cond_4
    const-string v16, ""

    .line 544
    .local v16, oldPage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->co()Ljava/lang/String;

    move-result-object v16

    .line 549
    :goto_1
    invoke-static/range {v16 .. v16}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 550
    const-string v16, "-"

    .line 552
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cq()Ljava/lang/String;

    move-result-object v10

    .line 553
    .local v10, controlName:Ljava/lang/String;
    invoke-static {v10}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 554
    const-string v10, "-"

    .line 557
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/taobao/statistic/core/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/taobao/statistic/core/l;->w(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 561
    .local v12, keepKeysName:[Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/taobao/statistic/core/l;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 564
    .local v13, keepKeysValue:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v13}, Lcom/taobao/statistic/core/a;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 567
    .end local v13           #keepKeysValue:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->de()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->cP()Z

    move-result v2

    if-nez v2, :cond_8

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/taobao/statistic/core/q;->t(Z)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 572
    const-string v4, "Page_Usertrack"

    const/16 v5, 0x3f1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 580
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v17

    .line 582
    .local v17, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v17, :cond_8

    .line 583
    const-string v2, "APP_STATUS"

    sget-object v3, Lcom/taobao/statistic/APPSTATUS;->RUNNING:Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v3}, Lcom/taobao/statistic/APPSTATUS;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {v17 .. v17}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 587
    .end local v17           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/a;->iN:Ljava/lang/Object;

    monitor-enter v3

    .line 588
    const/4 v14, 0x0

    .line 589
    .local v14, lDPEI:Lcom/taobao/statistic/core/a$b;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/taobao/statistic/core/a$b;

    move-object v14, v0

    .line 594
    :goto_3
    if-eqz v14, :cond_a

    .line 595
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/taobao/statistic/core/a$b;->b(Ljava/util/Date;)V

    .line 596
    invoke-virtual {v14, v10}, Lcom/taobao/statistic/core/a$b;->e(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/taobao/statistic/core/a$b;->d(Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Lcom/taobao/statistic/core/a$b;->a([Ljava/lang/String;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :cond_a
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->dc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/g;->bu()V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/taobao/statistic/core/q;->s(Z)V

    goto/16 :goto_0

    .line 547
    .end local v10           #controlName:Ljava/lang/String;
    .end local v12           #keepKeysName:[Ljava/lang/String;
    .end local v14           #lDPEI:Lcom/taobao/statistic/core/a$b;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 576
    .restart local v10       #controlName:Ljava/lang/String;
    .restart local v12       #keepKeysName:[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 592
    .restart local v14       #lDPEI:Lcom/taobao/statistic/core/a$b;
    :cond_d
    :try_start_1
    new-instance v15, Lcom/taobao/statistic/core/a$b;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/taobao/statistic/core/a$b;-><init>(Lcom/taobao/statistic/core/a;)V

    .end local v14           #lDPEI:Lcom/taobao/statistic/core/a$b;
    .local v15, lDPEI:Lcom/taobao/statistic/core/a$b;
    move-object v14, v15

    .end local v15           #lDPEI:Lcom/taobao/statistic/core/a$b;
    .restart local v14       #lDPEI:Lcom/taobao/statistic/core/a$b;
    goto/16 :goto_3

    .line 604
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 611
    .end local v10           #controlName:Ljava/lang/String;
    .end local v12           #keepKeysName:[Ljava/lang/String;
    .end local v14           #lDPEI:Lcom/taobao/statistic/core/a$b;
    .end local v16           #oldPage:Ljava/lang/String;
    :cond_e
    const/4 v2, 0x1

    const-string v3, "PageKeyUndefinedException"

    const-string v4, "Please check the enter method passed the name of the page is empty value or \'-\'"

    invoke-static {v2, v3, v4}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Date;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 8
    .parameter "pOpTime"
    .parameter "pEventID"
    .parameter "pProperties"

    .prologue
    .line 347
    invoke-static {p2}, Lcom/taobao/statistic/module/h/l;->ad(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    const-string v1, "EventIDInvalidError"

    const-string v5, "The EventID of commitEvent() has invalid character!"

    invoke-static {v0, v1, v5}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 358
    :goto_0
    return-void

    .line 352
    :cond_0
    const-string v2, "Page_Extend"

    .line 353
    .local v2, lPageName:Ljava/lang/String;
    const/16 v3, 0x4e1f

    .line 354
    .local v3, lEventID:I
    move-object v4, p2

    .line 355
    .local v4, lArg1:Ljava/lang/String;
    invoke-static {p3}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p3

    .line 356
    invoke-static {p3}, Lorg/usertrack/android/utils/l;->d(Ljava/util/Properties;)[Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, lArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "0"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs a(Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "opTime"
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 477
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/taobao/statistic/core/l;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, pageName:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 485
    .end local v0           #pageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 482
    :cond_1
    const/4 v1, 0x1

    const-string v2, "PageKeyUndefinedException"

    const-string v3, "Please check the page key is empty or \'-\'."

    invoke-static {v1, v2, v3}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public aI()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/module/c/a;->turnOff()V

    .line 813
    return-void
.end method

.method public aJ()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/module/c/a;->disableEffect()V

    .line 817
    return-void
.end method

.method public aK()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/module/c/a;->aK()V

    .line 821
    return-void
.end method

.method public aL()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/module/c/a;->turnOn()V

    .line 825
    return-void
.end method

.method public aM()V
    .locals 3

    .prologue
    .line 1099
    const/4 v0, 0x2

    const-string v1, "Exec"

    const-string v2, "resetSessionData"

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1101
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/l;->reset()V

    .line 1103
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bS()Lcom/taobao/statistic/module/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/module/e/a;->clear()V

    .line 1105
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bL()Lorg/usertrack/android/library/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/usertrack/android/library/d/c;->finish()V

    .line 1106
    return-void
.end method

.method public b(Ljava/util/Date;Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "pushCategoryName"

    .prologue
    const/4 v5, 0x0

    .line 1009
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    const-string v2, "Page_Usertrack"

    const/16 v3, 0xfa2

    move-object v7, v5

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1018
    :goto_0
    return-void

    .line 1015
    :cond_0
    const/4 v0, 0x1

    const-string v1, "PushArrive"

    const-string v2, "The pushCategoryName can not be empty or \'-\'"

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "opTime"
    .parameter "pageKey"
    .parameter "page"

    .prologue
    const/4 v4, 0x1

    .line 768
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 769
    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    :cond_0
    const-string v0, "PageNameUndefinedException"

    const-string v1, "Please check PageKey corresponding page has defined(PageKey:%s)."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 789
    :goto_0
    return-void

    .line 778
    :cond_1
    const-string v0, "Page_"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/statistic/core/l;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :cond_3
    const-string v0, "PageKeyUndefinedException"

    const-string v1, "Please check page Key passed to the create method is empty"

    invoke-static {v4, v0, v1}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "opTime"
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"

    .prologue
    .line 954
    const/4 v5, 0x0

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method public varargs b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    const/4 v5, 0x0

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 961
    const/16 v3, 0x837

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "opTime"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"

    .prologue
    .line 967
    const/4 v4, 0x0

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method public varargs b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    const/4 v5, 0x0

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 974
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/l;->cp()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x837

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method public b(Ljava/util/Date;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 10
    .parameter "pOpTime"
    .parameter "pEventID"
    .parameter "pProperties"

    .prologue
    .line 381
    invoke-static {p2}, Lcom/taobao/statistic/module/h/l;->ad(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    const/4 v0, 0x1

    const-string v1, "EventIDInvalidError"

    const-string v2, "The EventID of commitEvent() has invalid character!"

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 407
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_1

    .line 389
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/taobao/statistic/core/a$a;

    .line 394
    .local v9, lObject:Lcom/taobao/statistic/core/a$a;
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/taobao/statistic/core/a$a;->aP()Z

    move-result v0

    if-nez v0, :cond_2

    .line 396
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v9}, Lcom/taobao/statistic/core/a$a;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v9}, Lcom/taobao/statistic/core/a$a;->getProperties()Ljava/util/Properties;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;JJLjava/util/Properties;Ljava/util/Properties;)V

    goto :goto_0

    .line 402
    .end local v9           #lObject:Lcom/taobao/statistic/core/a$a;
    :cond_2
    new-instance v9, Lcom/taobao/statistic/core/a$a;

    invoke-direct {v9, p0}, Lcom/taobao/statistic/core/a$a;-><init>(Lcom/taobao/statistic/core/a;)V

    .line 403
    .restart local v9       #lObject:Lcom/taobao/statistic/core/a$a;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/taobao/statistic/core/a$a;->b(J)V

    .line 404
    invoke-virtual {v9, p3}, Lcom/taobao/statistic/core/a$a;->setProperties(Ljava/util/Properties;)V

    .line 405
    invoke-virtual {v9}, Lcom/taobao/statistic/core/a$a;->aN()V

    .line 406
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public varargs b(Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .parameter "opTime"
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 619
    invoke-static/range {p2 .. p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/taobao/statistic/core/l;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, pageName:Ljava/lang/String;
    invoke-static {v4}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 624
    :cond_0
    const/4 v2, 0x1

    const-string v3, "PageNameUndefinedException"

    const-string v5, "Please call create(TBS.Page.create) method first.(PageKey:%s)."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 701
    .end local v4           #pageName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 632
    .restart local v4       #pageName:Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    .line 633
    .local v15, toBackground:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/b;->k(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v10

    .line 635
    .local v10, cn:Landroid/content/ComponentName;
    if-eqz v10, :cond_9

    .line 636
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 638
    const/4 v15, 0x0

    .line 645
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/taobao/statistic/core/l;->z(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cm()J

    move-result-wide v11

    .line 648
    .local v11, duration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/core/a;->iN:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 649
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/taobao/statistic/core/a$b;

    .line 651
    .local v13, lDPEI:Lcom/taobao/statistic/core/a$b;
    if-eqz v13, :cond_3

    .line 653
    invoke-virtual {v13}, Lcom/taobao/statistic/core/a$b;->aS()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/taobao/statistic/core/a;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 655
    invoke-virtual {v13}, Lcom/taobao/statistic/core/a$b;->aU()Ljava/util/Properties;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/taobao/statistic/core/a;->a([Ljava/lang/String;Ljava/util/Properties;)[Ljava/lang/String;

    move-result-object p3

    .line 656
    invoke-virtual {v13}, Lcom/taobao/statistic/core/a$b;->aT()Ljava/util/Date;

    move-result-object v3

    const/16 v5, 0x7d1

    invoke-virtual {v13}, Lcom/taobao/statistic/core/a$b;->aQ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/taobao/statistic/core/a$b;->aR()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 660
    :cond_3
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    if-eqz v15, :cond_6

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->cP()Z

    move-result v2

    if-nez v2, :cond_5

    .line 664
    const/16 v5, 0x3f2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v2

    const-string v3, "Page_Usertrack"

    invoke-virtual {v2, v3}, Lcom/taobao/statistic/core/g;->u(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bW()Lcom/taobao/statistic/core/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v14

    .line 672
    .local v14, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v14, :cond_4

    .line 673
    const-string v2, "APP_STATUS"

    sget-object v3, Lcom/taobao/statistic/APPSTATUS;->IN_BACKGROUND:Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v3}, Lcom/taobao/statistic/APPSTATUS;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v14}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 677
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/taobao/statistic/core/q;->t(Z)V

    .line 678
    invoke-direct/range {p0 .. p0}, Lcom/taobao/statistic/core/a;->aH()V

    .line 680
    .end local v14           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/l;->cd()V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bG()Lcom/taobao/statistic/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/g;->bw()V

    .line 684
    .end local v11           #duration:J
    .end local v13           #lDPEI:Lcom/taobao/statistic/core/a$b;
    :cond_6
    if-nez v15, :cond_7

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/statistic/core/a;->iN:Ljava/lang/Object;

    monitor-enter v3

    .line 686
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 693
    .end local v4           #pageName:Ljava/lang/String;
    .end local v10           #cn:Landroid/content/ComponentName;
    .end local v15           #toBackground:Z
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bF()Lcom/taobao/statistic/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/statistic/core/q;->de()Z

    move-result v2

    if-nez v2, :cond_1

    .line 694
    invoke-static {}, Lorg/usertrack/android/utils/p;->eF()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v2}, Lcom/taobao/statistic/core/i;->bK()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/p;->p(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 697
    invoke-direct/range {p0 .. p1}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 640
    .restart local v4       #pageName:Ljava/lang/String;
    .restart local v10       #cn:Landroid/content/ComponentName;
    .restart local v15       #toBackground:Z
    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 643
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 660
    .restart local v11       #duration:J
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 687
    .end local v11           #duration:J
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 690
    .end local v4           #pageName:Ljava/lang/String;
    .end local v10           #cn:Landroid/content/ComponentName;
    .end local v15           #toBackground:Z
    :cond_a
    const/4 v2, 0x1

    const-string v3, "PageKeyUndefinedException"

    const-string v5, "Please check page Key passed to the leave method is empty"

    invoke-static {v2, v3, v5}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public c(Ljava/util/Date;Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "pushCategoryName"

    .prologue
    const/4 v5, 0x0

    .line 1021
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    const-string v2, "Page_Usertrack"

    const/16 v3, 0xfa3

    move-object v7, v5

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1030
    :goto_0
    return-void

    .line 1027
    :cond_0
    const/4 v0, 0x1

    const-string v1, "PushDisplay"

    const-string v2, "The pushCategoryName can not be empty or \'-\'"

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "keywordCategory"
    .parameter "keyword"

    .prologue
    const/4 v6, 0x0

    .line 1046
    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    :cond_0
    const-string p3, "Empty"

    .line 1050
    :cond_1
    const-string v2, "Page_Usertrack"

    const/16 v3, 0xfa5

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public c(Ljava/util/Date;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 10
    .parameter "pOpTime"
    .parameter "pEventID"
    .parameter "pProperties"

    .prologue
    .line 411
    invoke-static {p2}, Lcom/taobao/statistic/module/h/l;->ad(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_0
    const/4 v0, 0x1

    const-string v1, "EventIDInvalidError"

    const-string v2, "The EventID of commitEvent() has invalid character!"

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 434
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/taobao/statistic/core/a$a;

    .line 422
    .local v9, lObject:Lcom/taobao/statistic/core/a$a;
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/taobao/statistic/core/a$a;->aP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {v9}, Lcom/taobao/statistic/core/a$a;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v9}, Lcom/taobao/statistic/core/a$a;->getProperties()Ljava/util/Properties;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;JJLjava/util/Properties;Ljava/util/Properties;)V

    goto :goto_0

    .line 429
    .end local v9           #lObject:Lcom/taobao/statistic/core/a$a;
    :cond_2
    new-instance v9, Lcom/taobao/statistic/core/a$a;

    invoke-direct {v9, p0}, Lcom/taobao/statistic/core/a$a;-><init>(Lcom/taobao/statistic/core/a;)V

    .line 430
    .restart local v9       #lObject:Lcom/taobao/statistic/core/a$a;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/taobao/statistic/core/a$a;->b(J)V

    .line 431
    invoke-virtual {v9, p3}, Lcom/taobao/statistic/core/a$a;->setProperties(Ljava/util/Properties;)V

    .line 432
    invoke-virtual {v9}, Lcom/taobao/statistic/core/a$a;->aO()V

    .line 433
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iP:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public varargs c(Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 735
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 736
    iget-object v3, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/taobao/statistic/core/l;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, pageName:Ljava/lang/String;
    invoke-static {v2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 739
    :cond_0
    const-string v3, "PageNameUndefinedException"

    const-string v4, "Please call create(TBS.Page.create) method first.(PageKey:%s)."

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 765
    .end local v2           #pageName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 747
    .restart local v2       #pageName:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/taobao/statistic/core/l;->y(Ljava/lang/String;)J

    move-result-wide v0

    .line 749
    .local v0, pageFinishDuration:J
    iget-object v3, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v3}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/taobao/statistic/core/l;->A(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 753
    const-string v3, "Method is not called Exception"

    const-string v4, "Please call TBS.Page.enter first(PageKey:%s)."

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 762
    .end local v0           #pageFinishDuration:J
    .end local v2           #pageName:Ljava/lang/String;
    :cond_3
    const-string v3, "PageKeyUndefinedException"

    const-string v4, "Please check page Key passed to the destroy method is empty"

    invoke-static {v6, v3, v4}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d(Ljava/util/Date;Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "pushCategoryName"

    .prologue
    const/4 v5, 0x0

    .line 1033
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    const-string v2, "Page_Usertrack"

    const/16 v3, 0xfa4

    move-object v7, v5

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1042
    :goto_0
    return-void

    .line 1039
    :cond_0
    const/4 v0, 0x1

    const-string v1, "PushView"

    const-string v2, "The pushCategoryName can not be empty or \'-\'"

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "weiboType"
    .parameter "shareContent"

    .prologue
    const/4 v6, 0x0

    .line 1062
    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    const-string v2, "Page_Usertrack"

    const/16 v3, 0x1389

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1071
    :goto_0
    return-void

    .line 1068
    :cond_0
    const/4 v0, 0x1

    const-string v1, "WeiboShare"

    const-string v2, "The shareContent can not be empty or \'-\'"

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public e(Ljava/util/Date;Ljava/lang/String;)V
    .locals 8
    .parameter "opTime"
    .parameter "userNick"

    .prologue
    const/4 v5, 0x0

    .line 1074
    const-string v2, "Page_Usertrack"

    const/16 v3, 0x3ee

    move-object v7, v5

    check-cast v7, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 1076
    return-void
.end method

.method public getUtsid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/l;->cf()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 924
    :goto_0
    return-object v1

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 924
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    const-string v1, "Page_Usertrack_Button_SystemBack"

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/l;->C(Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method public varargs keepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "pageKey"
    .parameter "keys"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/l;->d(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method public onCaughException(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/module/c/a;->onCaughException(Ljava/lang/Throwable;)V

    .line 1059
    :cond_0
    return-void
.end method

.method public putKvs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/l;->putKvs(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1088
    return-void
.end method

.method public removeDaemonCrashCaughtListener(Ljava/lang/String;)V
    .locals 1
    .parameter "threadName"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/module/c/a;->removeDaemonCrashCaughtListener(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 4
    .parameter "channel"

    .prologue
    .line 792
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ae(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 794
    const/4 v1, 0x1

    const-string v2, "ArgsError"

    const-string v3, "Channel can not be \'\\n\' or \"||\""

    invoke-static {v1, v2, v3}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 799
    .local v0, atPos:I
    if-lez v0, :cond_2

    .line 800
    iget-object v1, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/statistic/core/m;->setChannel(Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :cond_2
    iget-object v1, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/statistic/core/m;->setChannel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContinueWhenDaemonThreadUncaughException()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/module/c/a;->setContinueWhenDaemonThreadUncaughException()V

    .line 860
    return-void
.end method

.method public setEventDispatchListener(Lcom/taobao/statistic/UTEventDispatchListener;)V
    .locals 1
    .parameter "pListener"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/m;->a(Lcom/taobao/statistic/UTEventDispatchListener;)V

    .line 147
    return-void
.end method

.method public setKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "appKey"
    .parameter "appSecret"

    .prologue
    .line 128
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {p1}, Lcom/taobao/statistic/module/h/l;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/taobao/statistic/module/h/l;->ae(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    :cond_2
    const/4 v0, 0x1

    const-string v1, "ArgsError"

    const-string v2, "Appkey or AppSecret can not be \'\\n\' or \"||\""

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/m;->E(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/statistic/core/m;->F(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/module/c/a;->setOnCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;)V

    .line 840
    return-void
.end method

.method public setOnDaemonCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 1
    .parameter "daemonThreadCrashCaughtListener"

    .prologue
    .line 850
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/module/c/a;->setOnDaemonCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V

    .line 852
    return-void
.end method

.method public setOnDaemonCrashCaughtListener(Ljava/lang/String;Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 1
    .parameter "threadName"
    .parameter "daemonThreadCrashCaughtListener"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bJ()Lcom/taobao/statistic/module/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/module/c/a;->setOnDaemonCrashCaughtListener(Ljava/lang/String;Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V

    .line 846
    return-void
.end method

.method public turnDebug()V
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/m;->j(Z)V

    .line 1096
    return-void
.end method

.method public turnOffLogFriendly()V
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/statistic/core/m;->turnOffLogFriendly()V

    .line 1092
    return-void
.end method

.method public turnOnSecuritySDKSupport()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bO()Lcom/taobao/statistic/core/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/m;->n(Z)V

    .line 143
    return-void
.end method

.method public varargs unKeepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "pageKey"
    .parameter "keys"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/l;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method public updatePageProperties(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 7
    .parameter "pPageKey"
    .parameter "properties"

    .prologue
    .line 456
    iget-object v6, p0, Lcom/taobao/statistic/core/a;->iN:Ljava/lang/Object;

    monitor-enter v6

    .line 457
    const/4 v1, 0x0

    .line 458
    .local v1, lDPEI:Lcom/taobao/statistic/core/a$b;
    :try_start_0
    iget-object v5, p0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    iget-object v5, p0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/taobao/statistic/core/a$b;

    move-object v1, v0

    .line 464
    :goto_0
    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {v1}, Lcom/taobao/statistic/core/a$b;->aU()Ljava/util/Properties;

    move-result-object v4

    .line 466
    .local v4, lOldKVS:Ljava/util/Properties;
    move-object v3, p2

    .line 467
    .local v3, lKvs:Ljava/util/Properties;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 468
    invoke-virtual {v4, v3}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 469
    move-object v3, v4

    .line 471
    :cond_0
    invoke-virtual {v1, v3}, Lcom/taobao/statistic/core/a$b;->b(Ljava/util/Properties;)V

    .line 473
    .end local v3           #lKvs:Ljava/util/Properties;
    .end local v4           #lOldKVS:Ljava/util/Properties;
    :cond_1
    monitor-exit v6

    .line 474
    return-void

    .line 461
    :cond_2
    new-instance v2, Lcom/taobao/statistic/core/a$b;

    invoke-direct {v2, p0}, Lcom/taobao/statistic/core/a$b;-><init>(Lcom/taobao/statistic/core/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    .end local v1           #lDPEI:Lcom/taobao/statistic/core/a$b;
    .local v2, lDPEI:Lcom/taobao/statistic/core/a$b;
    :try_start_1
    iget-object v5, p0, Lcom/taobao/statistic/core/a;->iQ:Ljava/util/Map;

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .end local v2           #lDPEI:Lcom/taobao/statistic/core/a$b;
    .restart local v1       #lDPEI:Lcom/taobao/statistic/core/a$b;
    goto :goto_0

    .line 473
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .end local v1           #lDPEI:Lcom/taobao/statistic/core/a$b;
    .restart local v2       #lDPEI:Lcom/taobao/statistic/core/a$b;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #lDPEI:Lcom/taobao/statistic/core/a$b;
    .restart local v1       #lDPEI:Lcom/taobao/statistic/core/a$b;
    goto :goto_1
.end method

.method public updateSessionProperties(Ljava/util/Properties;)V
    .locals 1
    .parameter "properties"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bQ()Lcom/taobao/statistic/core/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/l;->updateSessionProperties(Ljava/util/Properties;)V

    .line 809
    return-void
.end method

.method public updateUTCookie(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "aUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p2, kvs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bV()Lcom/taobao/statistic/module/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/module/b/a;->updateUTCookie(Ljava/lang/String;Ljava/util/Map;)V

    .line 912
    return-void
.end method

.method public updateUTSIDToCookie(Ljava/lang/String;)V
    .locals 1
    .parameter "aUrl"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/taobao/statistic/core/a;->iF:Lcom/taobao/statistic/core/i;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/i;->bV()Lcom/taobao/statistic/module/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/module/b/a;->updateUTSIDToCookie(Ljava/lang/String;)V

    .line 916
    return-void
.end method
