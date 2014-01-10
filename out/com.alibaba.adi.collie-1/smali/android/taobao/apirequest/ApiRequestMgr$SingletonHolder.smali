.class Landroid/taobao/apirequest/ApiRequestMgr$SingletonHolder;
.super Ljava/lang/Object;
.source "ApiRequestMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiRequestMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Landroid/taobao/apirequest/ApiRequestMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/taobao/apirequest/ApiRequestMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/taobao/apirequest/ApiRequestMgr;-><init>(Landroid/taobao/apirequest/ApiRequestMgr$1;)V

    sput-object v0, Landroid/taobao/apirequest/ApiRequestMgr$SingletonHolder;->instance:Landroid/taobao/apirequest/ApiRequestMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/taobao/apirequest/ApiRequestMgr;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/taobao/apirequest/ApiRequestMgr$SingletonHolder;->instance:Landroid/taobao/apirequest/ApiRequestMgr;

    return-object v0
.end method
