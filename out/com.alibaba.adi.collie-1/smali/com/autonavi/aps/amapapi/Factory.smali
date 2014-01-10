.class public Lcom/autonavi/aps/amapapi/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# static fields
.field private static iaps:Lcom/autonavi/aps/amapapi/IAPS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/amapapi/Factory;->iaps:Lcom/autonavi/aps/amapapi/IAPS;

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

.method public static getInstance()Lcom/autonavi/aps/amapapi/IAPS;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/autonavi/aps/amapapi/a;->a()Lcom/autonavi/aps/amapapi/IAPS;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/autonavi/aps/amapapi/Factory;->iaps:Lcom/autonavi/aps/amapapi/IAPS;

    return-object v0
.end method
