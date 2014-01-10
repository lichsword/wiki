.class final enum Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;
.super Ljava/lang/Enum;
.source "AdiScheduledNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PENDING_INTENT_REQ"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHK_VER:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

.field public static final enum CLEAN_PIC_CACHE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

.field public static final enum CLEAN_PUSH_MSG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

.field public static final enum GET_JOKE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

.field public static final enum GET_NEWS:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

.field public static final enum SYNC:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    const-string v1, "SYNC"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->SYNC:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    const-string v1, "CHK_VER"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->CHK_VER:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    const-string v1, "CLEAN_PIC_CACHE"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->CLEAN_PIC_CACHE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    const-string v1, "GET_JOKE"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->GET_JOKE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    const-string v1, "GET_NEWS"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->GET_NEWS:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    const-string v1, "CLEAN_PUSH_MSG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->CLEAN_PUSH_MSG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->SYNC:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->CHK_VER:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->CLEAN_PIC_CACHE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->GET_JOKE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->GET_NEWS:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->CLEAN_PUSH_MSG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->ENUM$VALUES:[Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;->ENUM$VALUES:[Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$PENDING_INTENT_REQ;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
