.class public Lcom/sina/weibo/sdk/constant/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/constant/Constants$Base;,
        Lcom/sina/weibo/sdk/constant/Constants$ErrorCode;,
        Lcom/sina/weibo/sdk/constant/Constants$Media;,
        Lcom/sina/weibo/sdk/constant/Constants$Msg;,
        Lcom/sina/weibo/sdk/constant/Constants$Response;,
        Lcom/sina/weibo/sdk/constant/Constants$SDK;
    }
.end annotation


# static fields
.field public static final ACTION_WEIBO_REGISTER:Ljava/lang/String; = "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

.field public static final ACTION_WEIBO_RESPONSE:Ljava/lang/String; = "com.sina.weibo.sdk.Intent.ACTION_WEIBO_RESPONSE"

.field public static final ACTIVITY_REQ_SDK:Ljava/lang/String; = "com.sina.weibo.sdk.action.ACTION_SDK_REQ_ACTIVITY"

.field public static final ACTIVITY_RESP_SDK:Ljava/lang/String; = "com.sina.weibo.sdk.action.ACTION_SDK_RESP_ACTIVITY"

.field public static final ACTIVITY_WEIBO:Ljava/lang/String; = "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

.field public static final COMMAND_FROM_WEIBO:I = 0x2

.field public static final COMMAND_TO_WEIBO:I = 0x1

.field public static final COMMAND_TYPE_KEY:Ljava/lang/String; = "_weibo_command_type"

.field public static final SDK_ACTIVITY_FOR_RESULT_CODE:I = 0x2fd

.field public static final SIGN:Ljava/lang/String; = "_weibo_sign"

.field public static final TRAN:Ljava/lang/String; = "_weibo_transaction"

.field public static final WEIBO_DOWNLOAD_URL:Ljava/lang/String; = "http://app.sina.cn/appdetail.php?appID=84560"

.field public static final WEIBO_FLAG_SDK:I = 0x20130329

.field public static final WEIBO_SDK_VERSION:I = 0x16

.field public static final WEIBO_SDK_VERSION_NAME:Ljava/lang/String; = "2.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
