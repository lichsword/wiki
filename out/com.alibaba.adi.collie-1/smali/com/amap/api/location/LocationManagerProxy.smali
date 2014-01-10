.class public Lcom/amap/api/location/LocationManagerProxy;
.super Ljava/lang/Object;
.source "LocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/LocationManagerProxy$a;,
        Lcom/amap/api/location/LocationManagerProxy$b;
    }
.end annotation


# static fields
.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field private static b:Lcom/amap/api/location/LocationManagerProxy;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private c:Lcom/amap/api/location/a;

.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/location/e;

.field private f:Lcom/amap/api/location/LocationManagerProxy$b;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:D

.field private k:D

.field private l:Z

.field private m:J

.field private n:D

.field private o:Lcom/amap/api/location/e;

.field private p:Lcom/amap/api/location/LocationManagerProxy$a;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/amap/api/location/core/c;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    .line 31
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:J

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->n:D

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/location/LocationManagerProxy;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    .line 31
    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:J

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->n:D

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    .line 52
    invoke-direct {p0, p1}, Lcom/amap/api/location/LocationManagerProxy;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Lcom/amap/api/location/core/c;

    .line 63
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/amap/api/location/a;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    .line 67
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Lcom/amap/api/location/core/c;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/core/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic b(Lcom/amap/api/location/LocationManagerProxy;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/location/LocationManagerProxy;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/api/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/location/LocationManagerProxy;)D
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->j:D

    return-wide v0
.end method

.method static synthetic f(Lcom/amap/api/location/LocationManagerProxy;)D
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->k:D

    return-wide v0
.end method

.method static synthetic g(Lcom/amap/api/location/LocationManagerProxy;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:J

    return-wide v0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 2
    .parameter

    .prologue
    .line 74
    const-class v1, Lcom/amap/api/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    .line 77
    :cond_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;
    .locals 2
    .parameter

    .prologue
    .line 81
    const-class v1, Lcom/amap/api/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    .line 84
    :cond_0
    sget-object v0, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h(Lcom/amap/api/location/LocationManagerProxy;)D
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->n:D

    return-wide v0
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    const-string v1, "lbs"

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Lcom/amap/api/location/core/c;

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->o:Lcom/amap/api/location/e;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/amap/api/location/e;

    invoke-direct {v1, p0}, Lcom/amap/api/location/e;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->o:Lcom/amap/api/location/e;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->p:Lcom/amap/api/location/LocationManagerProxy$a;

    if-nez v1, :cond_1

    .line 96
    new-instance v1, Lcom/amap/api/location/LocationManagerProxy$a;

    invoke-direct {v1, p0}, Lcom/amap/api/location/LocationManagerProxy$a;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->p:Lcom/amap/api/location/LocationManagerProxy$a;

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->o:Lcom/amap/api/location/e;

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy;->p:Lcom/amap/api/location/LocationManagerProxy$a;

    const-wide/16 v3, 0x2710

    iget-object v6, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/lang/String;

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/location/e;->a(Lcom/amap/api/location/AMapLocationListener;JFLjava/lang/String;)Z

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Z

    .line 101
    iput-wide p1, p0, Lcom/amap/api/location/LocationManagerProxy;->j:D

    .line 102
    iput-wide p3, p0, Lcom/amap/api/location/LocationManagerProxy;->k:D

    .line 103
    float-to-double v1, p5

    iput-wide v1, p0, Lcom/amap/api/location/LocationManagerProxy;->n:D

    .line 104
    const-wide/16 v1, -0x1

    cmp-long v1, p6, v1

    if-eqz v1, :cond_2

    .line 105
    invoke-static {}, Lcom/amap/api/location/core/e;->a()J

    move-result-wide v1

    .line 106
    add-long v1, v1, p6

    iput-wide v1, p0, Lcom/amap/api/location/LocationManagerProxy;->m:J

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_3
    :goto_0
    return-void

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 341
    :cond_0
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderLocation(Ljava/lang/String;)V

    .line 355
    :cond_0
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderStatus(Ljava/lang/String;)V

    .line 362
    :cond_0
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->b()V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 377
    :cond_3
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    .line 378
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    .line 379
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    .line 380
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    .line 381
    sput-object v1, Lcom/amap/api/location/LocationManagerProxy;->b:Lcom/amap/api/location/LocationManagerProxy;

    .line 382
    return-void
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_1

    .line 221
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 264
    const-string v0, "lbs"

    .line 265
    if-nez p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :cond_1
    const-string v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/amap/api/location/LocationManagerProxy;->getProvider(Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;

    move-result-object v1

    .line 269
    invoke-virtual {v1, p1}, Lcom/amap/api/location/LocationProviderProxy;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_2
    if-eqz p2, :cond_0

    .line 274
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/e;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 1
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 2
    .parameter

    .prologue
    .line 138
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Lcom/amap/api/location/core/c;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iput-object p1, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 146
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;
    .locals 2
    .parameter

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/LocationProviderProxy;

    .line 303
    :goto_0
    return-object v0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-static {v0, p1}, Lcom/amap/api/location/LocationProviderProxy;->a(Landroid/location/LocationManager;Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 253
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    :cond_1
    const-string v1, "lbs"

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/location/LocationManagerProxy;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_2
    return-object v0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 235
    const-string v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/amap/api/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 237
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :cond_1
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_2
    return-object v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 284
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/e;->b(Landroid/content/Context;)Z

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 1
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 319
    :cond_0
    return-void
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 118
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Lcom/amap/api/location/core/c;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->o:Lcom/amap/api/location/e;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->o:Lcom/amap/api/location/e;

    invoke-virtual {v0}, Lcom/amap/api/location/e;->a()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->o:Lcom/amap/api/location/e;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/LocationManagerProxy;->l:Z

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/location/LocationManagerProxy;->m:J

    .line 127
    iput-wide v2, p0, Lcom/amap/api/location/LocationManagerProxy;->n:D

    .line 128
    iput-wide v2, p0, Lcom/amap/api/location/LocationManagerProxy;->j:D

    .line 129
    iput-wide v2, p0, Lcom/amap/api/location/LocationManagerProxy;->k:D

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    invoke-virtual {v0}, Lcom/amap/api/location/e;->a()V

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    .line 214
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 215
    return-void
.end method

.method public removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Lcom/amap/api/location/AMapLocationListener;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 187
    :cond_1
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Lcom/amap/api/location/core/c;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/amap/api/location/e;

    invoke-direct {v0, p0}, Lcom/amap/api/location/e;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/LocationManagerProxy$b;

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Lcom/amap/api/location/LocationManagerProxy$b;

    invoke-direct {v0, p0}, Lcom/amap/api/location/LocationManagerProxy$b;-><init>(Lcom/amap/api/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/LocationManagerProxy$b;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->e:Lcom/amap/api/location/e;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->f:Lcom/amap/api/location/LocationManagerProxy$b;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/amap/api/location/e;->a(Lcom/amap/api/location/AMapLocationListener;JF)Z

    .line 201
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Lcom/amap/api/location/core/c;

    iget-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    const-string p1, "network"

    move-object v1, p1

    .line 163
    :goto_0
    iput-object v1, p0, Lcom/amap/api/location/LocationManagerProxy;->i:Ljava/lang/String;

    .line 164
    const-string v0, "lbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->r:Lcom/amap/api/location/core/c;

    iget-object v2, p0, Lcom/amap/api/location/LocationManagerProxy;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    const-string v5, "lbs"

    move-wide v1, p2

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;)V

    .line 176
    :goto_1
    return-void

    .line 168
    :cond_0
    const-string v0, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    const-string v5, "gps"

    move-wide v1, p2

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/a;->a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method public setGpsEnable(Z)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amap/api/location/LocationManagerProxy;->c:Lcom/amap/api/location/a;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/a;->a(Z)V

    .line 154
    return-void
.end method
