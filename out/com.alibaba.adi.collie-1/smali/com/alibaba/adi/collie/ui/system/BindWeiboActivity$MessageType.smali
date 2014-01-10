.class final enum Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;
.super Ljava/lang/Enum;
.source "BindWeiboActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

.field public static final enum FAIL:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

.field public static final enum SUCCESS:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->SUCCESS:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    new-instance v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->FAIL:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->SUCCESS:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->FAIL:Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;->ENUM$VALUES:[Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/ui/system/BindWeiboActivity$MessageType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
