.class public Landroid/taobao/common/SDKConstants;
.super Ljava/lang/Object;
.source "SDKConstants.java"


# static fields
.field public static CODE_APIOVERFLOW_EXCEPTION:I = 0x0

.field public static CODE_DNSPRE_EXCEPTION:I = 0x0

.field public static CODE_DNSTHREAD_TIMEOUT:I = 0x0

.field public static CODE_EOF_EXCEPTION:I = 0x0

.field public static CODE_FILENOTFOUND_EXCEPTION:I = 0x0

.field public static CODE_OTHER_EXCEPTION:I = 0x0

.field public static CODE_REDIERECT_EXCEPTION:I = 0x0

.field public static CODE_SOCKETTIMEOUT_EXCEPTION:I = 0x0

.field public static CODE_SSLHANDSHAKE_EXCEPTION:I = 0x0

.field public static ID_PAGE_API_STAT:I = 0x0

.field public static ID_PAGE_API_TIME_STAT:I = 0x0

.field public static ID_PAGE_APROXY_ERROR:I = 0x0

.field public static ID_PAGE_HTTPS_CERT_ERR:I = 0x0

.field public static ID_PAGE_IMG_STAT:I = 0x0

.field public static ID_PAGE_JSON_EXCEPTION:I = 0x0

.field public static ID_PAGE_NATIVE_WEBVIEW:I = 0x0

.field public static ID_PAGE_NW_SSLERROR:I = 0x0

.field public static ID_PAGE_SIGN_STAT:I = 0x0

.field public static ID_PAGE_SINGLE_API_STAT:I = 0x0

.field public static ID_SDK_MAX:I = 0x0

.field public static ID_SDK_MIN:I = 0x0

.field public static final KEY_API:Ljava/lang/String; = "api"

.field public static final KEY_APPKEY:Ljava/lang/String; = "appKey"

.field public static final KEY_APPSECRET:Ljava/lang/String; = "appSecret"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_DEVICEID:Ljava/lang/String; = "deviceId"

.field public static final KEY_ECODE:Ljava/lang/String; = "ecode"

.field public static final KEY_IMEI:Ljava/lang/String; = "imei"

.field public static final KEY_IMSI:Ljava/lang/String; = "imsi"

.field public static final KEY_SID:Ljava/lang/String; = "sid"

.field public static final KEY_SIGN:Ljava/lang/String; = "sign"

.field public static final KEY_TIME:Ljava/lang/String; = "t"

.field public static final KEY_TTID:Ljava/lang/String; = "ttid"

.field public static final KEY_VERSION:Ljava/lang/String; = "v"

.field public static final PIC_SEPARATOR:Ljava/lang/String; = "|"

.field public static final STR_TAOBAO:Ljava/lang/String; = "taobao"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x5209

    sput v0, Landroid/taobao/common/SDKConstants;->ID_SDK_MIN:I

    .line 37
    const/16 v0, 0x682a

    sput v0, Landroid/taobao/common/SDKConstants;->ID_PAGE_HTTPS_CERT_ERR:I

    .line 38
    const/16 v0, 0x682b

    sput v0, Landroid/taobao/common/SDKConstants;->ID_PAGE_NW_SSLERROR:I

    .line 39
    const/16 v0, 0x6840

    sput v0, Landroid/taobao/common/SDKConstants;->ID_PAGE_IMG_STAT:I

    .line 40
    const/16 v0, 0x6841

    sput v0, Landroid/taobao/common/SDKConstants;->ID_PAGE_API_STAT:I

    .line 41
    const/16 v0, 0x6842

    sput v0, Landroid/taobao/common/SDKConstants;->ID_PAGE_SINGLE_API_STAT:I

    .line 42
    const/16 v0, 0x6979

    sput v0, Landroid/taobao/common/SDKConstants;->ID_PAGE_API_TIME_STAT:I

    .line 43
    const/16 v0, 0x697a

    sput v0, Landroid/taobao/common/SDKConstants;->ID_PAGE_SIGN_STAT:I

    .line 44
    const/16 v0, 0x697b

    sput v0, Landroid/taobao/common/SDKConstants;->ID_PAGE_NATIVE_WEBVIEW:I

    .line 45
    const/16 v0, 0x697c

    sput v0, Landroid/taobao/common/SDKConstants;->ID_PAGE_APROXY_ERROR:I

    .line 47
    const/16 v0, 0x697d

    sput v0, Landroid/taobao/common/SDKConstants;->ID_PAGE_JSON_EXCEPTION:I

    .line 49
    const/16 v0, 0x7530

    sput v0, Landroid/taobao/common/SDKConstants;->ID_SDK_MAX:I

    .line 53
    const/4 v0, 0x1

    sput v0, Landroid/taobao/common/SDKConstants;->CODE_REDIERECT_EXCEPTION:I

    .line 54
    const/4 v0, 0x2

    sput v0, Landroid/taobao/common/SDKConstants;->CODE_APIOVERFLOW_EXCEPTION:I

    .line 55
    const/4 v0, 0x3

    sput v0, Landroid/taobao/common/SDKConstants;->CODE_SOCKETTIMEOUT_EXCEPTION:I

    .line 56
    const/4 v0, 0x4

    sput v0, Landroid/taobao/common/SDKConstants;->CODE_FILENOTFOUND_EXCEPTION:I

    .line 57
    const/4 v0, 0x5

    sput v0, Landroid/taobao/common/SDKConstants;->CODE_SSLHANDSHAKE_EXCEPTION:I

    .line 58
    const/4 v0, 0x6

    sput v0, Landroid/taobao/common/SDKConstants;->CODE_EOF_EXCEPTION:I

    .line 59
    const/4 v0, 0x7

    sput v0, Landroid/taobao/common/SDKConstants;->CODE_OTHER_EXCEPTION:I

    .line 60
    const/16 v0, 0xa

    sput v0, Landroid/taobao/common/SDKConstants;->CODE_DNSTHREAD_TIMEOUT:I

    .line 61
    const/16 v0, 0xb

    sput v0, Landroid/taobao/common/SDKConstants;->CODE_DNSPRE_EXCEPTION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
