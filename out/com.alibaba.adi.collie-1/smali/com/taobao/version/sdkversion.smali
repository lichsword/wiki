.class public Lcom/taobao/version/sdkversion;
.super Ljava/lang/Object;
.source "sdkversion.java"


# static fields
.field public static buildDate:Ljava/lang/String;

.field public static description:Ljava/lang/String;

.field public static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "1.4"

    sput-object v0, Lcom/taobao/version/sdkversion;->version:Ljava/lang/String;

    .line 10
    const-string v0, "2013-3"

    sput-object v0, Lcom/taobao/version/sdkversion;->buildDate:Ljava/lang/String;

    .line 11
    const-string v0, "\u8fd9\u662fTaobao android SDK\u5305\u3002\u5305\u62ec\uff1aapiconnector,imagepool,datalogic,filecache\u7b49\u6a21\u5757"

    sput-object v0, Lcom/taobao/version/sdkversion;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
