.class public final enum Lcom/taobao/statistic/APPSTATUS;
.super Ljava/lang/Enum;
.source "APPSTATUS.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/statistic/APPSTATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/statistic/APPSTATUS;

.field public static final enum CRASHED:Lcom/taobao/statistic/APPSTATUS;

.field public static final enum INIT_USERTRACK_SDK_FAIL:Lcom/taobao/statistic/APPSTATUS;

.field public static final enum IN_BACKGROUND:Lcom/taobao/statistic/APPSTATUS;

.field public static final enum RUNNING:Lcom/taobao/statistic/APPSTATUS;

.field public static final enum SCREEN_OFF:Lcom/taobao/statistic/APPSTATUS;

.field public static final enum STOPPED:Lcom/taobao/statistic/APPSTATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/taobao/statistic/APPSTATUS;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/taobao/statistic/APPSTATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/statistic/APPSTATUS;->STOPPED:Lcom/taobao/statistic/APPSTATUS;

    new-instance v0, Lcom/taobao/statistic/APPSTATUS;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/taobao/statistic/APPSTATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/statistic/APPSTATUS;->RUNNING:Lcom/taobao/statistic/APPSTATUS;

    new-instance v0, Lcom/taobao/statistic/APPSTATUS;

    const-string v1, "IN_BACKGROUND"

    invoke-direct {v0, v1, v5}, Lcom/taobao/statistic/APPSTATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/statistic/APPSTATUS;->IN_BACKGROUND:Lcom/taobao/statistic/APPSTATUS;

    new-instance v0, Lcom/taobao/statistic/APPSTATUS;

    const-string v1, "CRASHED"

    invoke-direct {v0, v1, v6}, Lcom/taobao/statistic/APPSTATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/statistic/APPSTATUS;->CRASHED:Lcom/taobao/statistic/APPSTATUS;

    new-instance v0, Lcom/taobao/statistic/APPSTATUS;

    const-string v1, "INIT_USERTRACK_SDK_FAIL"

    invoke-direct {v0, v1, v7}, Lcom/taobao/statistic/APPSTATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/statistic/APPSTATUS;->INIT_USERTRACK_SDK_FAIL:Lcom/taobao/statistic/APPSTATUS;

    new-instance v0, Lcom/taobao/statistic/APPSTATUS;

    const-string v1, "SCREEN_OFF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/statistic/APPSTATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/statistic/APPSTATUS;->SCREEN_OFF:Lcom/taobao/statistic/APPSTATUS;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/statistic/APPSTATUS;

    sget-object v1, Lcom/taobao/statistic/APPSTATUS;->STOPPED:Lcom/taobao/statistic/APPSTATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/statistic/APPSTATUS;->RUNNING:Lcom/taobao/statistic/APPSTATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/statistic/APPSTATUS;->IN_BACKGROUND:Lcom/taobao/statistic/APPSTATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/statistic/APPSTATUS;->CRASHED:Lcom/taobao/statistic/APPSTATUS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/statistic/APPSTATUS;->INIT_USERTRACK_SDK_FAIL:Lcom/taobao/statistic/APPSTATUS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/statistic/APPSTATUS;->SCREEN_OFF:Lcom/taobao/statistic/APPSTATUS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/statistic/APPSTATUS;->$VALUES:[Lcom/taobao/statistic/APPSTATUS;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/statistic/APPSTATUS;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/taobao/statistic/APPSTATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/statistic/APPSTATUS;

    return-object v0
.end method

.method public static values()[Lcom/taobao/statistic/APPSTATUS;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/taobao/statistic/APPSTATUS;->$VALUES:[Lcom/taobao/statistic/APPSTATUS;

    invoke-virtual {v0}, [Lcom/taobao/statistic/APPSTATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/statistic/APPSTATUS;

    return-object v0
.end method
