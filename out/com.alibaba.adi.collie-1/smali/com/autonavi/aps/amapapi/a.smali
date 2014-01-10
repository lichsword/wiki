.class public final Lcom/autonavi/aps/amapapi/a;
.super Ljava/lang/Object;
.source "APS.java"

# interfaces
.implements Lcom/autonavi/aps/amapapi/IAPS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/aps/amapapi/a$a;
    }
.end annotation


# static fields
.field private static d:Lcom/autonavi/aps/amapapi/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/autonavi/aps/amapapi/AmapLoc;

.field private C:J

.field private D:J

.field private E:J

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:J

.field private K:J

.field private L:J

.field private M:J

.field private N:J

.field private O:Z

.field private P:Lcom/autonavi/aps/amapapi/i;

.field private Q:I

.field private R:I

.field private S:Ljava/lang/String;

.field private T:Landroid/location/GpsStatus;

.field private U:Lcom/autonavi/aps/amapapi/g;

.field private V:[[D

.field private W:[[D

.field private X:[[D

.field private Y:[[D

.field public a:[[D

.field public b:[[D

.field public c:[[D

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Landroid/net/ConnectivityManager;

.field private h:Landroid/net/wifi/WifiManager;

.field private i:Landroid/telephony/TelephonyManager;

.field private j:Landroid/location/LocationManager;

.field private k:Landroid/location/LocationListener;

.field private l:Landroid/location/LocationListener;

.field private m:Landroid/location/GpsStatus$Listener;

.field private n:F

.field private o:I

.field private p:Landroid/location/Location;

.field private q:Landroid/location/Location;

.field private r:J

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/aps/amapapi/f;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/aps/amapapi/c;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/autonavi/aps/amapapi/e;

.field private w:Landroid/telephony/PhoneStateListener;

.field private x:I

.field private y:Lcom/autonavi/aps/amapapi/a$a;

.field private z:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/amapapi/a;->d:Lcom/autonavi/aps/amapapi/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    .line 41
    const/16 v0, 0x9

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    .line 42
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->g:Landroid/net/ConnectivityManager;

    .line 43
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    .line 44
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    .line 45
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    .line 46
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->k:Landroid/location/LocationListener;

    .line 47
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->l:Landroid/location/LocationListener;

    .line 48
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->m:Landroid/location/GpsStatus$Listener;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->n:F

    .line 50
    iput v4, p0, Lcom/autonavi/aps/amapapi/a;->o:I

    .line 51
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    .line 52
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    .line 53
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->r:J

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/autonavi/aps/amapapi/e;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/e;-><init>()V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->v:Lcom/autonavi/aps/amapapi/e;

    .line 58
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->w:Landroid/telephony/PhoneStateListener;

    .line 59
    const/16 v0, -0x71

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->x:I

    .line 60
    new-instance v0, Lcom/autonavi/aps/amapapi/a$a;

    invoke-direct {v0, p0, v4}, Lcom/autonavi/aps/amapapi/a$a;-><init>(Lcom/autonavi/aps/amapapi/a;B)V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->y:Lcom/autonavi/aps/amapapi/a$a;

    .line 61
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    .line 62
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->A:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    .line 64
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    .line 65
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->D:J

    .line 66
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->E:J

    .line 67
    iput-boolean v4, p0, Lcom/autonavi/aps/amapapi/a;->F:Z

    .line 68
    iput-boolean v4, p0, Lcom/autonavi/aps/amapapi/a;->G:Z

    .line 69
    iput-boolean v4, p0, Lcom/autonavi/aps/amapapi/a;->H:Z

    .line 70
    iput-boolean v5, p0, Lcom/autonavi/aps/amapapi/a;->I:Z

    .line 71
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->J:J

    .line 72
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->K:J

    .line 73
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->L:J

    .line 74
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->M:J

    .line 75
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->N:J

    .line 76
    iput-boolean v5, p0, Lcom/autonavi/aps/amapapi/a;->O:Z

    .line 77
    invoke-static {}, Lcom/autonavi/aps/amapapi/i;->a()Lcom/autonavi/aps/amapapi/i;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->P:Lcom/autonavi/aps/amapapi/i;

    .line 78
    iput v4, p0, Lcom/autonavi/aps/amapapi/a;->Q:I

    .line 79
    iput v4, p0, Lcom/autonavi/aps/amapapi/a;->R:I

    .line 80
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->S:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->T:Landroid/location/GpsStatus;

    .line 82
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->U:Lcom/autonavi/aps/amapapi/g;

    .line 83
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    .line 84
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    .line 85
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    .line 86
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    .line 87
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->a:[[D

    .line 88
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    .line 89
    iput-object v1, p0, Lcom/autonavi/aps/amapapi/a;->c:[[D

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/autonavi/aps/amapapi/a;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/location/Location;)Lcom/autonavi/aps/amapapi/AmapLoc;
    .locals 3
    .parameter

    .prologue
    .line 1362
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/autonavi/aps/amapapi/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/AmapLoc;-><init>()V

    .line 1363
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setProvider(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    .line 1365
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "#.000000"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/aps/amapapi/AmapLoc;->setLon(D)V

    .line 1366
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 1367
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "#.000000"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/aps/amapapi/AmapLoc;->setLat(D)V

    .line 1368
    const v1, 0x45733000

    .line 1369
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1370
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    .line 1372
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "#.0"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setAccuracy(F)V

    .line 1373
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "#.0"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setSpeed(F)V

    .line 1374
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "#.0"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setBearing(F)V

    .line 1375
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/aps/amapapi/AmapLoc;->setTime(J)V

    .line 1376
    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/AmapLoc;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1380
    const/4 v0, 0x0

    .line 1382
    :cond_1
    monitor-exit p0

    return-object v0

    .line 1362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/AmapLoc;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1393
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return-object v0

    .line 1396
    :cond_1
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/autonavi/aps/amapapi/a;->D:J

    .line 1397
    new-instance v1, Lcom/autonavi/aps/amapapi/AmapLoc;

    invoke-direct {v1}, Lcom/autonavi/aps/amapapi/AmapLoc;-><init>()V

    .line 1398
    new-instance v1, Lcom/autonavi/aps/amapapi/j;

    invoke-direct {v1}, Lcom/autonavi/aps/amapapi/j;-><init>()V

    .line 1399
    iget-object v2, p0, Lcom/autonavi/aps/amapapi/a;->P:Lcom/autonavi/aps/amapapi/i;

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/autonavi/aps/amapapi/a;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1, v3, v4}, Lcom/autonavi/aps/amapapi/i;->a(Ljava/lang/String;Landroid/content/Context;Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v2

    .line 1401
    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1402
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/a;->v:Lcom/autonavi/aps/amapapi/e;

    const-string v4, "GBK"

    invoke-virtual {v3, v2, v4}, Lcom/autonavi/aps/amapapi/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1406
    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/j;->b(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v1

    .line 1407
    invoke-direct {p0, v1}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/AmapLoc;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/autonavi/aps/amapapi/IAPS;
    .locals 2

    .prologue
    .line 104
    const-class v1, Lcom/autonavi/aps/amapapi/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/aps/amapapi/a;->d:Lcom/autonavi/aps/amapapi/a;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/autonavi/aps/amapapi/a;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/a;-><init>()V

    sput-object v0, Lcom/autonavi/aps/amapapi/a;->d:Lcom/autonavi/aps/amapapi/a;

    .line 107
    :cond_0
    sget-object v0, Lcom/autonavi/aps/amapapi/a;->d:Lcom/autonavi/aps/amapapi/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lcom/autonavi/aps/amapapi/f;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1769
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getSdk()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1788
    :goto_0
    return-object v0

    .line 1776
    :cond_0
    :try_start_0
    new-instance v1, Lcom/autonavi/aps/amapapi/f;

    invoke-direct {v1}, Lcom/autonavi/aps/amapapi/f;-><init>()V

    .line 1777
    iget-object v2, p0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/autonavi/aps/amapapi/Utils;->getMccMnc(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    .line 1778
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/autonavi/aps/amapapi/f;->a(Ljava/lang/String;)V

    .line 1779
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/f;->b(Ljava/lang/String;)V

    .line 1780
    const-string v2, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/autonavi/aps/amapapi/Reflect;->invokeIntMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/f;->a(I)V

    .line 1781
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/f;->b(I)V

    .line 1782
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    .line 1783
    invoke-static {v2}, Lcom/autonavi/aps/amapapi/Utils;->asu2Dbm(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/f;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1784
    goto :goto_0

    .line 1788
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/autonavi/aps/amapapi/a;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v0, -0x71

    .line 1526
    if-ne p1, v0, :cond_1

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->x:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/autonavi/aps/amapapi/a;->x:I

    iget v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/f;

    iget v1, p0, Lcom/autonavi/aps/amapapi/a;->x:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/f;->c(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/c;

    iget v1, p0, Lcom/autonavi/aps/amapapi/a;->x:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/c;->f(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/autonavi/aps/amapapi/a;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/a;->J:J

    return-void
.end method

.method static synthetic a(Lcom/autonavi/aps/amapapi/a;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/aps/amapapi/a;Landroid/telephony/CellLocation;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x9

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 656
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/autonavi/aps/amapapi/Utils;->getCellType(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ne v1, v5, :cond_1

    iput v2, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "gsm illegal"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-ne v0, v5, :cond_2

    iput v2, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "gsm illegal"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v1, Lcom/autonavi/aps/amapapi/f;

    invoke-direct {v1}, Lcom/autonavi/aps/amapapi/f;-><init>()V

    iget-object v2, p0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/autonavi/aps/amapapi/Utils;->getMccMnc(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/autonavi/aps/amapapi/f;->a(Ljava/lang/String;)V

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/f;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/f;->a(I)V

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/f;->b(I)V

    iget v2, p0, Lcom/autonavi/aps/amapapi/a;->x:I

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/f;->c(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    if-eq v2, v5, :cond_3

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/a;->a(Landroid/telephony/NeighboringCellInfo;)Lcom/autonavi/aps/amapapi/f;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getSdk()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    :try_start_0
    const-string v0, "getSystemId"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/autonavi/aps/amapapi/Reflect;->invokeIntMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_4

    const/16 v0, 0x9

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "getNetworkId"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/autonavi/aps/amapapi/Reflect;->invokeIntMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v5, :cond_5

    const/16 v0, 0x9

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "getBaseStationId"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/autonavi/aps/amapapi/Reflect;->invokeIntMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v5, :cond_6

    const/16 v0, 0x9

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cdma illegal"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->getMccMnc(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/autonavi/aps/amapapi/c;

    invoke-direct {v1}, Lcom/autonavi/aps/amapapi/c;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/c;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/c;->b(Ljava/lang/String;)V

    const-string v0, "getSystemId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/autonavi/aps/amapapi/Reflect;->invokeIntMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/c;->c(I)V

    const-string v0, "getNetworkId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/autonavi/aps/amapapi/Reflect;->invokeIntMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/c;->d(I)V

    const-string v0, "getBaseStationId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/autonavi/aps/amapapi/Reflect;->invokeIntMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/c;->e(I)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/a;->x:I

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/c;->f(I)V

    const-string v0, "getBaseStationLatitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/autonavi/aps/amapapi/Reflect;->invokeIntMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/c;->a(I)V

    const-string v0, "getBaseStationLongitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/autonavi/aps/amapapi/Reflect;->invokeIntMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/c;->b(I)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/autonavi/aps/amapapi/a;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/aps/amapapi/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/autonavi/aps/amapapi/a;->H:Z

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 1450
    if-nez p0, :cond_1

    .line 1484
    :cond_0
    return-void

    .line 1453
    :cond_1
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    .line 1454
    const-string v2, " phnum=\"\""

    aput-object v2, v1, v0

    .line 1455
    const/4 v2, 0x1

    const-string v3, " nettype=\"\""

    aput-object v3, v1, v2

    .line 1456
    const/4 v2, 0x2

    const-string v3, " nettype=\"UNKNOWN\""

    aput-object v3, v1, v2

    .line 1457
    const/4 v2, 0x3

    const-string v3, " inftype=\"\""

    aput-object v3, v1, v2

    .line 1458
    const/4 v2, 0x4

    const-string v3, "<macs><![CDATA[]]></macs>"

    aput-object v3, v1, v2

    .line 1459
    const/4 v2, 0x5

    const-string v3, "<nb></nb>"

    aput-object v3, v1, v2

    .line 1460
    const/4 v2, 0x6

    const-string v3, "<mmac><![CDATA[]]></mmac>"

    aput-object v3, v1, v2

    .line 1461
    const/4 v2, 0x7

    const-string v3, " gtype=\"0\""

    aput-object v3, v1, v2

    .line 1462
    const/16 v2, 0x8

    const-string v3, " glong=\"0.0\""

    aput-object v3, v1, v2

    .line 1463
    const/16 v2, 0x9

    const-string v3, " glat=\"0.0\""

    aput-object v3, v1, v2

    .line 1464
    const/16 v2, 0xa

    const-string v3, " precision=\"0.0\""

    aput-object v3, v1, v2

    .line 1465
    const/16 v2, 0xb

    const-string v3, " glong=\"0\""

    aput-object v3, v1, v2

    .line 1466
    const/16 v2, 0xc

    const-string v3, " glat=\"0\""

    aput-object v3, v1, v2

    .line 1467
    const/16 v2, 0xd

    const-string v3, " precision=\"0\""

    aput-object v3, v1, v2

    .line 1468
    const/16 v2, 0xe

    const-string v3, "<smac>null</smac>"

    aput-object v3, v1, v2

    .line 1469
    const/16 v2, 0xf

    const-string v3, "<smac>00:00:00:00:00:00</smac>"

    aput-object v3, v1, v2

    .line 1470
    const/16 v2, 0x10

    const-string v3, "<imei>000000000000000</imei>"

    aput-object v3, v1, v2

    .line 1471
    const/16 v2, 0x11

    const-string v3, "<imsi>000000000000000</imsi>"

    aput-object v3, v1, v2

    .line 1472
    const/16 v2, 0x12

    const-string v3, "<mcc>000</mcc>"

    aput-object v3, v1, v2

    .line 1473
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_2

    .line 1480
    :goto_1
    const-string v0, "*<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 1481
    const-string v0, "*<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1482
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1473
    :cond_2
    aget-object v3, v1, v0

    .line 1474
    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 1473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1475
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1476
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 6
    .parameter

    .prologue
    .line 1109
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :cond_2
    new-instance v1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    goto :goto_0

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Lcom/autonavi/aps/amapapi/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v4, "*"

    const-string v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_3
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1d

    if-gt v1, v0, :cond_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    const-string v3, "null"

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static a(I)Z
    .locals 2
    .parameter

    .prologue
    const/16 v0, 0x14

    .line 1152
    const/16 v1, 0x14

    :try_start_0
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1162
    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1155
    :catch_0
    move-exception v1

    .line 1160
    invoke-static {v1}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1162
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(J)Z
    .locals 5
    .parameter

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 691
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v1

    sub-long/2addr v1, p0

    .line 692
    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 696
    const/4 v0, 0x1

    .line 698
    :cond_0
    return v0
.end method

.method private static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 827
    const/4 v1, 0x1

    .line 828
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 837
    :cond_0
    :goto_0
    return v0

    .line 830
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 832
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 834
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/autonavi/aps/amapapi/AmapLoc;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1419
    const/4 v1, 0x1

    .line 1420
    if-nez p1, :cond_1

    .line 1440
    :cond_0
    :goto_0
    return v0

    .line 1422
    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getRetype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1424
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getRetype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1426
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getLon()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 1428
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getLon()D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 1430
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1431
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/AmapLoc;->getAccuracy()F

    move-result v2

    const/high16 v3, 0x43fa

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1432
    iget-object v2, p0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 744
    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/a;->H:Z

    if-eqz v0, :cond_0

    .line 748
    const/16 v0, 0x9

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    .line 749
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 750
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 752
    :cond_0
    const-string v2, ""

    .line 753
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->coordInCN(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    const-string v0, "gps"

    move-object v1, v0

    .line 759
    :goto_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    .line 764
    :goto_1
    iget v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, v2

    .line 817
    :goto_2
    return-object v0

    .line 757
    :cond_2
    const-string v0, "network"

    move-object v1, v0

    goto :goto_0

    .line 762
    :cond_3
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->h()V

    goto :goto_1

    .line 767
    :sswitch_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/f;

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/f;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/f;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 776
    :cond_4
    const-string v0, "cellwifi"

    .line 780
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 778
    :cond_5
    const-string v0, "cell"

    goto :goto_3

    .line 787
    :sswitch_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/c;

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/c;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/c;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/c;->g()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 797
    :cond_6
    const-string v0, "cellwifi"

    .line 801
    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 799
    :cond_7
    const-string v0, "cell"

    goto :goto_4

    .line 808
    :sswitch_2
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    :cond_8
    const-string v0, "#network#wifi"

    goto/16 :goto_2

    .line 764
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic b(Lcom/autonavi/aps/amapapi/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/autonavi/aps/amapapi/a;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1685
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->L:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/a;->L:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->L:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->n:F

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->T:Landroid/location/GpsStatus;

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->T:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->T:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput v1, p0, Lcom/autonavi/aps/amapapi/a;->o:I

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/aps/amapapi/a;->o:I

    if-gt v0, v2, :cond_0

    iget v1, p0, Lcom/autonavi/aps/amapapi/a;->n:F

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->n:F

    iget v0, p0, Lcom/autonavi/aps/amapapi/a;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->o:I

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->i()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/autonavi/aps/amapapi/a;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/a;->r:J

    return-void
.end method

.method static synthetic b(Lcom/autonavi/aps/amapapi/a;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    return-void
.end method

.method static synthetic b(Lcom/autonavi/aps/amapapi/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/autonavi/aps/amapapi/a;->I:Z

    return-void
.end method

.method private c()Ljava/lang/StringBuilder;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 847
    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/a;->H:Z

    if-eqz v0, :cond_0

    .line 848
    const/16 v0, 0x9

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    .line 849
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 850
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 852
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 853
    iget v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    packed-switch v0, :pswitch_data_0

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->S:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->S:Ljava/lang/String;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 869
    :cond_2
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_3

    .line 870
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->S:Ljava/lang/String;

    .line 871
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->S:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 872
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->S:Ljava/lang/String;

    .line 876
    :cond_3
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 877
    const-string v0, ""

    .line 878
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 879
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v3, v2

    move v4, v2

    .line 882
    :goto_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_7

    .line 891
    if-nez v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 892
    const-string v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const-string v0, ",access"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :cond_4
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 899
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 901
    :cond_5
    return-object v6

    :pswitch_0
    move v1, v2

    .line 855
    :goto_3
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 856
    if-eqz v1, :cond_6

    .line 857
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/f;

    .line 860
    const-string v3, "#"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const-string v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/f;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 862
    const-string v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/f;->d()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 855
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 883
    :cond_7
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 884
    const-string v0, "nb"

    .line 885
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 886
    const-string v0, "access"

    move v4, v5

    .line 889
    :cond_8
    const-string v8, "#%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v0, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 896
    :cond_9
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->h()V

    goto :goto_2

    :cond_a
    move-object v1, v0

    goto/16 :goto_0

    .line 853
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/autonavi/aps/amapapi/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1887
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->h()V

    return-void
.end method

.method private declared-synchronized d()Ljava/lang/StringBuilder;
    .locals 20

    .prologue
    .line 911
    monitor-enter p0

    :try_start_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    const-string v5, "0"

    .line 913
    const-string v4, "0"

    .line 914
    const-string v3, "0"

    .line 915
    const-string v2, "0"

    .line 916
    const-string v1, "0"

    .line 917
    const-string v6, "888888888888888"

    sput-object v6, Lcom/autonavi/aps/amapapi/Const;->a:Ljava/lang/String;

    .line 918
    const-string v6, "888888888888888"

    sput-object v6, Lcom/autonavi/aps/amapapi/Const;->b:Ljava/lang/String;

    .line 919
    const-string v6, ""

    sput-object v6, Lcom/autonavi/aps/amapapi/Const;->c:Ljava/lang/String;

    .line 920
    const-string v10, ""

    .line 921
    const-string v9, ""

    .line 922
    const-string v8, ""

    .line 923
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 925
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 926
    move-object/from16 v0, p0

    iget v6, v0, Lcom/autonavi/aps/amapapi/a;->f:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1f

    .line 927
    const-string v5, "1"

    move-object v15, v5

    .line 929
    :goto_0
    const/4 v5, 0x0

    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/autonavi/aps/amapapi/a;->r:J

    sub-long/2addr v6, v11

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/autonavi/aps/amapapi/a;->r:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    if-nez v11, :cond_c

    const/4 v5, 0x1

    :cond_0
    :goto_1
    if-nez v5, :cond_e

    .line 930
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const-wide/16 v11, 0x0

    cmpl-double v5, v5, v11

    if-lez v5, :cond_1e

    .line 934
    const-string v4, "1"

    .line 935
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "#.000000"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "#.000000"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v5, "#.0"

    invoke-static {v1, v5}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    .line 951
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    if-nez v1, :cond_f

    new-instance v1, Landroid/location/Location;

    const-string v2, "network"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/autonavi/aps/amapapi/a;->O:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/autonavi/aps/amapapi/a;->I:Z

    if-nez v1, :cond_10

    .line 952
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_9

    .line 953
    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->a:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autonavi/aps/amapapi/Const;->a:Ljava/lang/String;

    .line 958
    :cond_2
    :goto_5
    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 959
    const-string v1, "888888888888888"

    sput-object v1, Lcom/autonavi/aps/amapapi/Const;->a:Ljava/lang/String;

    .line 961
    :cond_3
    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->b:Ljava/lang/String;

    const-string v2, "888888888888888"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 962
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autonavi/aps/amapapi/Const;->b:Ljava/lang/String;

    .line 964
    :cond_5
    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->b:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 965
    const-string v1, "888888888888888"

    sput-object v1, Lcom/autonavi/aps/amapapi/Const;->b:Ljava/lang/String;

    .line 967
    :cond_6
    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->c:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 968
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autonavi/aps/amapapi/Const;->c:Ljava/lang/String;

    .line 970
    :cond_8
    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->c:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 971
    const-string v1, ""

    sput-object v1, Lcom/autonavi/aps/amapapi/Const;->c:Ljava/lang/String;

    .line 974
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 975
    invoke-static {v1}, Lcom/autonavi/aps/amapapi/i;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 976
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/i;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v2

    .line 977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 978
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 979
    const-string v1, "2"

    .line 989
    :goto_6
    const-string v3, "<?xml version=\"1.0\" encoding=\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v3, "GBK\"?>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    const-string v3, "<Cell_Req ver=\"2.0\"><HDR version=\"2.0\" cdma=\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    const-string v3, "\" gtype=\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const-string v3, "\" glong=\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const-string v3, "\" glat=\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    const-string v3, "\" precision=\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v3, "\"><src>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/autonavi/aps/amapapi/Const;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v3, "</src><license>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/autonavi/aps/amapapi/Const;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    const-string v3, "</license><clientid>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/autonavi/aps/amapapi/Const;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const-string v3, "</clientid><imei>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/autonavi/aps/amapapi/Const;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v3, "</imei><imsi>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/autonavi/aps/amapapi/Const;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v3, "</imsi><smac>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/autonavi/aps/amapapi/a;->S:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v3, "</smac></HDR><DRR phnum=\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/autonavi/aps/amapapi/Const;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    const-string v3, "\" nettype=\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v2, "\" inftype=\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 1012
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    move-object/from16 v0, p0

    iget v1, v0, Lcom/autonavi/aps/amapapi/a;->f:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v8

    .line 1055
    :goto_7
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v3, v1

    .line 1061
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1068
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    const-string v4, "."

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    :cond_b
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_1a

    .line 1081
    :goto_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v1, "<nb>%s</nb>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1c

    .line 1085
    const-string v1, "<macs><![CDATA[%s]]></macs>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v19, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    :goto_b
    const-string v1, "<mmac><![CDATA[%s]]></mmac>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v19, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    const-string v1, "</DRR></Cell_Req>"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-static/range {v16 .. v16}, Lcom/autonavi/aps/amapapi/a;->a(Ljava/lang/StringBuilder;)V

    .line 1093
    const/4 v1, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1094
    const/4 v1, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1096
    const/4 v1, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    monitor-exit p0

    return-object v16

    .line 929
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    const-string v12, "gps"

    invoke-virtual {v11, v12}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_d
    const-wide/16 v11, 0x4e20

    cmp-long v6, v6, v11

    if-lez v6, :cond_0

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 943
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/autonavi/aps/amapapi/a;->i()V

    .line 944
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const-wide/16 v11, 0x0

    cmpl-double v5, v5, v11

    if-lez v5, :cond_1e

    .line 945
    const-string v4, "2"

    .line 946
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "#.000000"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "#.000000"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v5, "#.0"

    invoke-static {v1, v5}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    goto/16 :goto_2

    .line 951
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 911
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 951
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    if-nez v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    const-string v2, "location"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/Utils;->getServ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/Utils;->hasNetworkProvider(Landroid/location/LocationManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->l:Landroid/location/LocationListener;

    if-nez v1, :cond_12

    new-instance v1, Lcom/autonavi/aps/amapapi/a$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/autonavi/aps/amapapi/a$4;-><init>(Lcom/autonavi/aps/amapapi/a;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->l:Landroid/location/LocationListener;

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    const-string v2, "network"

    const-wide/16 v3, 0xbb8

    const/high16 v5, 0x4120

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/autonavi/aps/amapapi/a;->l:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const-wide/16 v1, 0x9c4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/aps/amapapi/a;->l:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto/16 :goto_4

    .line 955
    :cond_13
    sget-object v1, Lcom/autonavi/aps/amapapi/Const;->a:Ljava/lang/String;

    const-string v2, "888888888888888"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 956
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autonavi/aps/amapapi/Const;->a:Ljava/lang/String;

    goto/16 :goto_5

    .line 981
    :cond_14
    const-string v1, "1"

    goto/16 :goto_6

    .line 984
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/autonavi/aps/amapapi/a;->h()V

    move-object v1, v9

    .line 986
    goto/16 :goto_6

    .line 987
    :cond_16
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    move-object v1, v9

    move-object v2, v10

    goto/16 :goto_6

    .line 1015
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/aps/amapapi/f;

    .line 1019
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1020
    const-string v2, "<mcc>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</mcc>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    const-string v2, "<mnc>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</mnc>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    const-string v2, "<lac>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/f;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</lac>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    const-string v2, "<cellid>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/f;->d()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1024
    const-string v2, "</cellid>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    const-string v2, "<signal>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/f;->e()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1026
    const-string v1, "</signal>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1028
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_17

    move-object v1, v8

    .line 1037
    goto/16 :goto_7

    .line 1029
    :cond_17
    if-eqz v2, :cond_18

    .line 1030
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/aps/amapapi/f;

    .line 1033
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/f;->c()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/f;->d()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/f;->e()I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_18
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    .line 1040
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/aps/amapapi/c;

    .line 1044
    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1045
    const-string v2, "<mcc>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</mcc>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    const-string v2, "<sid>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/c;->e()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</sid>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    const-string v2, "<nid>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/c;->f()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</nid>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    const-string v2, "<bid>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/c;->g()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</bid>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/c;->d()I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/c;->c()I

    move-result v2

    if-lez v2, :cond_19

    .line 1050
    const-string v2, "<lon>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/c;->d()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</lon>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    const-string v2, "<lat>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/c;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</lat>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    :cond_19
    const-string v2, "<signal>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/c;->h()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</signal>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 1073
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1074
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    iget v4, v1, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_9

    .line 1079
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/autonavi/aps/amapapi/a;->h()V

    goto/16 :goto_a

    .line 1087
    :cond_1c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1088
    const-string v1, "<macs><![CDATA[%s]]></macs>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v18, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_b

    :cond_1d
    move-object v3, v8

    goto/16 :goto_8

    :cond_1e
    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    goto/16 :goto_2

    :cond_1f
    move-object v15, v5

    goto/16 :goto_0

    .line 1013
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/autonavi/aps/amapapi/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1913
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->j()V

    return-void
.end method

.method private declared-synchronized e()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1172
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/autonavi/aps/amapapi/a;->H:Z

    if-eqz v2, :cond_3

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    .line 1173
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 1174
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->K:J

    .line 1179
    :cond_0
    iget-object v2, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 1180
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->j()V

    .line 1182
    :cond_2
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->d()Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1203
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->v:Lcom/autonavi/aps/amapapi/e;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/e;->a(Ljava/lang/StringBuilder;)V

    .line 1224
    const/4 v0, 0x0

    const-string v2, "</src><sreq>"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const/4 v0, 0x0

    sget-object v2, Lcom/autonavi/aps/amapapi/Const;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    const/4 v0, 0x0

    const-string v2, "\"?><saps><src>"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const/4 v0, 0x0

    const-string v2, "GBK"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    const/4 v0, 0x0

    const-string v2, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    const-string v0, "</sreq></saps>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1234
    :goto_2
    monitor-exit p0

    return-object v0

    .line 1172
    :cond_3
    :try_start_2
    iget-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->K:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/a;->K:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    move v2, v0

    goto :goto_0

    .line 1179
    :cond_5
    iget-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->M:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/a;->M:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_1

    .line 1231
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    .line 1233
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1234
    const/4 v0, 0x0

    goto :goto_2

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move v2, v1

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/autonavi/aps/amapapi/a;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/a;->G:Z

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1629
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->i()V

    .line 1631
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->k:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->k:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    :cond_0
    iput-object v2, p0, Lcom/autonavi/aps/amapapi/a;->k:Landroid/location/LocationListener;

    .line 1639
    :goto_0
    return-void

    .line 1635
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1637
    iput-object v2, p0, Lcom/autonavi/aps/amapapi/a;->k:Landroid/location/LocationListener;

    goto :goto_0

    .line 1636
    :catchall_0
    move-exception v0

    .line 1637
    iput-object v2, p0, Lcom/autonavi/aps/amapapi/a;->k:Landroid/location/LocationListener;

    .line 1638
    throw v0
.end method

.method static synthetic f(Lcom/autonavi/aps/amapapi/a;)Z
    .locals 4
    .parameter

    .prologue
    .line 2069
    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/a;->J:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->J:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/autonavi/aps/amapapi/a;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/autonavi/aps/amapapi/a;->f:I

    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1667
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->n:F

    .line 1669
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->m:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->m:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1675
    :cond_0
    iput-object v2, p0, Lcom/autonavi/aps/amapapi/a;->m:Landroid/location/GpsStatus$Listener;

    .line 1677
    :goto_0
    return-void

    .line 1673
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1675
    iput-object v2, p0, Lcom/autonavi/aps/amapapi/a;->m:Landroid/location/GpsStatus$Listener;

    goto :goto_0

    .line 1674
    :catchall_0
    move-exception v0

    .line 1675
    iput-object v2, p0, Lcom/autonavi/aps/amapapi/a;->m:Landroid/location/GpsStatus$Listener;

    .line 1676
    throw v0
.end method

.method static synthetic h(Lcom/autonavi/aps/amapapi/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->z:Landroid/net/wifi/WifiInfo;

    .line 1890
    return-void
.end method

.method static synthetic i(Lcom/autonavi/aps/amapapi/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->reset()V

    .line 1902
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->n:F

    .line 1903
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->o:I

    .line 1904
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/a;->r:J

    .line 1905
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1916
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/a;->M:J

    .line 1921
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/autonavi/aps/amapapi/a;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const/16 v0, -0x71

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->x:I

    return-void
.end method

.method static synthetic k(Lcom/autonavi/aps/amapapi/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1898
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->i()V

    return-void
.end method

.method static synthetic l(Lcom/autonavi/aps/amapapi/a;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/autonavi/aps/amapapi/d;->a()Lcom/autonavi/aps/amapapi/d;

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/d;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/autonavi/aps/amapapi/a;->setUpload(Z)V

    .line 451
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->y:Lcom/autonavi/aps/amapapi/a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 459
    :cond_1
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->y:Lcom/autonavi/aps/amapapi/a$a;

    .line 461
    :goto_1
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->f()V

    .line 462
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    :try_start_2
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->l:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->l:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->l:Landroid/location/LocationListener;

    .line 463
    :goto_2
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->g()V

    .line 465
    :try_start_3
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->w:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->w:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 471
    :cond_3
    :goto_3
    invoke-static {}, Lcom/autonavi/aps/amapapi/b;->a()Lcom/autonavi/aps/amapapi/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/b;->b()V

    .line 472
    iput-boolean v4, p0, Lcom/autonavi/aps/amapapi/a;->F:Z

    .line 473
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    .line 474
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 475
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 476
    const/16 v0, -0x71

    iput v0, p0, Lcom/autonavi/aps/amapapi/a;->x:I

    .line 477
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->h()V

    .line 478
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->A:Ljava/lang/String;

    .line 479
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    .line 480
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->i()V

    .line 481
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->T:Landroid/location/GpsStatus;

    .line 482
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    .line 483
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    .line 484
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    .line 485
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->k:Landroid/location/LocationListener;

    .line 486
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->m:Landroid/location/GpsStatus$Listener;

    .line 487
    sput-object v3, Lcom/autonavi/aps/amapapi/a;->d:Lcom/autonavi/aps/amapapi/a;

    .line 488
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 489
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 490
    return-void

    .line 446
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 459
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->y:Lcom/autonavi/aps/amapapi/a$a;

    goto :goto_1

    .line 458
    :catchall_0
    move-exception v0

    .line 459
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->y:Lcom/autonavi/aps/amapapi/a$a;

    .line 460
    throw v0

    .line 462
    :catch_2
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->l:Landroid/location/LocationListener;

    goto :goto_2

    :catchall_1
    move-exception v0

    iput-object v3, p0, Lcom/autonavi/aps/amapapi/a;->l:Landroid/location/LocationListener;

    throw v0

    .line 469
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final declared-synchronized getLocation()Lcom/autonavi/aps/amapapi/AmapLoc;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x41a0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 348
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 241
    :cond_1
    :try_start_1
    sget-object v3, Lcom/autonavi/aps/amapapi/Const;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/autonavi/aps/amapapi/Const;->e:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    iget v3, p0, Lcom/autonavi/aps/amapapi/a;->Q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/autonavi/aps/amapapi/a;->Q:I

    .line 248
    iget v3, p0, Lcom/autonavi/aps/amapapi/a;->Q:I

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 254
    :cond_2
    iget-wide v3, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    invoke-static {v3, v4}, Lcom/autonavi/aps/amapapi/a;->a(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    if-eqz v3, :cond_3

    .line 256
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    .line 260
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    goto :goto_0

    .line 263
    :cond_3
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 267
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->c()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    invoke-static {}, Lcom/autonavi/aps/amapapi/b;->a()Lcom/autonavi/aps/amapapi/b;

    move-result-object v0

    const-string v5, "mem"

    invoke-virtual {v0, v3, v4, v5}, Lcom/autonavi/aps/amapapi/b;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v5

    .line 277
    if-nez v5, :cond_c

    .line 278
    const-string v0, "#gps"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_6

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/a;->O:Z

    .line 283
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 284
    sget-boolean v1, Lcom/autonavi/aps/amapapi/Const;->h:Z

    if-eqz v1, :cond_5

    .line 285
    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/a;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    .line 344
    :cond_4
    :goto_1
    invoke-static {}, Lcom/autonavi/aps/amapapi/b;->a()Lcom/autonavi/aps/amapapi/b;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v2, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/autonavi/aps/amapapi/b;->a(Ljava/lang/String;Lcom/autonavi/aps/amapapi/AmapLoc;Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 345
    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    .line 348
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    goto/16 :goto_0

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/a;->a(Landroid/location/Location;)Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 290
    :cond_6
    :try_start_2
    iget v0, p0, Lcom/autonavi/aps/amapapi/a;->Q:I

    const/16 v5, 0xa

    if-le v0, v5, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/a;->O:Z

    .line 291
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v5, p0, Lcom/autonavi/aps/amapapi/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 293
    iget-object v5, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    if-eqz v5, :cond_9

    .line 298
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    .line 302
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 290
    goto :goto_2

    .line 305
    :cond_8
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->A:Ljava/lang/String;

    .line 310
    :cond_9
    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/a;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v0

    .line 311
    iget-object v5, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    if-eqz v0, :cond_a

    if-nez v5, :cond_b

    :cond_a
    :goto_3
    if-eqz v1, :cond_4

    .line 312
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    goto :goto_1

    .line 311
    :cond_b
    const/4 v6, 0x4

    new-array v6, v6, [D

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/AmapLoc;->getLat()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/AmapLoc;->getLon()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/AmapLoc;->getLat()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/AmapLoc;->getLon()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/autonavi/aps/amapapi/Utils;->distance([D)F

    move-result v6

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_a

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/AmapLoc;->getAccuracy()F

    move-result v6

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/AmapLoc;->getAccuracy()F

    move-result v5

    sub-float v5, v6, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_a

    move v1, v2

    goto :goto_3

    .line 315
    :cond_c
    iget-wide v6, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/autonavi/aps/amapapi/a;->D:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x493e0

    cmp-long v0, v6, v8

    if-lez v0, :cond_d

    move v0, v1

    :goto_4
    if-eqz v0, :cond_f

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/a;->O:Z

    .line 321
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 323
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    if-eqz v1, :cond_e

    .line 327
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    .line 331
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 315
    goto :goto_4

    .line 334
    :cond_e
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->A:Ljava/lang/String;

    .line 335
    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/a;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    goto/16 :goto_1

    .line 337
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/a;->O:Z

    .line 338
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->e()Ljava/lang/String;

    .line 339
    iput-object v5, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public final declared-synchronized getOfflineLocation()Lcom/autonavi/aps/amapapi/AmapLoc;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 365
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/autonavi/aps/amapapi/a;->O:Z

    .line 366
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->e()Ljava/lang/String;

    .line 367
    iget v1, p0, Lcom/autonavi/aps/amapapi/a;->R:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/autonavi/aps/amapapi/a;->R:I

    .line 368
    iget v1, p0, Lcom/autonavi/aps/amapapi/a;->R:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 369
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 375
    :cond_2
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    .line 376
    invoke-static {}, Lcom/autonavi/aps/amapapi/b;->a()Lcom/autonavi/aps/amapapi/b;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/b;->a(Landroid/content/Context;)V

    .line 377
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    .line 382
    :cond_3
    iget-wide v1, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/a;->a(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    if-eqz v1, :cond_4

    .line 384
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    .line 385
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    goto :goto_0

    .line 388
    :cond_4
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 392
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->c()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/a;->C:J

    .line 400
    invoke-static {}, Lcom/autonavi/aps/amapapi/b;->a()Lcom/autonavi/aps/amapapi/b;

    move-result-object v2

    const-string v3, "db"

    invoke-virtual {v2, v1, v0, v3}, Lcom/autonavi/aps/amapapi/b;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;

    .line 401
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->B:Lcom/autonavi/aps/amapapi/AmapLoc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    const-string v0, "2.0.201307101516"

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 31
    .parameter

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    const-string v2, "in debug mode, only for test"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/Utils;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    new-instance v1, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->p:Landroid/location/Location;

    .line 133
    new-instance v1, Landroid/location/Location;

    const-string v2, "network"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->q:Landroid/location/Location;

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/Utils;->getServ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->h:Landroid/net/wifi/WifiManager;

    invoke-direct/range {p0 .. p0}, Lcom/autonavi/aps/amapapi/a;->j()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->y:Lcom/autonavi/aps/amapapi/a$a;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    const-string v1, "connectivity"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/autonavi/aps/amapapi/Utils;->getServ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->g:Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    const-string v2, "phone"

    invoke-static {v1, v2}, Lcom/autonavi/aps/amapapi/Utils;->getServ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/autonavi/aps/amapapi/a$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/autonavi/aps/amapapi/a$1;-><init>(Lcom/autonavi/aps/amapapi/a;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->w:Landroid/telephony/PhoneStateListener;

    const-string v2, "android.telephony.PhoneStateListener"

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getSdk()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_2

    const-string v3, "LISTEN_SIGNAL_STRENGTH"

    :try_start_0
    invoke-static {v2, v3}, Lcom/autonavi/aps/amapapi/Reflect;->getStaticIntProp(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/aps/amapapi/a;->w:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 136
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->U:Lcom/autonavi/aps/amapapi/g;

    if-nez v1, :cond_1

    new-instance v1, Lcom/autonavi/aps/amapapi/g;

    invoke-direct {v1}, Lcom/autonavi/aps/amapapi/g;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->U:Lcom/autonavi/aps/amapapi/g;

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v8, 0x3

    aget-object v7, v7, v8

    const/4 v8, 0x3

    const-wide/high16 v9, 0x3ff0

    aput-wide v9, v7, v8

    aput-wide v9, v5, v6

    aput-wide v9, v3, v4

    aput-wide v9, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/16 v16, 0x3

    aget-object v15, v15, v16

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget-object v17, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    const/16 v20, 0x2

    const-wide/16 v21, 0x0

    aput-wide v21, v19, v20

    aput-wide v21, v17, v18

    aput-wide v21, v15, v16

    aput-wide v21, v13, v14

    aput-wide v21, v11, v12

    aput-wide v21, v9, v10

    aput-wide v21, v7, v8

    aput-wide v21, v5, v6

    aput-wide v21, v3, v4

    aput-wide v21, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->V:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    const-wide/high16 v5, 0x4008

    aput-wide v5, v3, v4

    aput-wide v5, v1, v2

    const/4 v1, 0x4

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v8, 0x3

    aget-object v7, v7, v8

    const/4 v8, 0x3

    const-wide v9, 0x3eb0c6f7a0b5ed8dL

    aput-wide v9, v7, v8

    aput-wide v9, v5, v6

    aput-wide v9, v3, v4

    aput-wide v9, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    const/16 v16, 0x2

    aget-object v15, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->W:[[D

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x2

    const-wide/16 v25, 0x0

    aput-wide v25, v23, v24

    aput-wide v25, v21, v22

    aput-wide v25, v19, v20

    aput-wide v25, v17, v18

    aput-wide v25, v15, v16

    aput-wide v25, v13, v14

    aput-wide v25, v11, v12

    aput-wide v25, v9, v10

    aput-wide v25, v7, v8

    aput-wide v25, v5, v6

    aput-wide v25, v3, v4

    aput-wide v25, v1, v2

    const/4 v1, 0x4

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    const-wide/high16 v5, 0x3ff0

    aput-wide v5, v3, v4

    aput-wide v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    const/16 v16, 0x2

    aget-object v15, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v19, v19, v20

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-object v25, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->X:[[D

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget-object v27, v27, v28

    const/16 v28, 0x3

    const-wide/16 v29, 0x0

    aput-wide v29, v27, v28

    aput-wide v29, v25, v26

    aput-wide v29, v23, v24

    aput-wide v29, v21, v22

    aput-wide v29, v19, v20

    aput-wide v29, v17, v18

    aput-wide v29, v15, v16

    aput-wide v29, v13, v14

    aput-wide v29, v11, v12

    aput-wide v29, v9, v10

    aput-wide v29, v7, v8

    aput-wide v29, v5, v6

    aput-wide v29, v3, v4

    aput-wide v29, v1, v2

    const/4 v1, 0x4

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v8, 0x3

    aget-object v7, v7, v8

    const/4 v8, 0x3

    const-wide/high16 v9, 0x3ff0

    aput-wide v9, v7, v8

    aput-wide v9, v5, v6

    aput-wide v9, v3, v4

    aput-wide v9, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    const/16 v16, 0x2

    aget-object v15, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->Y:[[D

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x2

    const-wide/16 v25, 0x0

    aput-wide v25, v23, v24

    aput-wide v25, v21, v22

    aput-wide v25, v19, v20

    aput-wide v25, v17, v18

    aput-wide v25, v15, v16

    aput-wide v25, v13, v14

    aput-wide v25, v11, v12

    aput-wide v25, v9, v10

    aput-wide v25, v7, v8

    aput-wide v25, v5, v6

    aput-wide v25, v3, v4

    aput-wide v25, v1, v2

    const/4 v1, 0x4

    const/4 v2, 0x1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->a:[[D

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->a:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->a:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const-wide/high16 v5, 0x3ff0

    aput-wide v5, v3, v4

    aput-wide v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->a:[[D

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->a:[[D

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    aput-wide v5, v1, v2

    const/4 v1, 0x4

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    const-wide/high16 v5, 0x4000

    aput-wide v5, v3, v4

    aput-wide v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v14, 0x2

    aget-object v13, v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/16 v16, 0x2

    aget-object v15, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x2

    const-wide/16 v25, 0x0

    aput-wide v25, v23, v24

    aput-wide v25, v21, v22

    aput-wide v25, v19, v20

    aput-wide v25, v17, v18

    aput-wide v25, v15, v16

    aput-wide v25, v13, v14

    aput-wide v25, v11, v12

    aput-wide v25, v9, v10

    aput-wide v25, v7, v8

    aput-wide v25, v5, v6

    aput-wide v25, v3, v4

    aput-wide v25, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->b:[[D

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x3

    const-wide/high16 v5, 0x3ff0

    aput-wide v5, v3, v4

    aput-wide v5, v1, v2

    const/4 v1, 0x4

    const/4 v2, 0x1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/autonavi/aps/amapapi/a;->c:[[D

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/autonavi/aps/amapapi/a;->c:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->c:[[D

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/aps/amapapi/a;->c:[[D

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/aps/amapapi/a;->c:[[D

    const/4 v8, 0x3

    aget-object v7, v7, v8

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    aput-wide v9, v7, v8

    aput-wide v9, v5, v6

    aput-wide v9, v3, v4

    aput-wide v9, v1, v2

    goto/16 :goto_0

    .line 135
    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_2
    const-string v3, "LISTEN_SIGNAL_STRENGTHS"

    :try_start_1
    invoke-static {v2, v3}, Lcom/autonavi/aps/amapapi/Reflect;->getStaticIntProp(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/aps/amapapi/a;->i:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/autonavi/aps/amapapi/a;->w:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_2
.end method

.method public final setAuth(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 412
    if-eqz p1, :cond_0

    const-string v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    const-string v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 419
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 425
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/autonavi/aps/amapapi/Const;->d:Ljava/lang/String;

    .line 426
    const/4 v1, 0x1

    aget-object v1, v0, v1

    sput-object v1, Lcom/autonavi/aps/amapapi/Const;->e:Ljava/lang/String;

    .line 427
    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/autonavi/aps/amapapi/Const;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setGpsOffset(Z)V
    .locals 0
    .parameter

    .prologue
    .line 182
    sput-boolean p1, Lcom/autonavi/aps/amapapi/Const;->h:Z

    .line 183
    return-void
.end method

.method public final setUpload(Z)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 199
    :cond_0
    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/k;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/k;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final setUseCache(Z)V
    .locals 0
    .parameter

    .prologue
    .line 214
    .line 215
    sput-boolean p1, Lcom/autonavi/aps/amapapi/Const;->i:Z

    .line 224
    return-void
.end method

.method public final setUseGps(Z)V
    .locals 7
    .parameter

    .prologue
    .line 147
    sget-boolean v0, Lcom/autonavi/aps/amapapi/Const;->g:Z

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/a;->F:Z

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/a;->F:Z

    .line 151
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->e:Landroid/content/Context;

    const-string v1, "location"

    invoke-static {v0, v1}, Lcom/autonavi/aps/amapapi/Utils;->getServ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    .line 154
    :cond_2
    sput-boolean p1, Lcom/autonavi/aps/amapapi/Const;->g:Z

    .line 155
    if-eqz p1, :cond_5

    .line 156
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->hasGpsProvider(Landroid/location/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->f()V

    new-instance v0, Lcom/autonavi/aps/amapapi/a$3;

    invoke-direct {v0, p0}, Lcom/autonavi/aps/amapapi/a$3;-><init>(Lcom/autonavi/aps/amapapi/a;)V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->k:Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "force_xtra_injection"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x190

    const/high16 v4, 0x40a0

    iget-object v5, p0, Lcom/autonavi/aps/amapapi/a;->k:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->hasGpsProvider(Landroid/location/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->g()V

    new-instance v0, Lcom/autonavi/aps/amapapi/a$2;

    invoke-direct {v0, p0}, Lcom/autonavi/aps/amapapi/a$2;-><init>(Lcom/autonavi/aps/amapapi/a;)V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/a;->m:Landroid/location/GpsStatus$Listener;

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a;->j:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a;->m:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 168
    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/a;->F:Z

    goto :goto_0

    .line 162
    :cond_5
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->f()V

    .line 163
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/a;->g()V

    goto :goto_1
.end method
