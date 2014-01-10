.class public final Lcom/autonavi/aps/amapapi/h;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static a:Ljava/text/DecimalFormat;

.field private static b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/autonavi/aps/amapapi/h;->a:Ljava/text/DecimalFormat;

    .line 33
    sput-object v0, Lcom/autonavi/aps/amapapi/h;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 325
    sget-object v0, Lcom/autonavi/aps/amapapi/h;->a:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/autonavi/aps/amapapi/h;->a:Ljava/text/DecimalFormat;

    .line 328
    :cond_0
    sget-object v0, Lcom/autonavi/aps/amapapi/h;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/autonavi/aps/amapapi/h;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    return-object v0
.end method
