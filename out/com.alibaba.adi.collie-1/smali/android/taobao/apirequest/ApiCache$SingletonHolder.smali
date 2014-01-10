.class Landroid/taobao/apirequest/ApiCache$SingletonHolder;
.super Ljava/lang/Object;
.source "ApiCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Landroid/taobao/apirequest/ApiCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/taobao/apirequest/ApiCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/taobao/apirequest/ApiCache;-><init>(Landroid/taobao/apirequest/ApiCache$1;)V

    sput-object v0, Landroid/taobao/apirequest/ApiCache$SingletonHolder;->instance:Landroid/taobao/apirequest/ApiCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/taobao/apirequest/ApiCache;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/taobao/apirequest/ApiCache$SingletonHolder;->instance:Landroid/taobao/apirequest/ApiCache;

    return-object v0
.end method
