.class public Lcom/taobao/securityjni/soversion/SoVersion;
.super Ljava/lang/Object;
.source "SoVersion.java"


# static fields
.field public static final SOFile:Ljava/lang/String; = "libSSECeg-1.0.7.so"

.field public static final SOFileLib:Ljava/lang/String; = "lib"

.field public static final SOFileName:Ljava/lang/String; = "SSECeg-1.0.7"

.field public static final SOFileSuffix:Ljava/lang/String; = ".so"

.field public static final SOVersion:Ljava/lang/String; = "1.0.7"

.field public static final Sha256DigestFinal:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "7a03b0e38a0fd72164cc211b6ea5bbc6ade32b507acd97e4d933dc09b921e2bc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 17
    const-string v2, "aeb3560d8f5cc3af0f4fde2bd48b02178b303c6f8e77a786e6a3d01401902d4e"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 18
    const-string v2, "ee47ecff13a4303b2069de85aa2e93fd79f0342735ce0a82f2f9955ae22ac1a9"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 19
    const-string v2, "bdaa6e3d1402c433a1abb7e46dc972863578a37349ae02242dd71351fcf2a36e"

    aput-object v2, v0, v1

    .line 15
    sput-object v0, Lcom/taobao/securityjni/soversion/SoVersion;->Sha256DigestFinal:[Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
