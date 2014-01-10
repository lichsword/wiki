.class public final enum Lcom/ut/share/SharePlatform;
.super Ljava/lang/Enum;
.source "SharePlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ut/share/SharePlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ut/share/SharePlatform;

.field public static final enum BIAOGE:Lcom/ut/share/SharePlatform;

.field public static final enum Copy:Lcom/ut/share/SharePlatform;

.field public static final enum LaiwangActivity:Lcom/ut/share/SharePlatform;

.field public static final enum LaiwangChat:Lcom/ut/share/SharePlatform;

.field public static final enum LaiwangShare:Lcom/ut/share/SharePlatform;

.field public static final enum QZone:Lcom/ut/share/SharePlatform;

.field public static final enum SMS:Lcom/ut/share/SharePlatform;

.field public static final enum SinaWeibo:Lcom/ut/share/SharePlatform;

.field public static final enum TencentWeibo:Lcom/ut/share/SharePlatform;

.field public static final enum Wangxin:Lcom/ut/share/SharePlatform;

.field public static final enum Weixin:Lcom/ut/share/SharePlatform;

.field public static final enum WeixinPengyouquan:Lcom/ut/share/SharePlatform;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "LaiwangChat"

    const-string v2, "LaiwangChat"

    invoke-direct {v0, v1, v4, v2}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->LaiwangChat:Lcom/ut/share/SharePlatform;

    .line 14
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "LaiwangShare"

    const-string v2, "LaiwangShare"

    invoke-direct {v0, v1, v5, v2}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->LaiwangShare:Lcom/ut/share/SharePlatform;

    .line 15
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "LaiwangActivity"

    const-string v2, "LaiwangActivity"

    invoke-direct {v0, v1, v6, v2}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->LaiwangActivity:Lcom/ut/share/SharePlatform;

    .line 16
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "SinaWeibo"

    const-string v2, "SinaWeibo"

    invoke-direct {v0, v1, v7, v2}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->SinaWeibo:Lcom/ut/share/SharePlatform;

    .line 17
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "Weixin"

    const-string v2, "Weixin"

    invoke-direct {v0, v1, v8, v2}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->Weixin:Lcom/ut/share/SharePlatform;

    .line 18
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "WeixinPengyouquan"

    const/4 v2, 0x5

    const-string v3, "WeixinPengyouquan"

    invoke-direct {v0, v1, v2, v3}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->WeixinPengyouquan:Lcom/ut/share/SharePlatform;

    .line 19
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "Wangxin"

    const/4 v2, 0x6

    const-string v3, "Wangxin"

    invoke-direct {v0, v1, v2, v3}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->Wangxin:Lcom/ut/share/SharePlatform;

    .line 20
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "TencentWeibo"

    const/4 v2, 0x7

    const-string v3, "TencentWeibo"

    invoke-direct {v0, v1, v2, v3}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->TencentWeibo:Lcom/ut/share/SharePlatform;

    .line 21
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "QZone"

    const/16 v2, 0x8

    const-string v3, "QZone"

    invoke-direct {v0, v1, v2, v3}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->QZone:Lcom/ut/share/SharePlatform;

    .line 22
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "SMS"

    const/16 v2, 0x9

    const-string v3, "SMS"

    invoke-direct {v0, v1, v2, v3}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->SMS:Lcom/ut/share/SharePlatform;

    .line 23
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "Copy"

    const/16 v2, 0xa

    const-string v3, "Copy"

    invoke-direct {v0, v1, v2, v3}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->Copy:Lcom/ut/share/SharePlatform;

    .line 24
    new-instance v0, Lcom/ut/share/SharePlatform;

    const-string v1, "BIAOGE"

    const/16 v2, 0xb

    const-string v3, "biaoge"

    invoke-direct {v0, v1, v2, v3}, Lcom/ut/share/SharePlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ut/share/SharePlatform;->BIAOGE:Lcom/ut/share/SharePlatform;

    .line 12
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/ut/share/SharePlatform;

    sget-object v1, Lcom/ut/share/SharePlatform;->LaiwangChat:Lcom/ut/share/SharePlatform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ut/share/SharePlatform;->LaiwangShare:Lcom/ut/share/SharePlatform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ut/share/SharePlatform;->LaiwangActivity:Lcom/ut/share/SharePlatform;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ut/share/SharePlatform;->SinaWeibo:Lcom/ut/share/SharePlatform;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ut/share/SharePlatform;->Weixin:Lcom/ut/share/SharePlatform;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ut/share/SharePlatform;->WeixinPengyouquan:Lcom/ut/share/SharePlatform;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ut/share/SharePlatform;->Wangxin:Lcom/ut/share/SharePlatform;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ut/share/SharePlatform;->TencentWeibo:Lcom/ut/share/SharePlatform;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ut/share/SharePlatform;->QZone:Lcom/ut/share/SharePlatform;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ut/share/SharePlatform;->SMS:Lcom/ut/share/SharePlatform;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ut/share/SharePlatform;->Copy:Lcom/ut/share/SharePlatform;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ut/share/SharePlatform;->BIAOGE:Lcom/ut/share/SharePlatform;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ut/share/SharePlatform;->$VALUES:[Lcom/ut/share/SharePlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/ut/share/SharePlatform;->value:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/ut/share/SharePlatform;
    .locals 5
    .parameter "value"

    .prologue
    .line 41
    invoke-static {}, Lcom/ut/share/SharePlatform;->values()[Lcom/ut/share/SharePlatform;

    move-result-object v0

    .local v0, arr$:[Lcom/ut/share/SharePlatform;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 42
    .local v3, p:Lcom/ut/share/SharePlatform;
    iget-object v4, v3, Lcom/ut/share/SharePlatform;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    .end local v3           #p:Lcom/ut/share/SharePlatform;
    :goto_1
    return-object v3

    .line 41
    .restart local v3       #p:Lcom/ut/share/SharePlatform;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v3           #p:Lcom/ut/share/SharePlatform;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ut/share/SharePlatform;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lcom/ut/share/SharePlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ut/share/SharePlatform;

    return-object v0
.end method

.method public static values()[Lcom/ut/share/SharePlatform;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/ut/share/SharePlatform;->$VALUES:[Lcom/ut/share/SharePlatform;

    invoke-virtual {v0}, [Lcom/ut/share/SharePlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ut/share/SharePlatform;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ut/share/SharePlatform;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/ut/share/SharePlatform;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
