.class public final enum Lcom/taobao/business/BaseRemoteBusiness$RequestMode;
.super Ljava/lang/Enum;
.source "BaseRemoteBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/business/BaseRemoteBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/business/BaseRemoteBusiness$RequestMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

.field public static final enum PARALLEL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

.field public static final enum SERIAL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    const-string v1, "SERIAL"

    invoke-direct {v0, v1, v2}, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->SERIAL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    .line 19
    new-instance v0, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    const-string v1, "PARALLEL"

    invoke-direct {v0, v1, v3}, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->PARALLEL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    sget-object v1, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->SERIAL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->PARALLEL:Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->$VALUES:[Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/business/BaseRemoteBusiness$RequestMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    return-object v0
.end method

.method public static values()[Lcom/taobao/business/BaseRemoteBusiness$RequestMode;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->$VALUES:[Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    invoke-virtual {v0}, [Lcom/taobao/business/BaseRemoteBusiness$RequestMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/business/BaseRemoteBusiness$RequestMode;

    return-object v0
.end method
