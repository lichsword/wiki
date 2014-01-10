.class public Lcom/amap/api/location/c;
.super Ljava/lang/Object;
.source "IGPSManager.java"


# static fields
.field private static b:Lcom/amap/api/location/c;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private c:Lcom/amap/api/location/a$a;

.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/location/core/c;

.field private f:Ljava/lang/String;

.field private g:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Landroid/location/LocationManager;

    .line 57
    new-instance v0, Lcom/amap/api/location/d;

    invoke-direct {v0, p0}, Lcom/amap/api/location/d;-><init>(Lcom/amap/api/location/c;)V

    iput-object v0, p0, Lcom/amap/api/location/c;->g:Landroid/location/LocationListener;

    .line 22
    iput-object p2, p0, Lcom/amap/api/location/c;->a:Landroid/location/LocationManager;

    .line 23
    iput-object p3, p0, Lcom/amap/api/location/c;->c:Lcom/amap/api/location/a$a;

    .line 24
    iput-object p1, p0, Lcom/amap/api/location/c;->d:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/c;->e:Lcom/amap/api/location/core/c;

    .line 26
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Lcom/amap/api/location/core/c;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/core/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/c;->f:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;)Lcom/amap/api/location/c;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/c;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/amap/api/location/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/location/c;-><init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;)V

    sput-object v0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/c;

    .line 36
    :cond_0
    sget-object v0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/c;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/location/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/amap/api/location/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/c;)Lcom/amap/api/location/core/c;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Lcom/amap/api/location/core/c;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/location/c;)Lcom/amap/api/location/a$a;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/amap/api/location/c;->c:Lcom/amap/api/location/a$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 55
    return-void
.end method

.method public a(JFLandroid/location/LocationListener;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/amap/api/location/c;->g:Landroid/location/LocationListener;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
