.class Lcom/taobao/tao/imagepool/ImagePool$SingletonHolder;
.super Ljava/lang/Object;
.source "ImagePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/imagepool/ImagePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lcom/taobao/tao/imagepool/ImagePool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1543
    new-instance v0, Lcom/taobao/tao/imagepool/ImagePool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/tao/imagepool/ImagePool;-><init>(Lcom/taobao/tao/imagepool/ImagePool$1;)V

    sput-object v0, Lcom/taobao/tao/imagepool/ImagePool$SingletonHolder;->instance:Lcom/taobao/tao/imagepool/ImagePool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1900()Lcom/taobao/tao/imagepool/ImagePool;
    .locals 1

    .prologue
    .line 1542
    sget-object v0, Lcom/taobao/tao/imagepool/ImagePool$SingletonHolder;->instance:Lcom/taobao/tao/imagepool/ImagePool;

    return-object v0
.end method
