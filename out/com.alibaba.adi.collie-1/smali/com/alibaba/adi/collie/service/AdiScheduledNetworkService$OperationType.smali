.class public final enum Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;
.super Ljava/lang/Enum;
.source "AdiScheduledNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

.field public static final enum OP_BIND:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

.field public static final enum OP_CHK_VERSION:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

.field public static final enum OP_CLEAN_PIC_CACHE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

.field public static final enum OP_CLEAN_PUSH_MSG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

.field public static final enum OP_GET:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

.field public static final enum OP_GET_JOKE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

.field public static final enum OP_GET_NEWS:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

.field public static final enum OP_REG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

.field public static final enum OP_SYNC:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

.field public static final enum OP_UNBIND:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    const-string v1, "OP_REG"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_REG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    const-string v1, "OP_BIND"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_BIND:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    const-string v1, "OP_UNBIND"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_UNBIND:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    const-string v1, "OP_SYNC"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_SYNC:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    const-string v1, "OP_GET"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    const-string v1, "OP_CHK_VERSION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_CHK_VERSION:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    const-string v1, "OP_GET_NEWS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET_NEWS:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    const-string v1, "OP_GET_JOKE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET_JOKE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    const-string v1, "OP_CLEAN_PIC_CACHE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_CLEAN_PIC_CACHE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    .line 70
    new-instance v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    const-string v1, "OP_CLEAN_PUSH_MSG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_CLEAN_PUSH_MSG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_REG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_BIND:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_UNBIND:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_SYNC:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_CHK_VERSION:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET_NEWS:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_GET_JOKE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_CLEAN_PIC_CACHE:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->OP_CLEAN_PUSH_MSG:Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->ENUM$VALUES:[Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;->ENUM$VALUES:[Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService$OperationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
