.class public Lcom/taobao/statistic/core/b;
.super Lcom/taobao/statistic/c/b;
.source "ExecProxy.java"

# interfaces
.implements Lorg/usertrack/android/library/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/core/b$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/statistic/c/b;",
        "Lorg/usertrack/android/library/a/b",
        "<",
        "Lcom/taobao/statistic/core/f;",
        ">;"
    }
.end annotation


# instance fields
.field private aw:I

.field private jG:Lorg/usertrack/android/library/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/usertrack/android/library/a/a",
            "<",
            "Lcom/taobao/statistic/core/f;",
            ">;"
        }
    .end annotation
.end field

.field private jH:Lcom/taobao/statistic/core/a;

.field private jI:I

.field private jJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/i;)V
    .locals 2
    .parameter "aRuntime"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/taobao/statistic/c/b;-><init>(Lcom/taobao/statistic/core/i;)V

    .line 32
    iput-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    .line 36
    iput-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/statistic/core/b;->aw:I

    .line 44
    iput v1, p0, Lcom/taobao/statistic/core/b;->jI:I

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/core/b;->jJ:Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/taobao/statistic/core/a;

    invoke-direct {v0, p1}, Lcom/taobao/statistic/core/a;-><init>(Lcom/taobao/statistic/core/i;)V

    iput-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    .line 51
    new-instance v0, Lorg/usertrack/android/library/a/a;

    invoke-direct {v0, p0, v1}, Lorg/usertrack/android/library/a/a;-><init>(Lorg/usertrack/android/library/a/b;Z)V

    iput-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    .line 52
    return-void
.end method

.method private a(Lcom/taobao/statistic/core/f;)V
    .locals 1
    .parameter "mi"

    .prologue
    .line 459
    if-eqz p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v0, p1}, Lorg/usertrack/android/library/a/a;->add(Ljava/lang/Object;)V

    .line 465
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/taobao/statistic/core/a$c;)V
    .locals 1
    .parameter "pUvDataReadyListener"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/a;->a(Lcom/taobao/statistic/core/a$c;)V

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .parameter "control"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "NULL"

    .prologue
    .line 367
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 368
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kG:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 369
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 371
    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V
    .locals 6
    .parameter "control"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    .line 375
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 376
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kH:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 377
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 379
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "NULL"

    .prologue
    .line 349
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 350
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kE:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 351
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 354
    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V
    .locals 7
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    .line 358
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 359
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kF:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 360
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 363
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"

    .prologue
    .line 287
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 288
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kw:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 289
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 291
    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 6
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    .line 295
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 296
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kx:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 297
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 299
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"

    .prologue
    .line 302
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 303
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->ky:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 304
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 306
    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 2
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    .line 310
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 311
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kz:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 312
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 314
    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "page"
    .parameter "kvs"

    .prologue
    .line 229
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 230
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kp:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 231
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 233
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 222
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 223
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->ko:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 224
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 226
    return-void
.end method

.method public b(Lcom/taobao/statistic/core/f;)V
    .locals 12
    .parameter "methodItem"

    .prologue
    .line 470
    :try_start_0
    instance-of v0, p1, Lcom/taobao/statistic/core/f;

    if-eqz v0, :cond_0

    .line 471
    sget-object v0, Lcom/taobao/statistic/core/b$1;->jK:[I

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bn()Lcom/taobao/statistic/core/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 747
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/statistic/core/b;->aw:I

    .line 748
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/statistic/core/b;->jI:I

    .line 753
    :cond_0
    :goto_1
    return-void

    .line 473
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v11

    .line 751
    .local v11, e:Ljava/lang/Exception;
    const/4 v0, 0x2

    const-string v1, "HSHAQueue-Error"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 477
    .end local v11           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->getDouble(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/android/utils/k;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;DD)V

    goto :goto_0

    .line 483
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->q(Ljava/lang/Object;)Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/util/Properties;)V

    goto :goto_0

    .line 488
    :pswitch_3
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->q(Ljava/lang/Object;)Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;Ljava/util/Properties;)V

    goto/16 :goto_0

    .line 493
    :pswitch_4
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->q(Ljava/lang/Object;)Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a;->c(Ljava/util/Date;Ljava/lang/String;Ljava/util/Properties;)V

    goto/16 :goto_0

    .line 498
    :pswitch_5
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 503
    :pswitch_6
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 509
    :pswitch_7
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 515
    :pswitch_8
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bp()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 522
    :pswitch_9
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bp()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bq()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    :pswitch_a
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;I)V

    goto/16 :goto_0

    .line 534
    :pswitch_b
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 539
    :pswitch_c
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 544
    :pswitch_d
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 550
    :pswitch_e
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bp()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    :pswitch_f
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :pswitch_10
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 566
    :pswitch_11
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    :pswitch_12
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 577
    :pswitch_13
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/taobao/statistic/core/a;->c(Ljava/util/Date;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    :pswitch_14
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 587
    :pswitch_15
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/usertrack/android/utils/k;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bp()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto/16 :goto_0

    .line 595
    :pswitch_16
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/usertrack/android/utils/k;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bp()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bq()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->br()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual/range {v0 .. v10}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 605
    :pswitch_17
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {v0}, Lcom/taobao/statistic/core/a;->goBack()V

    goto/16 :goto_0

    .line 608
    :pswitch_18
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 615
    :pswitch_19
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bp()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 623
    :pswitch_1a
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 629
    :pswitch_1b
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 636
    :pswitch_1c
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 643
    :pswitch_1d
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bp()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 651
    :pswitch_1e
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 657
    :pswitch_1f
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 664
    :pswitch_20
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bp()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 672
    :pswitch_21
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bp()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bq()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    :pswitch_22
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 688
    :pswitch_23
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/usertrack/android/utils/k;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bo()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/usertrack/android/utils/k;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bp()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/a;->a(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 696
    :pswitch_24
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/statistic/core/a;->b(Ljava/util/Date;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 700
    :pswitch_25
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/statistic/core/a;->c(Ljava/util/Date;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 704
    :pswitch_26
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/statistic/core/a;->d(Ljava/util/Date;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 708
    :pswitch_27
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a;->c(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 713
    :pswitch_28
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/taobao/statistic/core/a;->onCaughException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 716
    :pswitch_29
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/statistic/core/a;->d(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    :pswitch_2a
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->bs()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/statistic/core/a;->e(Ljava/util/Date;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 725
    :pswitch_2b
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-virtual {v1, v0}, Lcom/taobao/statistic/core/a;->updateSessionProperties(Ljava/util/Properties;)V

    goto/16 :goto_0

    .line 729
    :pswitch_2c
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/statistic/core/a;->keepKvs(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 734
    :pswitch_2d
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/statistic/core/a;->unKeepKvs(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 739
    :pswitch_2e
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg1()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/usertrack/android/utils/k;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/statistic/core/f;->getArg2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/statistic/core/a;->putKvs(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 743
    :pswitch_2f
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/a;->K(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"

    .prologue
    .line 318
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 319
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kA:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 320
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 322
    return-void
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 6
    .parameter "pageKeyOrPageName"
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    .line 326
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 327
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kB:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 328
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 330
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"

    .prologue
    .line 333
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 334
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kC:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 335
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 337
    return-void
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 2
    .parameter "control"
    .parameter "controlName"
    .parameter "NULL"
    .parameter "kvs"

    .prologue
    .line 341
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 342
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kD:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 343
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 345
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 236
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 237
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kq:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 238
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 240
    return-void
.end method

.method public bf()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jJ:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/usertrack/android/library/a/a;->C(Z)V

    .line 61
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a;->el()V

    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bg()V
    .locals 5

    .prologue
    .line 75
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jJ:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    iget v0, p0, Lcom/taobao/statistic/core/b;->aw:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a;->ek()I

    move-result v0

    iput v0, p0, Lcom/taobao/statistic/core/b;->aw:I

    .line 80
    :cond_0
    iget v0, p0, Lcom/taobao/statistic/core/b;->jI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/statistic/core/b;->jI:I

    .line 82
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a;->ek()I

    move-result v0

    iget v2, p0, Lcom/taobao/statistic/core/b;->aw:I

    if-ne v0, v2, :cond_1

    .line 83
    iget v0, p0, Lcom/taobao/statistic/core/b;->jI:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 84
    const/4 v0, 0x2

    const-string v2, "RecoverHSHAQueue"

    const-string v3, "Exit By Max Recover Times Strategy[Not Change]."

    invoke-static {v0, v2, v3}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a;->shutdown()V

    .line 87
    monitor-exit v1

    .line 102
    :goto_0
    return-void

    .line 90
    :cond_1
    iget v0, p0, Lcom/taobao/statistic/core/b;->jI:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    .line 91
    const/4 v0, 0x2

    const-string v2, "RecoverHSHAQueue"

    const-string v3, "Exit By Max Recover Times Strategy[Change]."

    invoke-static {v0, v2, v3}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a;->shutdown()V

    .line 94
    monitor-exit v1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_2
    const/4 v0, 0x2

    :try_start_1
    const-string v2, "RecoverHSHAQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Times:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/taobao/statistic/core/b;->jI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v0}, Lorg/usertrack/android/library/a/a;->em()V

    .line 101
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public bh()Lcom/taobao/statistic/core/a;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/taobao/statistic/core/b;->jH:Lcom/taobao/statistic/core/a;

    return-object v0
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 243
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 244
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kr:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 245
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 247
    return-void
.end method

.method public commitEvent(Ljava/lang/String;I)V
    .locals 2
    .parameter "pageName"
    .parameter "eventID"

    .prologue
    .line 141
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 142
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kd:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 145
    return-void
.end method

.method public commitEvent(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg"

    .prologue
    .line 148
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 149
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->ke:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 152
    return-void
.end method

.method public varargs commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 7
    .parameter "pageName"
    .parameter "eventID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "kvs"

    .prologue
    .line 208
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 209
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kh:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 210
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 212
    return-void
.end method

.method public commitEvent(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2
    .parameter "eventID"
    .parameter "properties"

    .prologue
    .line 120
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 121
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->ka:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 124
    return-void
.end method

.method public commitEventBegin(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2
    .parameter "eventID"
    .parameter "properties"

    .prologue
    .line 127
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 128
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kb:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 129
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 131
    return-void
.end method

.method public commitEventEnd(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2
    .parameter "eventID"
    .parameter "properties"

    .prologue
    .line 134
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 135
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kc:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 136
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 138
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "category"
    .parameter "itemId"
    .parameter "size"
    .parameter "timeConsumer"
    .parameter "start"
    .parameter "finish"
    .parameter "isContinue"

    .prologue
    .line 272
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 273
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->ku:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 274
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 277
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 6
    .parameter "category"
    .parameter "itemId"
    .parameter "size"
    .parameter "timeConsumer"
    .parameter "isContinue"

    .prologue
    .line 264
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 265
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kt:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 266
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 268
    return-void
.end method

.method public forceUpload()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 251
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kT:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 252
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 253
    return-void
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 281
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kv:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 283
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "page"

    .prologue
    .line 256
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 257
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->ks:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 258
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 260
    return-void
.end method

.method public synthetic j(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Lcom/taobao/statistic/core/f;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/taobao/statistic/core/b;->b(Lcom/taobao/statistic/core/f;)V

    return-void
.end method

.method public varargs keepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "keys"

    .prologue
    .line 438
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 439
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kQ:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 440
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 441
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 442
    return-void
.end method

.method public onCaughException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "ex"

    .prologue
    .line 410
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 411
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kM:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 412
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/f;->l(Ljava/lang/Object;)V

    .line 413
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 414
    return-void
.end method

.method public pushArrive(Ljava/lang/String;)V
    .locals 2
    .parameter "pushCategoryName"

    .prologue
    .line 382
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 383
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kI:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 384
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/f;->l(Ljava/lang/Object;)V

    .line 385
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 386
    return-void
.end method

.method public pushDisplay(Ljava/lang/String;)V
    .locals 2
    .parameter "pushCategoryName"

    .prologue
    .line 389
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 390
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kJ:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 391
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/f;->l(Ljava/lang/Object;)V

    .line 392
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 393
    return-void
.end method

.method public pushView(Ljava/lang/String;)V
    .locals 2
    .parameter "pushCategoryName"

    .prologue
    .line 396
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 397
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kK:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 398
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/f;->l(Ljava/lang/Object;)V

    .line 399
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 400
    return-void
.end method

.method public putKvs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 452
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 453
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kS:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 454
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 456
    return-void
.end method

.method public searchKeyword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "keywordCategory"
    .parameter "keyword"

    .prologue
    .line 403
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 404
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kL:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 405
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 407
    return-void
.end method

.method public shutdown()V
    .locals 5

    .prologue
    .line 769
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v1}, Lorg/usertrack/android/library/a/a;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v1}, Lorg/usertrack/android/library/a/a;->shutdown()V

    .line 771
    iget-object v1, p0, Lcom/taobao/statistic/core/b;->jG:Lorg/usertrack/android/library/a/a;

    invoke-virtual {v1}, Lorg/usertrack/android/library/a/a;->ek()I

    move-result v0

    .line 772
    .local v0, queueSize:I
    if-lez v0, :cond_0

    .line 773
    const/4 v1, 0x1

    const-string v2, "Buried event is not dispatched."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")Please be attention and check(Whether uninitialized)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/taobao/statistic/core/d;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 781
    .end local v0           #queueSize:I
    :cond_0
    return-void
.end method

.method public trade(Ljava/lang/String;)V
    .locals 2
    .parameter "bizOrderID"

    .prologue
    .line 215
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 216
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kn:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 217
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/f;->l(Ljava/lang/Object;)V

    .line 218
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 219
    return-void
.end method

.method public varargs unKeepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "keys"

    .prologue
    .line 445
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 446
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kR:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 447
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 448
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 449
    return-void
.end method

.method public updateGPSInfo(Ljava/lang/String;DD)V
    .locals 3
    .parameter "pageKeyOrPageName"
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    .line 113
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 114
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->jZ:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 115
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 117
    return-void
.end method

.method public updateSessionProperties(Ljava/util/Properties;)V
    .locals 2
    .parameter "lProperties"

    .prologue
    .line 424
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 425
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kP:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 426
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/f;->l(Ljava/lang/Object;)V

    .line 427
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 428
    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "userNick"
    .parameter "userid"

    .prologue
    .line 105
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 106
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->jY:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 107
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 109
    return-void
.end method

.method public userRegister(Ljava/lang/String;)V
    .locals 2
    .parameter "userNick"

    .prologue
    .line 431
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 432
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kO:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 433
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/f;->l(Ljava/lang/Object;)V

    .line 434
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 435
    return-void
.end method

.method public weiboShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "weiboType"
    .parameter "shareContent"

    .prologue
    .line 417
    new-instance v0, Lcom/taobao/statistic/core/f;

    invoke-direct {v0}, Lcom/taobao/statistic/core/f;-><init>()V

    .line 418
    .local v0, methodItem:Lcom/taobao/statistic/core/f;
    sget-object v1, Lcom/taobao/statistic/core/e;->kN:Lcom/taobao/statistic/core/e;

    invoke-virtual {v0, v1}, Lcom/taobao/statistic/core/f;->a(Lcom/taobao/statistic/core/e;)V

    .line 419
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/b;->a(Lcom/taobao/statistic/core/f;)V

    .line 421
    return-void
.end method
