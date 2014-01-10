.class public final enum Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;
.super Ljava/lang/Enum;
.source "AdiSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppGet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

.field public static final enum FUNNY_JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

.field public static final enum NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

.field public static final enum TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    const-string v1, "NEWS"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    const-string v1, "FUNNY_JOKE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->FUNNY_JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    new-instance v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    const-string v1, "TB_TRACKING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->NEWS:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->FUNNY_JOKE:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->TB_TRACKING:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->ENUM$VALUES:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;->ENUM$VALUES:[Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$AppGet;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
