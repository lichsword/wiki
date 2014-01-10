.class final enum Landroid/taobao/apirequest/ApiConnector$ConnState;
.super Ljava/lang/Enum;
.source "ApiConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/taobao/apirequest/ApiConnector$ConnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum CONNECTED:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum CONNECTING:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum DATA_CANCEL:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum DATA_RECEVING:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum DNS:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum FINISED:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum FIRSTDATA_RECEIVED:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum FIRSTDATA_RECEIVING:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum RESPONED:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum RESPONING:Landroid/taobao/apirequest/ApiConnector$ConnState;

.field public static final enum START:Landroid/taobao/apirequest/ApiConnector$ConnState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->START:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 97
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "DNS"

    invoke-direct {v0, v1, v4}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->DNS:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 98
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->CONNECTING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 99
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v6}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->CONNECTED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 100
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "RESPONING"

    invoke-direct {v0, v1, v7}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->RESPONING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 101
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "RESPONED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->RESPONED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 102
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "FIRSTDATA_RECEIVING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->FIRSTDATA_RECEIVING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 103
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "FIRSTDATA_RECEIVED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->FIRSTDATA_RECEIVED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 104
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "DATA_RECEVING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->DATA_RECEVING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 105
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "DATA_CANCEL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->DATA_CANCEL:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 106
    new-instance v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    const-string v1, "FINISED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/taobao/apirequest/ApiConnector$ConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->FINISED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    .line 95
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/taobao/apirequest/ApiConnector$ConnState;

    sget-object v1, Landroid/taobao/apirequest/ApiConnector$ConnState;->START:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/apirequest/ApiConnector$ConnState;->DNS:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/apirequest/ApiConnector$ConnState;->CONNECTING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/apirequest/ApiConnector$ConnState;->CONNECTED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/taobao/apirequest/ApiConnector$ConnState;->RESPONING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/taobao/apirequest/ApiConnector$ConnState;->RESPONED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/taobao/apirequest/ApiConnector$ConnState;->FIRSTDATA_RECEIVING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/taobao/apirequest/ApiConnector$ConnState;->FIRSTDATA_RECEIVED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/taobao/apirequest/ApiConnector$ConnState;->DATA_RECEVING:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/taobao/apirequest/ApiConnector$ConnState;->DATA_CANCEL:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/taobao/apirequest/ApiConnector$ConnState;->FINISED:Landroid/taobao/apirequest/ApiConnector$ConnState;

    aput-object v2, v0, v1

    sput-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->$VALUES:[Landroid/taobao/apirequest/ApiConnector$ConnState;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/apirequest/ApiConnector$ConnState;
    .locals 1
    .parameter "name"

    .prologue
    .line 95
    const-class v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/taobao/apirequest/ApiConnector$ConnState;

    return-object v0
.end method

.method public static values()[Landroid/taobao/apirequest/ApiConnector$ConnState;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/taobao/apirequest/ApiConnector$ConnState;->$VALUES:[Landroid/taobao/apirequest/ApiConnector$ConnState;

    invoke-virtual {v0}, [Landroid/taobao/apirequest/ApiConnector$ConnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/apirequest/ApiConnector$ConnState;

    return-object v0
.end method
