.class Landroid/taobao/apirequest/SecurityManager$SingletonHolder;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/SecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Landroid/taobao/apirequest/SecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/taobao/apirequest/SecurityManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/taobao/apirequest/SecurityManager;-><init>(Landroid/taobao/apirequest/SecurityManager$1;)V

    sput-object v0, Landroid/taobao/apirequest/SecurityManager$SingletonHolder;->instance:Landroid/taobao/apirequest/SecurityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/taobao/apirequest/SecurityManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/taobao/apirequest/SecurityManager$SingletonHolder;->instance:Landroid/taobao/apirequest/SecurityManager;

    return-object v0
.end method
