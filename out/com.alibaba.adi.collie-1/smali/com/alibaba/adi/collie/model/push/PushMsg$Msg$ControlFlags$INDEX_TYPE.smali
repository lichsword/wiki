.class final enum Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;
.super Ljava/lang/Enum;
.source "PushMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "INDEX_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

.field public static final enum INDEX_ATTACH_IMAGE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

.field public static final enum INDEX_CANCEL_BTN:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

.field public static final enum INDEX_DIMISS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

.field public static final enum INDEX_LIMIT_SHOW_MAX_ONCE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

.field public static final enum INDEX_OPEN_URL:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

.field public static final enum INDEX_POS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

.field public static final enum INDEX_SHARE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

.field public static final enum INDEX_TEXT_EFFECTS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 451
    new-instance v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    const-string v1, "INDEX_POS"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_POS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    new-instance v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    const-string v1, "INDEX_OPEN_URL"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_OPEN_URL:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    new-instance v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    const-string v1, "INDEX_DIMISS"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_DIMISS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    new-instance v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    const-string v1, "INDEX_CANCEL_BTN"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_CANCEL_BTN:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    new-instance v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    const-string v1, "INDEX_TEXT_EFFECTS"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_TEXT_EFFECTS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    new-instance v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    const-string v1, "INDEX_SHARE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_SHARE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    new-instance v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    const-string v1, "INDEX_ATTACH_IMAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_ATTACH_IMAGE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    new-instance v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    const-string v1, "INDEX_LIMIT_SHOW_MAX_ONCE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_LIMIT_SHOW_MAX_ONCE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    .line 450
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_POS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_OPEN_URL:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_DIMISS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_CANCEL_BTN:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_TEXT_EFFECTS:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_SHARE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_ATTACH_IMAGE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->INDEX_LIMIT_SHOW_MAX_ONCE:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ENUM$VALUES:[Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 450
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;->ENUM$VALUES:[Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags$INDEX_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
