.class public Lcom/amap/api/location/core/d;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:Lcom/amap/api/location/core/GeoPoint$a;

.field public static h:I

.field public static i:I

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Z

.field public static m:Z

.field public static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    const/16 v0, 0x12

    sput v0, Lcom/amap/api/location/core/d;->a:I

    .line 33
    sput v3, Lcom/amap/api/location/core/d;->b:I

    .line 34
    const/16 v0, 0x14

    sput v0, Lcom/amap/api/location/core/d;->c:I

    .line 35
    sput v3, Lcom/amap/api/location/core/d;->d:I

    .line 45
    sput v1, Lcom/amap/api/location/core/d;->e:I

    .line 77
    sput v1, Lcom/amap/api/location/core/d;->f:I

    .line 82
    sget-object v0, Lcom/amap/api/location/core/GeoPoint$a;->a:Lcom/amap/api/location/core/GeoPoint$a;

    sput-object v0, Lcom/amap/api/location/core/d;->g:Lcom/amap/api/location/core/GeoPoint$a;

    .line 84
    sput v1, Lcom/amap/api/location/core/d;->h:I

    .line 85
    sput v1, Lcom/amap/api/location/core/d;->i:I

    .line 109
    const-string v0, "V1.0.3"

    sput-object v0, Lcom/amap/api/location/core/d;->j:Ljava/lang/String;

    .line 111
    const-string v0, "V1.0.3"

    sput-object v0, Lcom/amap/api/location/core/d;->k:Ljava/lang/String;

    .line 130
    sput-boolean v2, Lcom/amap/api/location/core/d;->l:Z

    .line 135
    sput-boolean v2, Lcom/amap/api/location/core/d;->m:Z

    .line 140
    sput-boolean v1, Lcom/amap/api/location/core/d;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
