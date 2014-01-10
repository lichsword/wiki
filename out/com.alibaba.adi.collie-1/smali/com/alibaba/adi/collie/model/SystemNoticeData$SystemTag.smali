.class public final enum Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;
.super Ljava/lang/Enum;
.source "SystemNoticeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/model/SystemNoticeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALL_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum CALL_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field private static final synthetic ENUM$VALUES:[Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum SMS_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum SMS_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum SYSTEM_DIVIDER:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum WEIBO_AT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum WEIBO_AT_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum WEIBO_COMMENT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum WEIBO_COMMENT_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum WEIBO_DIVIDER:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum WEIBO_PRIVATE_MSG_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum WEIBO_PRIVATE_MSG_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum WEIBO_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

.field public static final enum WEIBO_UNBIND:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "SMS_SUMMARY"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SMS_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "SMS_ITEM"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SMS_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "CALL_SUMMARY"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->CALL_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "CALL_ITEM"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->CALL_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    .line 36
    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "WEIBO_SUMMARY"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "WEIBO_AT_SUMMARY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_AT_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "WEIBO_COMMENT_SUMMARY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_COMMENT_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    .line 37
    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "WEIBO_PRIVATE_MSG_SUMMARY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_PRIVATE_MSG_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "WEIBO_UNBIND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_UNBIND:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    .line 38
    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "WEIBO_AT_ITEM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_AT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    .line 39
    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "WEIBO_COMMENT_ITEM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_COMMENT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "WEIBO_PRIVATE_MSG_ITEM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_PRIVATE_MSG_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    .line 40
    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "SYSTEM_DIVIDER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SYSTEM_DIVIDER:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    new-instance v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    const-string v1, "WEIBO_DIVIDER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_DIVIDER:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    .line 34
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SMS_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SMS_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->CALL_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->CALL_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_AT_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_COMMENT_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_PRIVATE_MSG_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_UNBIND:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_AT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_COMMENT_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_PRIVATE_MSG_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SYSTEM_DIVIDER:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->WEIBO_DIVIDER:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ENUM$VALUES:[Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->ENUM$VALUES:[Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    array-length v1, v0

    new-array v2, v1, [Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
