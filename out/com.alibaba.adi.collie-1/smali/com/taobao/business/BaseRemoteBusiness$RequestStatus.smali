.class public final enum Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;
.super Ljava/lang/Enum;
.source "BaseRemoteBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/business/BaseRemoteBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

.field public static final enum FINISHED:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

.field public static final enum REQUESTING:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    const-string v1, "REQUESTING"

    invoke-direct {v0, v1, v2}, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->REQUESTING:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    .line 24
    new-instance v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v3}, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->FINISHED:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    sget-object v1, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->REQUESTING:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->FINISHED:Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->$VALUES:[Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    return-object v0
.end method

.method public static values()[Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->$VALUES:[Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    invoke-virtual {v0}, [Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/business/BaseRemoteBusiness$RequestStatus;

    return-object v0
.end method
