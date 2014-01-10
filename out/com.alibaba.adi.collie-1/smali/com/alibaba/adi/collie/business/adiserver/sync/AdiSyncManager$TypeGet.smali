.class public final enum Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
.super Ljava/lang/Enum;
.source "AdiSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeGet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

.field public static final enum IMAGE_FUNNY:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

.field public static final enum JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

.field public static final enum NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

.field public static final enum TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

.field public static final enum WEATHER:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

.field public static final enum YUEBAO:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    const-string v1, "NEWS"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    const-string v1, "WEATHER"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->WEATHER:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    const-string v1, "TB_TRACKING"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    const-string v1, "IMAGE_FUNNY"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->IMAGE_FUNNY:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    const-string v1, "JOKE"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    const-string v1, "YUEBAO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->YUEBAO:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->WEATHER:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->IMAGE_FUNNY:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->YUEBAO:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->ENUM$VALUES:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->ENUM$VALUES:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
