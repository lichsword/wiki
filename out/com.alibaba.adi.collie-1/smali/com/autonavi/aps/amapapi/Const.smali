.class public Lcom/autonavi/aps/amapapi/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static final bDebug:Z

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 43
    sput-object v0, Lcom/autonavi/aps/amapapi/Const;->a:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/autonavi/aps/amapapi/Const;->b:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/autonavi/aps/amapapi/Const;->c:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/autonavi/aps/amapapi/Const;->d:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/autonavi/aps/amapapi/Const;->e:Ljava/lang/String;

    .line 63
    const-string v0, ""

    sput-object v0, Lcom/autonavi/aps/amapapi/Const;->f:Ljava/lang/String;

    .line 87
    sput-boolean v3, Lcom/autonavi/aps/amapapi/Const;->g:Z

    .line 111
    sput-boolean v2, Lcom/autonavi/aps/amapapi/Const;->h:Z

    .line 167
    sput-boolean v2, Lcom/autonavi/aps/amapapi/Const;->i:Z

    .line 223
    sput-boolean v2, Lcom/autonavi/aps/amapapi/Const;->j:Z

    .line 304
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 306
    sput-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 307
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const-string v1, "GPRS"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "EDGE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 309
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "UMTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 311
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "EVDO_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 312
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "EVDO_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 313
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "1xRTT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "HSDPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 315
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "HSUPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "HSPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 317
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "IDEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 318
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "EVDO_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 319
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "LTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 320
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "EHRPD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 321
    sget-object v0, Lcom/autonavi/aps/amapapi/Const;->k:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "HSPAP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 322
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method
