.class public Lcom/ut/share/data/b;
.super Ljava/lang/Object;
.source "ShareParamKey.java"


# instance fields
.field private ps:Lcom/ut/share/SharePlatform;

.field private pt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ut/share/SharePlatform;Ljava/lang/String;)V
    .locals 0
    .parameter "platform"
    .parameter "key"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ut/share/data/b;->ps:Lcom/ut/share/SharePlatform;

    .line 18
    iput-object p2, p0, Lcom/ut/share/data/b;->pt:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 57
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/ut/share/data/b;

    .line 59
    .local v0, other:Lcom/ut/share/data/b;
    iget-object v3, p0, Lcom/ut/share/data/b;->pt:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 60
    iget-object v3, v0, Lcom/ut/share/data/b;->pt:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget-object v3, p0, Lcom/ut/share/data/b;->pt:Ljava/lang/String;

    iget-object v4, v0, Lcom/ut/share/data/b;->pt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_5
    iget-object v3, p0, Lcom/ut/share/data/b;->ps:Lcom/ut/share/SharePlatform;

    iget-object v4, v0, Lcom/ut/share/data/b;->ps:Lcom/ut/share/SharePlatform;

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 65
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 43
    const/16 v0, 0x1f

    .line 44
    .local v0, prime:I
    const/4 v1, 0x1

    .line 45
    .local v1, result:I
    iget-object v2, p0, Lcom/ut/share/data/b;->pt:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 46
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/ut/share/data/b;->ps:Lcom/ut/share/SharePlatform;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 47
    return v1

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/ut/share/data/b;->pt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/ut/share/data/b;->ps:Lcom/ut/share/SharePlatform;

    invoke-virtual {v3}, Lcom/ut/share/SharePlatform;->hashCode()I

    move-result v3

    goto :goto_1
.end method
