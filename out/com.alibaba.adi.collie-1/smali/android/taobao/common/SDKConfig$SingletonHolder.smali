.class Landroid/taobao/common/SDKConfig$SingletonHolder;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/common/SDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Landroid/taobao/common/SDKConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Landroid/taobao/common/SDKConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/taobao/common/SDKConfig;-><init>(Landroid/taobao/common/SDKConfig$1;)V

    sput-object v0, Landroid/taobao/common/SDKConfig$SingletonHolder;->instance:Landroid/taobao/common/SDKConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/taobao/common/SDKConfig;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Landroid/taobao/common/SDKConfig$SingletonHolder;->instance:Landroid/taobao/common/SDKConfig;

    return-object v0
.end method
