.class public Lcom/ut/share/data/c;
.super Ljava/lang/Object;
.source "ShareTMSConfig.java"


# static fields
.field public static pu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mDisablePlatforms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ut/share/SharePlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ut/share/data/c;->pu:Ljava/util/Set;

    .line 17
    sget-object v0, Lcom/ut/share/data/c;->pu:Ljava/util/Set;

    const-string v1, "com.sina.weibo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/ut/share/data/c;->pu:Ljava/util/Set;

    const-string v1, "com.sina.weibog3"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/Set;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Set",
            "<",
            "Lcom/ut/share/SharePlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, disablePlatforms:Ljava/util/Set;,"Ljava/util/Set<Lcom/ut/share/SharePlatform;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ut/share/data/c;->mDisablePlatforms:Ljava/util/Set;

    .line 22
    iput-object p1, p0, Lcom/ut/share/data/c;->mContext:Landroid/app/Activity;

    .line 23
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/ut/share/data/c;->mDisablePlatforms:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/ut/share/SharePlatform;)Z
    .locals 6
    .parameter "platform"

    .prologue
    const/4 v4, 0x0

    .line 29
    iget-object v5, p0, Lcom/ut/share/data/c;->mDisablePlatforms:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v4

    .line 32
    :cond_1
    invoke-static {}, Lcom/ut/share/SharePlatform;->values()[Lcom/ut/share/SharePlatform;

    move-result-object v0

    .local v0, arr$:[Lcom/ut/share/SharePlatform;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 33
    .local v3, p:Lcom/ut/share/SharePlatform;
    if-ne v3, p1, :cond_2

    .line 34
    const/4 v4, 0x1

    goto :goto_0

    .line 32
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
