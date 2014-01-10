.class public Landroid/taobao/apirequest/ErrorConstant;
.super Ljava/lang/Object;
.source "ErrorConstant.java"


# static fields
.field public static final API_RESULT_BAD_PARAM:I = -0x2

.field public static final API_RESULT_DNS_ERROR:I = -0x3

.field public static final API_RESULT_FAILED:I = -0x2712

.field public static final API_RESULT_NETWORK_ERROR:I = -0x4

.field public static final API_RESULT_REDIRECT_MANY:I = -0x5

.field public static final API_RESULT_SDCARD_WRITE_ERROR:I = -0x7

.field public static final API_RESULT_TOO_LARGE_RESPOSE:I = -0x6

.field public static final API_RESULT_UNKNOWN:I = -0x3e8

.field public static final API_RESULT_USER_CANCEL:I = -0x1

.field public static final CODE_ERR_OTHER:Ljava/lang/String; = "FAIL"

.field public static final CODE_ERR_PARAM:Ljava/lang/String; = "PARAM_ERR"

.field public static final CODE_ERR_SID_INVALID:Ljava/lang/String; = "ERR_SID_INVALID"

.field public static final CODE_ERR_SYSTEM:Ljava/lang/String; = "SYSTEM_ERROR"

.field public static final CODE_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final ERRCODE_APP_ACCESS_API_FAIL:I = -0x7d2

.field public static final ERRCODE_AUTH_REJECT:I = -0x7d3

.field public static final ERRCODE_PROTOCOL_PARAM_LOST_FAILSE:I = -0x7d1

.field public static final ERR_HAS_HANDLER:I = -0x7d5

.field public static final ERR_HTTPS_CERT_EXPIRED:I = -0x7d7

.field public static final ERR_HTTPS_CERT_INVALID:I = -0x7d6

.field public static final ERR_SID_INVALID:I = -0x7d4

.field public static final STSTEM_ERROR:I = -0x7d0

.field static errCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/taobao/apirequest/ErrorConstant;->errCodeMap:Ljava/util/HashMap;

    .line 45
    sget-object v0, Landroid/taobao/apirequest/ErrorConstant;->errCodeMap:Ljava/util/HashMap;

    const-string v1, "ERRCODE_PROTOCOL_PARAM_LOST_FAILSE"

    const/16 v2, -0x7d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Landroid/taobao/apirequest/ErrorConstant;->errCodeMap:Ljava/util/HashMap;

    const-string v1, "ERRCODE_APP_ACCESS_API_FAIL"

    const/16 v2, -0x7d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Landroid/taobao/apirequest/ErrorConstant;->errCodeMap:Ljava/util/HashMap;

    const-string v1, "ERRCODE_AUTH_REJECT"

    const/16 v2, -0x7d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Landroid/taobao/apirequest/ErrorConstant;->errCodeMap:Ljava/util/HashMap;

    const-string v1, "ERR_SID_INVALID"

    const/16 v2, -0x7d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrCodeByErrMsg(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "key"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, errcode:Ljava/lang/Integer;
    sget-object v1, Landroid/taobao/apirequest/ErrorConstant;->errCodeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #errcode:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 62
    .restart local v0       #errcode:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 63
    const/16 v1, -0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 65
    :cond_0
    return-object v0
.end method
